# Luney translations (`lib/l10n/`)

Thanks for helping translate Luney. This folder holds every UI string in
the app. You do **not** need to know Flutter or Dart to translate, you
only edit one text file. Read this whole page first, it is short.

---

## TL;DR

1. Copy `app_en.arb` to `app_<code>.arb` (e.g. `app_es.arb` for Spanish,
   `app_fr.arb` for French, `app_pt_BR.arb` for Brazilian Portuguese).
2. Translate **only the values** (the text on the right of each `:`).
   **Never change a key** (the text on the left) and never add, remove,
   reorder, or rename keys.
3. Open a Pull Request with your new `app_<code>.arb`. That is it. A
   maintainer runs the code generator and ships it.

The rest of this page explains the rules so your translation actually
works in the app.

---

## Recognition

Translating Luney is real work and we want it to be worth your time.
Recognition is tied to a **merged and reviewed** contribution (a
maintainer, ideally a native speaker, checks quality first, this keeps
machine-translation dumps out). Two tiers:

**Contributor** - you translated a meaningful set of strings, or fixed
real errors in an existing language:

- An exclusive **Translator decoration** on your Luney profile, a
  cosmetic flair that is never sold in the shop (contributors only).
- Your name in the project's contributor credits.

**Language author** - you were the first to bring a language to **full
coverage** (every key in `app_en.arb` translated, reviewed, and
merged):

- The Translator decoration, plus
- **6 months of Luney VIP**, plus
- **Named credit in the app**: the in-app Language picker shows your
  handle next to the language you authored, e.g.
  `Español - by @yourhandle`.

So expectations are clear:

- Rewards are granted **manually after review and merge**; there is no
  instant automated unlock.
- The VIP grant and contributor credits are available now. The
  **Translator decoration is an IOU**: the cosmetic shop it lives in is
  still being built, so it is awarded **retroactively** to everyone who
  qualified as soon as that ships. Your eligibility is locked in the
  moment your PR merges, you do not lose it by being early.
- "Full coverage" means 100% of the keys present in `app_en.arb` at
  merge time. The app keeps adding strings, so keeping your language
  current over time is what keeps you the credited author.
- One author credit per language (whoever first reaches full, reviewed
  coverage). Later contributors to that language are recognized at the
  Contributor tier.
- All recognition is digital. No cash or merch.

---

## What every file here is

| File | What it is | Do you touch it? |
|---|---|---|
| `app_en.arb` | The **source of truth**. Every key + the English text + metadata. | Only maintainers add new keys here. Translators **copy** it, never edit it. |
| `app_<code>.arb` | A translation (one per language). Same keys as `app_en.arb`, translated values. | **Yes, this is the file you create / edit.** |
| `app_localizations.dart`, `app_localizations_<code>.dart` | **Auto-generated code.** Built from the `.arb` files by `flutter gen-l10n`. | **Never.** Hand edits are overwritten. |
| `README.md` | This file. | No. |

---

## How an `.arb` file looks

It is JSON. Two kinds of lines matter:

```jsonc
"reportSheetTitle": "Report this post",          // a string: translate the value
"@reportSheetTitle": { "description": "..." },    // metadata: DO NOT translate
```

- A line whose key does **not** start with `@` is a real UI string.
  Translate the text in quotes on the right.
- A line whose key starts with `@` is **metadata** (a `description` for
  context, or `placeholders`). **Leave the entire `@...` block exactly
  as-is.** The `description` is a hint for you, the translator, it is
  never shown to users, so do not translate it.
- The first line, `"@@locale": "en"`, must be changed to your language
  code in your file, e.g. `"@@locale": "es"`.

---

## The rules (please follow exactly)

### DO

- **Translate every non-`@` value** into natural, friendly language a
  real person would use, not a literal word-for-word gloss.
- **Set `"@@locale"`** to your language code at the top of your file.
- **Keep all keys identical** to `app_en.arb`, in the same order, same
  count. (Easiest path: copy the whole file, then translate in place.)
- **Keep emoji** (📎, ⭐, etc.) in the translated text where English has
  them.
- **Match English punctuation style.** This project does not use the em
  dash character. Use commas, hyphens, periods, or colons instead.
- **Keep placeholders and ICU syntax intact** (see next section).

### DO NOT

- ❌ Do not change, add, remove, rename, or reorder **keys**. The key
  set is defined only by `app_en.arb`. A missing key falls back to
  English; an extra/renamed key is ignored or breaks the build.
- ❌ Do not translate anything inside an `@...` metadata block.
- ❌ Do not translate placeholder names. `{count}`, `{name}`,
  `{group}`, `{handle}` are slots the app fills in at runtime. Keep them
  spelled exactly, including the braces.
- ❌ Do not translate ICU keywords: `plural`, `select`, `=0`, `=1`,
  `other`, `zero`, `one`, `few`, `many`. Translate only the words
  **around** them.
- ❌ Do not edit `app_localizations*.dart`. They are generated.
- ❌ Do not reformat or re-sort `app_en.arb` by hand (there is a tool
  for that, see "For maintainers" below).

---

## Placeholders and plurals (important)

Some strings have runtime values injected by the app. Keep the
`{placeholder}` tokens unchanged, move them where they read naturally in
your language:

```jsonc
// English
"groupSettingsInviteUsed": "{used} of {max} invites used",
// Spanish - tokens kept, word order natural
"groupSettingsInviteUsed": "{used} de {max} invitaciones usadas",
```

Plurals use ICU `plural` syntax. **English only needs `=1` and
`other`. Your language may need more categories** (`zero`, `one`,
`few`, `many`, `other`), add the ones your language requires:

```jsonc
// English
"icebreakersAnswerCount": "{count, plural, =1{1 answer} other{{count} answers}}",
// Polish - more plural forms, only the words are translated
"icebreakersAnswerCount": "{count, plural, =1{1 odpowiedź} few{{count} odpowiedzi} many{{count} odpowiedzi} other{{count} odpowiedzi}}",
```

The pieces `{count, plural, ...}`, `=1`, `other`, and the inner
`{count}` stay; only `answer`/`answers` get translated. If unsure which
categories your language uses, see the
[Unicode CLDR plural rules](https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html).

---

## Make the language show up in the picker

Add a human-readable name for your language so it appears nicely in
**Settings -> Language** instead of a bare code:

1. In `app_en.arb`, add (alphabetically, in the `language*` group) a key
   like `"languageSpanish": "Spanish"`, and add the same key with the
   translated name to your `app_<code>.arb`
   (`"languageSpanish": "Español"`).
2. A maintainer adds a `case` for your code in `_localeLabel` in
   `lib/features/profile/presentation/settings_screen.dart`. Mention
   your language + key in the PR and we will wire this line.

Once at least two languages ship, the Language picker appears in the app
automatically. With only English it stays hidden by design.

---

## Test your translation locally (optional, needs Flutter)

If you have the Flutter SDK:

```bash
flutter gen-l10n          # regenerates app_localizations*.dart from the .arb files
flutter analyze lib/      # must report no issues
flutter run               # then Settings -> Language -> your language
```

You do not have to do this. If you cannot run Flutter, just submit the
`.arb` file and a maintainer will generate, test, and commit the rest.

---

## Submitting

Open a Pull Request containing:

- your new `lib/l10n/app_<code>.arb`, **and**
- (if you added one) the `language<Xx>` key in `lib/l10n/app_en.arb`.

Do not include `app_localizations*.dart` changes unless you ran
`flutter gen-l10n` yourself; the maintainer regenerates them so they
stay consistent.

---

## For maintainers (adding/editing English keys)

`app_en.arb` is the template and is kept in a deterministic order:
`@@locale` first, base keys sorted alphabetically (case-insensitive),
each `@key` metadata block glued directly under its key, a blank line
between feature-prefix groups. New keys are camelCase and prefixed by
screen/feature (`groupSettings*`, `reportSheet*`) so they cluster;
reuse the shared `action*` keys for generic Back/Cancel/Retry/OK.

You may append a new key anywhere and then run the idempotent
reorder/reformatter from the repo root:

```bash
python3 tool/reorder_arb.py     # pure reorder + house-style reformat, asserts zero content change
flutter gen-l10n                # regenerate, then commit the .arb + generated files together
```

`reorder_arb.py` will refuse to write if it would change any value (it
is a formatter, never a content edit). `@meta` blocks are pretty-printed
on purpose (they are read far more than edited). Full convention:
`dev documentations/conventions/localization.md`.
# Localization
