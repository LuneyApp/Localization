import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @aboutChildSafety.
  ///
  /// In en, this message translates to:
  /// **'Child Safety Standards'**
  String get aboutChildSafety;

  /// No description provided for @aboutCommit.
  ///
  /// In en, this message translates to:
  /// **'Commit {hash}'**
  String aboutCommit(String hash);

  /// No description provided for @aboutSectionRead.
  ///
  /// In en, this message translates to:
  /// **'READ'**
  String get aboutSectionRead;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutTitle;

  /// No description provided for @aboutVersion.
  ///
  /// In en, this message translates to:
  /// **'Version {version} (build {build})'**
  String aboutVersion(String version, String build);

  /// No description provided for @aboutVersionUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Version info unavailable'**
  String get aboutVersionUnavailable;

  /// No description provided for @aboutWhatsNew.
  ///
  /// In en, this message translates to:
  /// **'What\'s New'**
  String get aboutWhatsNew;

  /// No description provided for @accountHistoryAcknowledged.
  ///
  /// In en, this message translates to:
  /// **'(acknowledged)'**
  String get accountHistoryAcknowledged;

  /// No description provided for @accountHistoryChipDays.
  ///
  /// In en, this message translates to:
  /// **'Last {days} days'**
  String accountHistoryChipDays(int days);

  /// No description provided for @accountHistoryChipYear.
  ///
  /// In en, this message translates to:
  /// **'Last year'**
  String get accountHistoryChipYear;

  /// No description provided for @accountHistoryCrisisNoResources.
  ///
  /// In en, this message translates to:
  /// **'A member of the safety team reached out.'**
  String get accountHistoryCrisisNoResources;

  /// No description provided for @accountHistoryCrisisResources.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{We shared 1 resource with you.} other{We shared {count} resources with you.}}'**
  String accountHistoryCrisisResources(int count);

  /// No description provided for @accountHistoryEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'We\'ll list any account actions Luney staff take on your account.'**
  String get accountHistoryEmptyBody;

  /// No description provided for @accountHistoryEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'Nothing to show here.'**
  String get accountHistoryEmptyTitle;

  /// No description provided for @accountHistoryKindContentRemoved.
  ///
  /// In en, this message translates to:
  /// **'Content removed'**
  String get accountHistoryKindContentRemoved;

  /// No description provided for @accountHistoryKindContentRestored.
  ///
  /// In en, this message translates to:
  /// **'Content restored'**
  String get accountHistoryKindContentRestored;

  /// No description provided for @accountHistoryKindCrisisAlert.
  ///
  /// In en, this message translates to:
  /// **'Safety outreach'**
  String get accountHistoryKindCrisisAlert;

  /// No description provided for @accountHistoryKindSuspended.
  ///
  /// In en, this message translates to:
  /// **'Account suspended'**
  String get accountHistoryKindSuspended;

  /// No description provided for @accountHistoryKindSuspensionLifted.
  ///
  /// In en, this message translates to:
  /// **'Suspension lifted'**
  String get accountHistoryKindSuspensionLifted;

  /// No description provided for @accountHistoryKindUnknown.
  ///
  /// In en, this message translates to:
  /// **'Account event'**
  String get accountHistoryKindUnknown;

  /// No description provided for @accountHistoryKindWarned.
  ///
  /// In en, this message translates to:
  /// **'Warning issued'**
  String get accountHistoryKindWarned;

  /// No description provided for @accountHistoryLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load your account activity. Pull to retry.'**
  String get accountHistoryLoadError;

  /// No description provided for @accountHistoryModTeam.
  ///
  /// In en, this message translates to:
  /// **'Luney moderation team'**
  String get accountHistoryModTeam;

  /// No description provided for @accountHistoryNoDetails.
  ///
  /// In en, this message translates to:
  /// **'No additional details provided.'**
  String get accountHistoryNoDetails;

  /// No description provided for @accountHistorySuspendedLifts.
  ///
  /// In en, this message translates to:
  /// **'Lifts {date}.'**
  String accountHistorySuspendedLifts(String date);

  /// No description provided for @accountHistorySuspendedPermanent.
  ///
  /// In en, this message translates to:
  /// **'Permanent until lifted.'**
  String get accountHistorySuspendedPermanent;

  /// No description provided for @accountHistoryTarget.
  ///
  /// In en, this message translates to:
  /// **'Target: {target}'**
  String accountHistoryTarget(String target);

  /// No description provided for @accountHistoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Account activity'**
  String get accountHistoryTitle;

  /// No description provided for @accountHistoryViewResources.
  ///
  /// In en, this message translates to:
  /// **'View resources'**
  String get accountHistoryViewResources;

  /// No description provided for @accountHistoryWindowCopy.
  ///
  /// In en, this message translates to:
  /// **'The last {days} days of moderation actions on your account.'**
  String accountHistoryWindowCopy(int days);

  /// No description provided for @accountLockedExpired.
  ///
  /// In en, this message translates to:
  /// **'Suspension expired. Restart the app to continue.'**
  String get accountLockedExpired;

  /// No description provided for @accountLockedLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load suspension details.'**
  String get accountLockedLoadError;

  /// No description provided for @accountLockedNoDetails.
  ///
  /// In en, this message translates to:
  /// **'No additional details provided.'**
  String get accountLockedNoDetails;

  /// No description provided for @accountLockedNoExpiration.
  ///
  /// In en, this message translates to:
  /// **'No expiration set.'**
  String get accountLockedNoExpiration;

  /// No description provided for @accountLockedOpenAppeal.
  ///
  /// In en, this message translates to:
  /// **'Open appeal ticket'**
  String get accountLockedOpenAppeal;

  /// No description provided for @accountLockedRefresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get accountLockedRefresh;

  /// No description provided for @accountLockedSignOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get accountLockedSignOut;

  /// No description provided for @accountLockedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your account has been suspended by Luney moderation.'**
  String get accountLockedSubtitle;

  /// No description provided for @accountLockedTitle.
  ///
  /// In en, this message translates to:
  /// **'Account locked'**
  String get accountLockedTitle;

  /// No description provided for @accountLockedUntil.
  ///
  /// In en, this message translates to:
  /// **'Locked until {date}.'**
  String accountLockedUntil(String date);

  /// No description provided for @accountRestrictionsEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'If staff ever restricts your access to a specific feature, it\'ll show up here with the reason and (if it\'s time-limited) when it ends.'**
  String get accountRestrictionsEmptyBody;

  /// No description provided for @accountRestrictionsEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No restrictions on your account.'**
  String get accountRestrictionsEmptyTitle;

  /// No description provided for @accountRestrictionsIntro.
  ///
  /// In en, this message translates to:
  /// **'These are the features your account is currently restricted from. If you think a restriction is wrong, you can appeal it via the support ticket attached to the moderation action.'**
  String get accountRestrictionsIntro;

  /// No description provided for @accountRestrictionsLifts.
  ///
  /// In en, this message translates to:
  /// **'Lifts {time}'**
  String accountRestrictionsLifts(String time);

  /// No description provided for @accountRestrictionsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String accountRestrictionsLoadError(String error);

  /// No description provided for @accountRestrictionsPermanent.
  ///
  /// In en, this message translates to:
  /// **'PERMANENT'**
  String get accountRestrictionsPermanent;

  /// No description provided for @accountRestrictionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Account restrictions'**
  String get accountRestrictionsTitle;

  /// No description provided for @accountRestrictionsUntil.
  ///
  /// In en, this message translates to:
  /// **'UNTIL {date}'**
  String accountRestrictionsUntil(String date);

  /// No description provided for @accountReviewsAttachmentViews.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 attachment view} other{{count} attachment views}}'**
  String accountReviewsAttachmentViews(int count);

  /// No description provided for @accountReviewsBetween.
  ///
  /// In en, this message translates to:
  /// **'Between {start} and {end}, Luney staff reviewed your account.'**
  String accountReviewsBetween(String start, String end);

  /// No description provided for @accountReviewsDmFetches.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 DM thread fetch} other{{count} DM thread fetches}}'**
  String accountReviewsDmFetches(int count);

  /// No description provided for @accountReviewsEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'If a Luney staff member reviewed your account, you\'ll see it here once the review is complete.'**
  String get accountReviewsEmptyBody;

  /// No description provided for @accountReviewsEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No staff has accessed your account.'**
  String get accountReviewsEmptyTitle;

  /// No description provided for @accountReviewsGroupReads.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 group-message read} other{{count} group-message reads}}'**
  String accountReviewsGroupReads(int count);

  /// No description provided for @accountReviewsHelp.
  ///
  /// In en, this message translates to:
  /// **'Reviews are part of Luney\'s safety operations. They happen when a report or investigation requires staff to see context beyond what shows up in a single reported message. Every action taken during a review is logged in our internal audit trail. For more information about a specific review, contact privacy@luneyapp.com. Formal data-access requests are processed within 30 days per our Privacy Policy.'**
  String get accountReviewsHelp;

  /// No description provided for @accountReviewsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String accountReviewsLoadError(String error);

  /// No description provided for @accountReviewsTitle.
  ///
  /// In en, this message translates to:
  /// **'Account reviews'**
  String get accountReviewsTitle;

  /// No description provided for @accountViolationsActionDeleteContent.
  ///
  /// In en, this message translates to:
  /// **'Content removed'**
  String get accountViolationsActionDeleteContent;

  /// No description provided for @accountViolationsActionSuspend.
  ///
  /// In en, this message translates to:
  /// **'Suspension'**
  String get accountViolationsActionSuspend;

  /// No description provided for @accountViolationsActionWarn.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get accountViolationsActionWarn;

  /// No description provided for @accountViolationsEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'We\'ll surface anything the moderation team issues here.'**
  String get accountViolationsEmptyBody;

  /// No description provided for @accountViolationsEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No violations on your account.'**
  String get accountViolationsEmptyTitle;

  /// No description provided for @accountViolationsEntriesOnRecord.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 entry on record} other{{count} entries on record}}'**
  String accountViolationsEntriesOnRecord(int count);

  /// No description provided for @accountViolationsIssuedBy.
  ///
  /// In en, this message translates to:
  /// **'Issued {ts} by Luney moderation team'**
  String accountViolationsIssuedBy(String ts);

  /// No description provided for @accountViolationsLifted.
  ///
  /// In en, this message translates to:
  /// **'Lifted {ts}'**
  String accountViolationsLifted(String ts);

  /// No description provided for @accountViolationsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String accountViolationsLoadError(String error);

  /// No description provided for @accountViolationsNoDetails.
  ///
  /// In en, this message translates to:
  /// **'No additional details provided.'**
  String get accountViolationsNoDetails;

  /// No description provided for @accountViolationsNoExpiration.
  ///
  /// In en, this message translates to:
  /// **'No expiration set'**
  String get accountViolationsNoExpiration;

  /// No description provided for @accountViolationsOpenAppeal.
  ///
  /// In en, this message translates to:
  /// **'Open appeal ticket'**
  String get accountViolationsOpenAppeal;

  /// No description provided for @accountViolationsPurged.
  ///
  /// In en, this message translates to:
  /// **'Permanently removed {ts}'**
  String accountViolationsPurged(String ts);

  /// No description provided for @accountViolationsPurgeScheduled.
  ///
  /// In en, this message translates to:
  /// **'Permanent removal scheduled for {ts}'**
  String accountViolationsPurgeScheduled(String ts);

  /// No description provided for @accountViolationsResolvedBadge.
  ///
  /// In en, this message translates to:
  /// **'RESOLVED'**
  String get accountViolationsResolvedBadge;

  /// No description provided for @accountViolationsRestored.
  ///
  /// In en, this message translates to:
  /// **'Restored {ts}'**
  String accountViolationsRestored(String ts);

  /// No description provided for @accountViolationsStandingGood.
  ///
  /// In en, this message translates to:
  /// **'Account in good standing'**
  String get accountViolationsStandingGood;

  /// No description provided for @accountViolationsStandingMultiple.
  ///
  /// In en, this message translates to:
  /// **'Multiple violations on file'**
  String get accountViolationsStandingMultiple;

  /// No description provided for @accountViolationsStandingSuspended.
  ///
  /// In en, this message translates to:
  /// **'Currently suspended'**
  String get accountViolationsStandingSuspended;

  /// No description provided for @accountViolationsSuspensionPermanent.
  ///
  /// In en, this message translates to:
  /// **'{kind} · permanent'**
  String accountViolationsSuspensionPermanent(String kind);

  /// No description provided for @accountViolationsSuspensionUntil.
  ///
  /// In en, this message translates to:
  /// **'{kind} · until {ts}'**
  String accountViolationsSuspensionUntil(String kind, String ts);

  /// No description provided for @accountViolationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Account Violations'**
  String get accountViolationsTitle;

  /// No description provided for @accountViolationsUntil.
  ///
  /// In en, this message translates to:
  /// **'Until {ts}'**
  String accountViolationsUntil(String ts);

  /// No description provided for @achievementsListOtherTitle.
  ///
  /// In en, this message translates to:
  /// **'Achievements'**
  String get achievementsListOtherTitle;

  /// No description provided for @achievementsListOwnTitle.
  ///
  /// In en, this message translates to:
  /// **'Your achievements'**
  String get achievementsListOwnTitle;

  /// No description provided for @achievementTierBronze.
  ///
  /// In en, this message translates to:
  /// **'Bronze'**
  String get achievementTierBronze;

  /// No description provided for @achievementTierGold.
  ///
  /// In en, this message translates to:
  /// **'Gold'**
  String get achievementTierGold;

  /// No description provided for @achievementTierPlatinum.
  ///
  /// In en, this message translates to:
  /// **'Platinum'**
  String get achievementTierPlatinum;

  /// No description provided for @achievementTierSilver.
  ///
  /// In en, this message translates to:
  /// **'Silver'**
  String get achievementTierSilver;

  /// No description provided for @achievementTierSpecial.
  ///
  /// In en, this message translates to:
  /// **'Special'**
  String get achievementTierSpecial;

  /// Generic back navigation tooltip.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get actionBack;

  /// Generic cancel action (dialog button).
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get actionCancel;

  /// Generic close tooltip.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get actionClose;

  /// Generic copy action / tooltip.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get actionCopy;

  /// Generic delete action (dialog button).
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get actionDelete;

  /// Generic done / finish action.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get actionDone;

  /// Generic acknowledgement / dismiss action.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get actionGotIt;

  /// Generic OK / acknowledge dialog button.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get actionOk;

  /// Generic refresh action.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get actionRefresh;

  /// Generic remove action / tooltip.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get actionRemove;

  /// Generic retry action.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get actionRetry;

  /// Generic save action (dialog button).
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get actionSave;

  /// Generic share action / tooltip.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get actionShare;

  /// No description provided for @adminAction1Day.
  ///
  /// In en, this message translates to:
  /// **'1 day'**
  String get adminAction1Day;

  /// No description provided for @adminAction30Days.
  ///
  /// In en, this message translates to:
  /// **'30 days'**
  String get adminAction30Days;

  /// No description provided for @adminAction7Days.
  ///
  /// In en, this message translates to:
  /// **'7 days'**
  String get adminAction7Days;

  /// No description provided for @adminAction90Days.
  ///
  /// In en, this message translates to:
  /// **'90 days'**
  String get adminAction90Days;

  /// No description provided for @adminActionDefaultUser.
  ///
  /// In en, this message translates to:
  /// **'user'**
  String get adminActionDefaultUser;

  /// No description provided for @adminActionDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Admin delete'**
  String get adminActionDeleteTitle;

  /// No description provided for @adminActionDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get adminActionDuration;

  /// No description provided for @adminActionErrApply.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t apply the action'**
  String get adminActionErrApply;

  /// No description provided for @adminActionInternalHint.
  ///
  /// In en, this message translates to:
  /// **'What you want other moderators to know.'**
  String get adminActionInternalHint;

  /// No description provided for @adminActionInternalNote.
  ///
  /// In en, this message translates to:
  /// **'Internal note (staff only)'**
  String get adminActionInternalNote;

  /// No description provided for @adminActionLiftCta.
  ///
  /// In en, this message translates to:
  /// **'Lift'**
  String get adminActionLiftCta;

  /// No description provided for @adminActionLiftTitle.
  ///
  /// In en, this message translates to:
  /// **'Lift suspension'**
  String get adminActionLiftTitle;

  /// No description provided for @adminActionPermanent.
  ///
  /// In en, this message translates to:
  /// **'Permanent'**
  String get adminActionPermanent;

  /// No description provided for @adminActionRestoreCta.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get adminActionRestoreCta;

  /// No description provided for @adminActionRestoreTitle.
  ///
  /// In en, this message translates to:
  /// **'Restore content'**
  String get adminActionRestoreTitle;

  /// No description provided for @adminActionSuspendCta.
  ///
  /// In en, this message translates to:
  /// **'Suspend'**
  String get adminActionSuspendCta;

  /// No description provided for @adminActionSuspendTitle.
  ///
  /// In en, this message translates to:
  /// **'Suspend {target}'**
  String adminActionSuspendTitle(String target);

  /// No description provided for @adminActionSuspensionKind.
  ///
  /// In en, this message translates to:
  /// **'Suspension kind'**
  String get adminActionSuspensionKind;

  /// No description provided for @adminActionUserHint.
  ///
  /// In en, this message translates to:
  /// **'What the affected user sees in their violation.'**
  String get adminActionUserHint;

  /// No description provided for @adminActionUserNote.
  ///
  /// In en, this message translates to:
  /// **'User-facing note (sent to user)'**
  String get adminActionUserNote;

  /// No description provided for @adminActionUserNoteRequired.
  ///
  /// In en, this message translates to:
  /// **'User-facing note is required.'**
  String get adminActionUserNoteRequired;

  /// No description provided for @adminActionWarnCta.
  ///
  /// In en, this message translates to:
  /// **'Issue warning'**
  String get adminActionWarnCta;

  /// No description provided for @adminActionWarnTitle.
  ///
  /// In en, this message translates to:
  /// **'Warn {target}'**
  String adminActionWarnTitle(String target);

  /// No description provided for @anniversaryCardChattingSince.
  ///
  /// In en, this message translates to:
  /// **'Chatting since'**
  String get anniversaryCardChattingSince;

  /// No description provided for @anniversaryCardDetailPrepareOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t prepare the share image'**
  String get anniversaryCardDetailPrepareOp;

  /// No description provided for @anniversaryCardDetailPreparing.
  ///
  /// In en, this message translates to:
  /// **'Preparing…'**
  String get anniversaryCardDetailPreparing;

  /// No description provided for @anniversaryCardDetailShareCard.
  ///
  /// In en, this message translates to:
  /// **'Share card'**
  String get anniversaryCardDetailShareCard;

  /// No description provided for @anniversaryCardDetailShareOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t share card'**
  String get anniversaryCardDetailShareOp;

  /// No description provided for @anniversaryCardFormalLabel.
  ///
  /// In en, this message translates to:
  /// **'Anniversary'**
  String get anniversaryCardFormalLabel;

  /// No description provided for @anniversaryCardFriendsSince.
  ///
  /// In en, this message translates to:
  /// **'Friends since'**
  String get anniversaryCardFriendsSince;

  /// No description provided for @anniversaryCardMemberSince.
  ///
  /// In en, this message translates to:
  /// **'Member since'**
  String get anniversaryCardMemberSince;

  /// No description provided for @anniversaryCardOnLuneySince.
  ///
  /// In en, this message translates to:
  /// **'On Luney since'**
  String get anniversaryCardOnLuneySince;

  /// No description provided for @anniversaryCardScreenLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load card: {error}'**
  String anniversaryCardScreenLoadError(String error);

  /// No description provided for @anniversaryCardScreenNotFound.
  ///
  /// In en, this message translates to:
  /// **'Card not found.'**
  String get anniversaryCardScreenNotFound;

  /// No description provided for @anniversaryCardScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Anniversary card'**
  String get anniversaryCardScreenTitle;

  /// No description provided for @anniversaryCardSince.
  ///
  /// In en, this message translates to:
  /// **'Since'**
  String get anniversaryCardSince;

  /// No description provided for @anniversaryCardSinceStamp.
  ///
  /// In en, this message translates to:
  /// **'{prefix} {date}'**
  String anniversaryCardSinceStamp(String prefix, String date);

  /// No description provided for @anniversaryCardSomeone.
  ///
  /// In en, this message translates to:
  /// **'someone'**
  String get anniversaryCardSomeone;

  /// No description provided for @anniversaryCardSubtitleExclaim.
  ///
  /// In en, this message translates to:
  /// **'{subtitle}!'**
  String anniversaryCardSubtitleExclaim(String subtitle);

  /// No description provided for @anniversaryCardThem.
  ///
  /// In en, this message translates to:
  /// **'them'**
  String get anniversaryCardThem;

  /// No description provided for @anniversaryCardYearLabel.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 year} other{{count} years}}'**
  String anniversaryCardYearLabel(int count);

  /// No description provided for @anniversaryShareBirthdaySubject.
  ///
  /// In en, this message translates to:
  /// **'Luney-versary · {years}'**
  String anniversaryShareBirthdaySubject(String years);

  /// No description provided for @anniversaryShareBirthdayText.
  ///
  /// In en, this message translates to:
  /// **'{years} on Luney 🌙'**
  String anniversaryShareBirthdayText(String years);

  /// No description provided for @anniversaryShareDmSubject.
  ///
  /// In en, this message translates to:
  /// **'Chat anniversary · {years}'**
  String anniversaryShareDmSubject(String years);

  /// No description provided for @anniversaryShareDmText.
  ///
  /// In en, this message translates to:
  /// **'Celebrating {years} of conversations on Luney 💬'**
  String anniversaryShareDmText(String years);

  /// No description provided for @anniversaryShareFriendshipSubject.
  ///
  /// In en, this message translates to:
  /// **'Friendiversary card · {years}'**
  String anniversaryShareFriendshipSubject(String years);

  /// No description provided for @anniversaryShareFriendshipText.
  ///
  /// In en, this message translates to:
  /// **'Celebrating {years} of friendship on Luney 🎉'**
  String anniversaryShareFriendshipText(String years);

  /// No description provided for @anniversaryShareGroupSubject.
  ///
  /// In en, this message translates to:
  /// **'Group anniversary · {years}'**
  String anniversaryShareGroupSubject(String years);

  /// No description provided for @anniversaryShareGroupText.
  ///
  /// In en, this message translates to:
  /// **'{years} in this community on Luney 👥'**
  String anniversaryShareGroupText(String years);

  /// No description provided for @anniversaryShareUnknownSubject.
  ///
  /// In en, this message translates to:
  /// **'Anniversary card · {years}'**
  String anniversaryShareUnknownSubject(String years);

  /// No description provided for @anniversaryShareUnknownText.
  ///
  /// In en, this message translates to:
  /// **'Celebrating {years} on Luney 🎉'**
  String anniversaryShareUnknownText(String years);

  /// No description provided for @anniversaryShareYears.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 year} other{{count} years}}'**
  String anniversaryShareYears(int count);

  /// The app name. Usually not translated.
  ///
  /// In en, this message translates to:
  /// **'Luney'**
  String get appName;

  /// No description provided for @appShellCancelAndLogIn.
  ///
  /// In en, this message translates to:
  /// **'Yes, cancel & log in'**
  String get appShellCancelAndLogIn;

  /// No description provided for @appShellCantEditRubric.
  ///
  /// In en, this message translates to:
  /// **'CAN\'T EDIT'**
  String get appShellCantEditRubric;

  /// No description provided for @appShellCouldntOperation.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t {operation}'**
  String appShellCouldntOperation(String operation);

  /// No description provided for @appShellDeletionCancelBody.
  ///
  /// In en, this message translates to:
  /// **'You requested account deletion. Logging in now will cancel the request and your account stays, scheduled for {date} otherwise ({count, plural, =1{1 day} other{{count} days}} from now). Sign out to let the deletion proceed.'**
  String appShellDeletionCancelBody(String date, int count);

  /// No description provided for @appShellDeletionCancelledMessage.
  ///
  /// In en, this message translates to:
  /// **'Your account is no longer scheduled for deletion. Everything\'s exactly where you left it.'**
  String get appShellDeletionCancelledMessage;

  /// No description provided for @appShellDeletionCancelledRubric.
  ///
  /// In en, this message translates to:
  /// **'DELETION CANCELLED'**
  String get appShellDeletionCancelledRubric;

  /// No description provided for @appShellDeletionCancelTitle.
  ///
  /// In en, this message translates to:
  /// **'Cancel your deletion request?'**
  String get appShellDeletionCancelTitle;

  /// No description provided for @appShellDeletionOverdueBody.
  ///
  /// In en, this message translates to:
  /// **'The 30-day grace window passed on {date}. The deletion is locked in and the daily cleanup will complete it within 24 hours. Please sign out.'**
  String appShellDeletionOverdueBody(String date);

  /// No description provided for @appShellDeletionOverdueTitle.
  ///
  /// In en, this message translates to:
  /// **'Your account is being deleted'**
  String get appShellDeletionOverdueTitle;

  /// No description provided for @appShellDismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get appShellDismiss;

  /// No description provided for @appShellEvents.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get appShellEvents;

  /// No description provided for @appShellLiveLobbies.
  ///
  /// In en, this message translates to:
  /// **'Live lobbies'**
  String get appShellLiveLobbies;

  /// No description provided for @appShellNotEditableMessage.
  ///
  /// In en, this message translates to:
  /// **'Reels uploaded after this update are downloadable for re-edit. To replace this one, post a fresh reel and delete this one when you\'re happy with the new version.'**
  String get appShellNotEditableMessage;

  /// No description provided for @appShellNotEditableTitle.
  ///
  /// In en, this message translates to:
  /// **'This reel was uploaded before re-edit was supported'**
  String get appShellNotEditableTitle;

  /// No description provided for @appShellNotifBellLabel.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{Notifications} =1{Notifications, 1 unread} other{Notifications, {count} unread}}'**
  String appShellNotifBellLabel(int count);

  /// No description provided for @appShellNotNow.
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get appShellNotNow;

  /// No description provided for @appShellOpBakingReel.
  ///
  /// In en, this message translates to:
  /// **'Baking your reel'**
  String get appShellOpBakingReel;

  /// No description provided for @appShellOpCancelDeletion.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t cancel deletion'**
  String get appShellOpCancelDeletion;

  /// No description provided for @appShellOpenEditor.
  ///
  /// In en, this message translates to:
  /// **'Open editor'**
  String get appShellOpenEditor;

  /// No description provided for @appShellOpLoadingOriginalReel.
  ///
  /// In en, this message translates to:
  /// **'Loading original reel'**
  String get appShellOpLoadingOriginalReel;

  /// No description provided for @appShellOpUploadingReel.
  ///
  /// In en, this message translates to:
  /// **'Uploading reel'**
  String get appShellOpUploadingReel;

  /// No description provided for @appShellReadyToEditMessage.
  ///
  /// In en, this message translates to:
  /// **'Tap below to open the trim screen with your downloaded reel. The new version will replace the old one once it\'s processed.'**
  String get appShellReadyToEditMessage;

  /// No description provided for @appShellReadyToEditRubric.
  ///
  /// In en, this message translates to:
  /// **'READY TO EDIT'**
  String get appShellReadyToEditRubric;

  /// No description provided for @appShellReadyToEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Your reel is ready to edit'**
  String get appShellReadyToEditTitle;

  /// No description provided for @appShellReelResumeMessage.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, but your edits are saved as a draft. Resume editing to try again, or dismiss to start fresh later.'**
  String get appShellReelResumeMessage;

  /// No description provided for @appShellReelUploadedMessage.
  ///
  /// In en, this message translates to:
  /// **'It usually takes about 30 seconds to finish processing. Once it\'s ready, it\'ll appear in your reels grid and on the home rail for friends.'**
  String get appShellReelUploadedMessage;

  /// No description provided for @appShellReelUploadedRubric.
  ///
  /// In en, this message translates to:
  /// **'REEL UPLOADED'**
  String get appShellReelUploadedRubric;

  /// No description provided for @appShellReelUploadedTitle.
  ///
  /// In en, this message translates to:
  /// **'Reel uploaded'**
  String get appShellReelUploadedTitle;

  /// No description provided for @appShellResumeEditing.
  ///
  /// In en, this message translates to:
  /// **'Resume editing'**
  String get appShellResumeEditing;

  /// No description provided for @appShellSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get appShellSearch;

  /// No description provided for @appShellSignOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get appShellSignOut;

  /// No description provided for @appShellStillProcessingMessage.
  ///
  /// In en, this message translates to:
  /// **'Mux finishes the editable copy a minute or two after the reel goes live. Try Edit again in a couple minutes, should be ready by then.'**
  String get appShellStillProcessingMessage;

  /// No description provided for @appShellStillProcessingRubric.
  ///
  /// In en, this message translates to:
  /// **'STILL PROCESSING'**
  String get appShellStillProcessingRubric;

  /// No description provided for @appShellStillProcessingTitle.
  ///
  /// In en, this message translates to:
  /// **'Your reel is still processing'**
  String get appShellStillProcessingTitle;

  /// No description provided for @appShellUnsupportedMessage.
  ///
  /// In en, this message translates to:
  /// **'Editing is only supported for reels hosted on our current video provider.'**
  String get appShellUnsupportedMessage;

  /// No description provided for @appShellUnsupportedTitle.
  ///
  /// In en, this message translates to:
  /// **'Re-edit not available for this reel'**
  String get appShellUnsupportedTitle;

  /// No description provided for @appShellWelcomeBackTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome back'**
  String get appShellWelcomeBackTitle;

  /// No description provided for @blockedUsersEmpty.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t blocked anyone'**
  String get blockedUsersEmpty;

  /// No description provided for @blockedUsersLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String blockedUsersLoadError(String error);

  /// No description provided for @blockedUsersTitle.
  ///
  /// In en, this message translates to:
  /// **'Blocked users'**
  String get blockedUsersTitle;

  /// No description provided for @blockedUsersUnblock.
  ///
  /// In en, this message translates to:
  /// **'Unblock'**
  String get blockedUsersUnblock;

  /// No description provided for @broadcastBannerDismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss broadcast'**
  String get broadcastBannerDismiss;

  /// No description provided for @calculatorDecoyClear.
  ///
  /// In en, this message translates to:
  /// **'AC'**
  String get calculatorDecoyClear;

  /// No description provided for @calculatorDecoyError.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get calculatorDecoyError;

  /// No description provided for @changeEmailCurrentPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Current password'**
  String get changeEmailCurrentPasswordHint;

  /// No description provided for @changeEmailCurrentPrefix.
  ///
  /// In en, this message translates to:
  /// **'Currently signed in as '**
  String get changeEmailCurrentPrefix;

  /// No description provided for @changeEmailCurrentSuffix.
  ///
  /// In en, this message translates to:
  /// **'. We\'ll email a verification link to the new address. Your email won\'t change until you tap it.'**
  String get changeEmailCurrentSuffix;

  /// No description provided for @changeEmailErrChange.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t change your email'**
  String get changeEmailErrChange;

  /// No description provided for @changeEmailErrInvalid.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email.'**
  String get changeEmailErrInvalid;

  /// No description provided for @changeEmailErrPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Enter your current password.'**
  String get changeEmailErrPasswordRequired;

  /// No description provided for @changeEmailErrSame.
  ///
  /// In en, this message translates to:
  /// **'That\'s already your email.'**
  String get changeEmailErrSame;

  /// No description provided for @changeEmailNewHint.
  ///
  /// In en, this message translates to:
  /// **'New email'**
  String get changeEmailNewHint;

  /// No description provided for @changeEmailSend.
  ///
  /// In en, this message translates to:
  /// **'Send verification'**
  String get changeEmailSend;

  /// No description provided for @changeEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Change email'**
  String get changeEmailTitle;

  /// No description provided for @changePasswordConfirmHint.
  ///
  /// In en, this message translates to:
  /// **'Confirm new password'**
  String get changePasswordConfirmHint;

  /// No description provided for @changePasswordCtaSet.
  ///
  /// In en, this message translates to:
  /// **'Set password'**
  String get changePasswordCtaSet;

  /// No description provided for @changePasswordCtaUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get changePasswordCtaUpdate;

  /// No description provided for @changePasswordCurrentHint.
  ///
  /// In en, this message translates to:
  /// **'Current password'**
  String get changePasswordCurrentHint;

  /// No description provided for @changePasswordErrChange.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t change your password'**
  String get changePasswordErrChange;

  /// No description provided for @changePasswordErrCurrentRequired.
  ///
  /// In en, this message translates to:
  /// **'Enter your current password.'**
  String get changePasswordErrCurrentRequired;

  /// No description provided for @changePasswordErrMismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords don\'t match.'**
  String get changePasswordErrMismatch;

  /// No description provided for @changePasswordErrSet.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t set your password'**
  String get changePasswordErrSet;

  /// No description provided for @changePasswordErrTooShort.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters.'**
  String get changePasswordErrTooShort;

  /// No description provided for @changePasswordNewHint.
  ///
  /// In en, this message translates to:
  /// **'New password (min 8 chars)'**
  String get changePasswordNewHint;

  /// No description provided for @changePasswordOauthBlurb.
  ///
  /// In en, this message translates to:
  /// **'You\'ll be able to sign in with your email + this password as a fallback if you ever lose access to your linked OAuth providers.'**
  String get changePasswordOauthBlurb;

  /// No description provided for @changePasswordTitleChange.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get changePasswordTitleChange;

  /// No description provided for @changePasswordTitleSet.
  ///
  /// In en, this message translates to:
  /// **'Set a password'**
  String get changePasswordTitleSet;

  /// No description provided for @chatBubbleEditHint.
  ///
  /// In en, this message translates to:
  /// **'Edit message…'**
  String get chatBubbleEditHint;

  /// No description provided for @chatBubbleEditing.
  ///
  /// In en, this message translates to:
  /// **'Editing message'**
  String get chatBubbleEditing;

  /// No description provided for @chatBubbleEmojiTooltip.
  ///
  /// In en, this message translates to:
  /// **'Emoji'**
  String get chatBubbleEmojiTooltip;

  /// No description provided for @chatBubbleKeyboardTooltip.
  ///
  /// In en, this message translates to:
  /// **'Keyboard'**
  String get chatBubbleKeyboardTooltip;

  /// No description provided for @chatBubbleMessageHint.
  ///
  /// In en, this message translates to:
  /// **'Message…'**
  String get chatBubbleMessageHint;

  /// No description provided for @chatBubbleReplyingTo.
  ///
  /// In en, this message translates to:
  /// **'Replying to {name}'**
  String chatBubbleReplyingTo(String name);

  /// No description provided for @commentsCancelReply.
  ///
  /// In en, this message translates to:
  /// **'Cancel reply'**
  String get commentsCancelReply;

  /// No description provided for @commentsClosedDefault.
  ///
  /// In en, this message translates to:
  /// **'You can\'t comment on this post.'**
  String get commentsClosedDefault;

  /// No description provided for @commentsClosedDisabled.
  ///
  /// In en, this message translates to:
  /// **'Comments are turned off for this post.'**
  String get commentsClosedDisabled;

  /// No description provided for @commentsClosedFoF.
  ///
  /// In en, this message translates to:
  /// **'Only the author\'s friends and their friends can comment.'**
  String get commentsClosedFoF;

  /// No description provided for @commentsClosedFriends.
  ///
  /// In en, this message translates to:
  /// **'Only the author\'s friends can comment.'**
  String get commentsClosedFriends;

  /// No description provided for @commentsCloseTooltip.
  ///
  /// In en, this message translates to:
  /// **'Close comments'**
  String get commentsCloseTooltip;

  /// No description provided for @commentsDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'Replies under it will be removed too.'**
  String get commentsDeleteBody;

  /// No description provided for @commentsDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this comment?'**
  String get commentsDeleteTitle;

  /// No description provided for @commentsDeleteTooltip.
  ///
  /// In en, this message translates to:
  /// **'Delete comment'**
  String get commentsDeleteTooltip;

  /// No description provided for @commentsEmojiTooltip.
  ///
  /// In en, this message translates to:
  /// **'Emoji'**
  String get commentsEmojiTooltip;

  /// No description provided for @commentsEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Be the first to say something kind.'**
  String get commentsEmptyBody;

  /// No description provided for @commentsEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No comments yet'**
  String get commentsEmptyTitle;

  /// No description provided for @commentsErrDelete.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete comment'**
  String get commentsErrDelete;

  /// No description provided for @commentsErrPost.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t post comment'**
  String get commentsErrPost;

  /// No description provided for @commentsHintComment.
  ///
  /// In en, this message translates to:
  /// **'Add a comment…'**
  String get commentsHintComment;

  /// No description provided for @commentsHintReply.
  ///
  /// In en, this message translates to:
  /// **'Write your reply…'**
  String get commentsHintReply;

  /// No description provided for @commentsOpenProfile.
  ///
  /// In en, this message translates to:
  /// **'Open {name}\'s profile'**
  String commentsOpenProfile(String name);

  /// No description provided for @commentsPermBody.
  ///
  /// In en, this message translates to:
  /// **'Admin delete is gated on the moderate_content staff permission. Ask a super-admin to grant it to your role.'**
  String get commentsPermBody;

  /// No description provided for @commentsPermRubric.
  ///
  /// In en, this message translates to:
  /// **'MISSING PERMISSION'**
  String get commentsPermRubric;

  /// No description provided for @commentsPermTitle.
  ///
  /// In en, this message translates to:
  /// **'Need the moderate_content perm'**
  String get commentsPermTitle;

  /// No description provided for @commentsPostSemantic.
  ///
  /// In en, this message translates to:
  /// **'Post comment'**
  String get commentsPostSemantic;

  /// No description provided for @commentsReply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get commentsReply;

  /// No description provided for @commentsReplyingTo.
  ///
  /// In en, this message translates to:
  /// **'Replying to @{handle}'**
  String commentsReplyingTo(String handle);

  /// No description provided for @commentsTitle.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get commentsTitle;

  /// No description provided for @communityCardErrorRetrySemantics.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load {label}. Tap to retry.'**
  String communityCardErrorRetrySemantics(String label);

  /// No description provided for @communityCardErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load {label}.'**
  String communityCardErrorTitle(String label);

  /// No description provided for @communityPulseConnections.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{connection} other{connections}}'**
  String communityPulseConnections(int count);

  /// No description provided for @communityPulseEvents.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{event} other{events}}'**
  String communityPulseEvents(int count);

  /// No description provided for @communityPulseHeader.
  ///
  /// In en, this message translates to:
  /// **'COMMUNITY PULSE'**
  String get communityPulseHeader;

  /// No description provided for @communityPulseNewGroups.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{new group} other{new groups}}'**
  String communityPulseNewGroups(int count);

  /// No description provided for @communityPulseThisWeek.
  ///
  /// In en, this message translates to:
  /// **'This week'**
  String get communityPulseThisWeek;

  /// No description provided for @communityVotingBlurb.
  ///
  /// In en, this message translates to:
  /// **'Help decide what gets built next. Vote on suggestions staff have opened to the community.'**
  String get communityVotingBlurb;

  /// No description provided for @communityVotingDismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get communityVotingDismiss;

  /// No description provided for @communityVotingDismissA11y.
  ///
  /// In en, this message translates to:
  /// **'Dismiss suggestion'**
  String get communityVotingDismissA11y;

  /// No description provided for @communityVotingErrDismiss.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t dismiss this suggestion'**
  String get communityVotingErrDismiss;

  /// No description provided for @communityVotingErrorLabel.
  ///
  /// In en, this message translates to:
  /// **'Community Voting'**
  String get communityVotingErrorLabel;

  /// No description provided for @communityVotingErrVote.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t record your vote'**
  String get communityVotingErrVote;

  /// No description provided for @communityVotingOpenCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 open} other{{count} open}}'**
  String communityVotingOpenCount(int count);

  /// No description provided for @communityVotingSeeAll.
  ///
  /// In en, this message translates to:
  /// **'See all suggestions →'**
  String get communityVotingSeeAll;

  /// No description provided for @communityVotingTitle.
  ///
  /// In en, this message translates to:
  /// **'COMMUNITY VOTING'**
  String get communityVotingTitle;

  /// No description provided for @composeActionPost.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get composeActionPost;

  /// No description provided for @composeAllowComments.
  ///
  /// In en, this message translates to:
  /// **'Allow comments'**
  String get composeAllowComments;

  /// No description provided for @composeAttach.
  ///
  /// In en, this message translates to:
  /// **'Attach'**
  String get composeAttach;

  /// No description provided for @composeAttachPhoto.
  ///
  /// In en, this message translates to:
  /// **'Photo'**
  String get composeAttachPhoto;

  /// No description provided for @composeAttachPhotoSub.
  ///
  /// In en, this message translates to:
  /// **'Add an image to your post'**
  String get composeAttachPhotoSub;

  /// No description provided for @composeAttachVideoCamera.
  ///
  /// In en, this message translates to:
  /// **'Record a video'**
  String get composeAttachVideoCamera;

  /// No description provided for @composeAttachVideoCameraSub.
  ///
  /// In en, this message translates to:
  /// **'Capture fresh from the camera'**
  String get composeAttachVideoCameraSub;

  /// No description provided for @composeAttachVideoGallery.
  ///
  /// In en, this message translates to:
  /// **'Pick a video'**
  String get composeAttachVideoGallery;

  /// No description provided for @composeAttachVideoGallerySub.
  ///
  /// In en, this message translates to:
  /// **'Choose a clip from your gallery'**
  String get composeAttachVideoGallerySub;

  /// No description provided for @composeBakingBody.
  ///
  /// In en, this message translates to:
  /// **'Just a moment. We\'ll start baking in the background and you can keep using the app.'**
  String get composeBakingBody;

  /// No description provided for @composeBakingTitle.
  ///
  /// In en, this message translates to:
  /// **'Preparing your reel…'**
  String get composeBakingTitle;

  /// No description provided for @composeCommentsOff.
  ///
  /// In en, this message translates to:
  /// **'Comments are off for this post'**
  String get composeCommentsOff;

  /// No description provided for @composeCommentsOn.
  ///
  /// In en, this message translates to:
  /// **'Who can comment follows your privacy setting'**
  String get composeCommentsOn;

  /// No description provided for @composeDraftsHint.
  ///
  /// In en, this message translates to:
  /// **'Tap to resume or discard'**
  String get composeDraftsHint;

  /// No description provided for @composeDraftsSaved.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 draft saved} other{{count} drafts saved}}'**
  String composeDraftsSaved(int count);

  /// No description provided for @composeEditOverlays.
  ///
  /// In en, this message translates to:
  /// **'Edit overlays'**
  String get composeEditOverlays;

  /// No description provided for @composeEditReelVideo.
  ///
  /// In en, this message translates to:
  /// **'Edit reel video'**
  String get composeEditReelVideo;

  /// No description provided for @composeEmoji.
  ///
  /// In en, this message translates to:
  /// **'Emoji'**
  String get composeEmoji;

  /// No description provided for @composeErrPost.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t post'**
  String get composeErrPost;

  /// No description provided for @composeErrPrepOverlays.
  ///
  /// In en, this message translates to:
  /// **'Preparing overlays for the video'**
  String get composeErrPrepOverlays;

  /// No description provided for @composeErrTrim.
  ///
  /// In en, this message translates to:
  /// **'Trimming reel'**
  String get composeErrTrim;

  /// No description provided for @composeErrUpload.
  ///
  /// In en, this message translates to:
  /// **'Uploading reel'**
  String get composeErrUpload;

  /// No description provided for @composeHintPost.
  ///
  /// In en, this message translates to:
  /// **'What do you want to share?'**
  String get composeHintPost;

  /// No description provided for @composeHintReel.
  ///
  /// In en, this message translates to:
  /// **'What\'s your reel about?'**
  String get composeHintReel;

  /// No description provided for @composeMarkSpoiler.
  ///
  /// In en, this message translates to:
  /// **'Mark as spoiler'**
  String get composeMarkSpoiler;

  /// No description provided for @composeOverlayCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 overlay} other{{count} overlays}}'**
  String composeOverlayCount(int count);

  /// No description provided for @composeReelAttached.
  ///
  /// In en, this message translates to:
  /// **'Reel video attached'**
  String get composeReelAttached;

  /// No description provided for @composeReelSubtitleTapEdit.
  ///
  /// In en, this message translates to:
  /// **'{summary} · Tap to edit'**
  String composeReelSubtitleTapEdit(String summary);

  /// No description provided for @composeReelTapEdit.
  ///
  /// In en, this message translates to:
  /// **'Tap to edit overlays + audio'**
  String get composeReelTapEdit;

  /// No description provided for @composeRemovePhoto.
  ///
  /// In en, this message translates to:
  /// **'Remove photo'**
  String get composeRemovePhoto;

  /// No description provided for @composeRemoveVideo.
  ///
  /// In en, this message translates to:
  /// **'Remove video'**
  String get composeRemoveVideo;

  /// No description provided for @composeSpoiler.
  ///
  /// In en, this message translates to:
  /// **'Spoiler'**
  String get composeSpoiler;

  /// No description provided for @composeTitlePost.
  ///
  /// In en, this message translates to:
  /// **'New Post'**
  String get composeTitlePost;

  /// No description provided for @composeTitleReel.
  ///
  /// In en, this message translates to:
  /// **'New Reel'**
  String get composeTitleReel;

  /// No description provided for @composeTooLongBody.
  ///
  /// In en, this message translates to:
  /// **'Reel captions are capped at 500 characters.'**
  String get composeTooLongBody;

  /// No description provided for @composeTooLongRubric.
  ///
  /// In en, this message translates to:
  /// **'TOO LONG'**
  String get composeTooLongRubric;

  /// No description provided for @composeTooLongTitle.
  ///
  /// In en, this message translates to:
  /// **'Caption is too long'**
  String get composeTooLongTitle;

  /// No description provided for @confessionsCardAnonymous.
  ///
  /// In en, this message translates to:
  /// **'ANONYMOUS'**
  String get confessionsCardAnonymous;

  /// No description provided for @confessionsCardBlurb.
  ///
  /// In en, this message translates to:
  /// **'Share something heavy, anonymously. Send hearts and hugs, can\'t see who posted. Staff remove anything that crosses the line.'**
  String get confessionsCardBlurb;

  /// No description provided for @confessionsCardEmpty.
  ///
  /// In en, this message translates to:
  /// **'No confessions yet. Be the first to share something.'**
  String get confessionsCardEmpty;

  /// No description provided for @confessionsCardErrorLabel.
  ///
  /// In en, this message translates to:
  /// **'Confessions'**
  String get confessionsCardErrorLabel;

  /// No description provided for @confessionsCardErrSend.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send your confession'**
  String get confessionsCardErrSend;

  /// No description provided for @confessionsCardHeart.
  ///
  /// In en, this message translates to:
  /// **'Heart'**
  String get confessionsCardHeart;

  /// No description provided for @confessionsCardHint.
  ///
  /// In en, this message translates to:
  /// **'Share something anonymously…'**
  String get confessionsCardHint;

  /// No description provided for @confessionsCardModerated.
  ///
  /// In en, this message translates to:
  /// **'MODERATED'**
  String get confessionsCardModerated;

  /// No description provided for @confessionsCardRemoveHug.
  ///
  /// In en, this message translates to:
  /// **'Remove hug'**
  String get confessionsCardRemoveHug;

  /// No description provided for @confessionsCardReportTarget.
  ///
  /// In en, this message translates to:
  /// **'this confession'**
  String get confessionsCardReportTarget;

  /// No description provided for @confessionsCardSendHug.
  ///
  /// In en, this message translates to:
  /// **'Send hug'**
  String get confessionsCardSendHug;

  /// No description provided for @confessionsCardShareA11y.
  ///
  /// In en, this message translates to:
  /// **'Share confession anonymously'**
  String get confessionsCardShareA11y;

  /// No description provided for @confessionsCardShareCta.
  ///
  /// In en, this message translates to:
  /// **'Share anonymously'**
  String get confessionsCardShareCta;

  /// No description provided for @confessionsCardSuccessBody.
  ///
  /// In en, this message translates to:
  /// **'It\'s posted now, with no name attached. Other users can react with hearts and hugs. Staff can remove anything that crosses the line.'**
  String get confessionsCardSuccessBody;

  /// No description provided for @confessionsCardSuccessRubric.
  ///
  /// In en, this message translates to:
  /// **'SHARED ANONYMOUSLY'**
  String get confessionsCardSuccessRubric;

  /// No description provided for @confessionsCardSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'Your confession is live on the board'**
  String get confessionsCardSuccessTitle;

  /// No description provided for @confessionsCardUnheart.
  ///
  /// In en, this message translates to:
  /// **'Unheart'**
  String get confessionsCardUnheart;

  /// No description provided for @connectionsErrLink.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t link account'**
  String get connectionsErrLink;

  /// No description provided for @connectionsErrUnlink.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t unlink account'**
  String get connectionsErrUnlink;

  /// No description provided for @connectionsInfo.
  ///
  /// In en, this message translates to:
  /// **'Linking a provider lets you sign in to this account with it. You won\'t be charged or notified anywhere.'**
  String get connectionsInfo;

  /// No description provided for @connectionsLastIdentityBlocked.
  ///
  /// In en, this message translates to:
  /// **'You\'d be locked out. Set an email + password first.'**
  String get connectionsLastIdentityBlocked;

  /// No description provided for @connectionsLinkedMsg.
  ///
  /// In en, this message translates to:
  /// **'Sign in with this provider now lands in this account. You can unlink it from the same screen anytime.'**
  String get connectionsLinkedMsg;

  /// No description provided for @connectionsLinkedRubric.
  ///
  /// In en, this message translates to:
  /// **'IDENTITY LINKED'**
  String get connectionsLinkedRubric;

  /// No description provided for @connectionsLinkedSub.
  ///
  /// In en, this message translates to:
  /// **'Linked. Sign in with {provider} lands in this account.'**
  String connectionsLinkedSub(String provider);

  /// No description provided for @connectionsLinkedTitle.
  ///
  /// In en, this message translates to:
  /// **'Linked'**
  String get connectionsLinkedTitle;

  /// No description provided for @connectionsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String connectionsLoadError(String error);

  /// No description provided for @connectionsNotLinked.
  ///
  /// In en, this message translates to:
  /// **'Not linked.'**
  String get connectionsNotLinked;

  /// No description provided for @connectionsSectionLabel.
  ///
  /// In en, this message translates to:
  /// **'SIGN-IN PROVIDERS'**
  String get connectionsSectionLabel;

  /// No description provided for @connectionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Connections'**
  String get connectionsTitle;

  /// No description provided for @connectionsUnlink.
  ///
  /// In en, this message translates to:
  /// **'Unlink'**
  String get connectionsUnlink;

  /// No description provided for @connectionsUnlinkBody.
  ///
  /// In en, this message translates to:
  /// **'Future {provider} sign-ins won\'t open this account. You can re-link any time.'**
  String connectionsUnlinkBody(String provider);

  /// No description provided for @connectionsUnlinkTitle.
  ///
  /// In en, this message translates to:
  /// **'Unlink {provider}?'**
  String connectionsUnlinkTitle(String provider);

  /// No description provided for @createEventAlsoPostToFeed.
  ///
  /// In en, this message translates to:
  /// **'Also post to feed'**
  String get createEventAlsoPostToFeed;

  /// No description provided for @createEventClearDate.
  ///
  /// In en, this message translates to:
  /// **'Clear date'**
  String get createEventClearDate;

  /// No description provided for @createEventCoverGradientA11y.
  ///
  /// In en, this message translates to:
  /// **'Cover gradient {n}'**
  String createEventCoverGradientA11y(int n);

  /// No description provided for @createEventDateTimeA11y.
  ///
  /// In en, this message translates to:
  /// **'Date and time: {value}. Double tap to change.'**
  String createEventDateTimeA11y(String value);

  /// No description provided for @createEventDescriptionHint.
  ///
  /// In en, this message translates to:
  /// **'Tell people what to expect.'**
  String get createEventDescriptionHint;

  /// No description provided for @createEventDestGroupSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Only members will see this event.'**
  String get createEventDestGroupSubtitle;

  /// No description provided for @createEventDestinationChangeA11y.
  ///
  /// In en, this message translates to:
  /// **'Change destination. Current: {title}'**
  String createEventDestinationChangeA11y(String title);

  /// No description provided for @createEventDestinationLockedA11y.
  ///
  /// In en, this message translates to:
  /// **'Event destination: {title}'**
  String createEventDestinationLockedA11y(String title);

  /// No description provided for @createEventDestPublic.
  ///
  /// In en, this message translates to:
  /// **'Public'**
  String get createEventDestPublic;

  /// No description provided for @createEventDestPublicSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Visible on the main events screen.'**
  String get createEventDestPublicSubtitle;

  /// No description provided for @createEventErrCreate.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t create event'**
  String get createEventErrCreate;

  /// No description provided for @createEventErrStartBody.
  ///
  /// In en, this message translates to:
  /// **'Events can\'t be scheduled in the past. Tap the date / time row to pick when this event starts.'**
  String get createEventErrStartBody;

  /// No description provided for @createEventErrStartRubric.
  ///
  /// In en, this message translates to:
  /// **'START TIME NEEDED'**
  String get createEventErrStartRubric;

  /// No description provided for @createEventErrStartTitle.
  ///
  /// In en, this message translates to:
  /// **'Pick a future start time'**
  String get createEventErrStartTitle;

  /// No description provided for @createEventErrTitleBody.
  ///
  /// In en, this message translates to:
  /// **'Give your event a short name. This is what shows up on the Events screen and on the feed card for public events.'**
  String get createEventErrTitleBody;

  /// No description provided for @createEventErrTitleRubric.
  ///
  /// In en, this message translates to:
  /// **'TITLE REQUIRED'**
  String get createEventErrTitleRubric;

  /// No description provided for @createEventErrTitleTitle.
  ///
  /// In en, this message translates to:
  /// **'Add a title'**
  String get createEventErrTitleTitle;

  /// No description provided for @createEventGroupsSectionLabel.
  ///
  /// In en, this message translates to:
  /// **'GROUPS WHERE YOU\'RE ADMIN OR MOD'**
  String get createEventGroupsSectionLabel;

  /// No description provided for @createEventGroupVisibilityNote.
  ///
  /// In en, this message translates to:
  /// **'Only members of {group} will see this event.'**
  String createEventGroupVisibilityNote(String group);

  /// No description provided for @createEventLabelDescription.
  ///
  /// In en, this message translates to:
  /// **'DESCRIPTION · OPTIONAL'**
  String get createEventLabelDescription;

  /// No description provided for @createEventLabelEnds.
  ///
  /// In en, this message translates to:
  /// **'ENDS · OPTIONAL'**
  String get createEventLabelEnds;

  /// No description provided for @createEventLabelLocation.
  ///
  /// In en, this message translates to:
  /// **'LOCATION · OPTIONAL'**
  String get createEventLabelLocation;

  /// No description provided for @createEventLabelStarts.
  ///
  /// In en, this message translates to:
  /// **'STARTS'**
  String get createEventLabelStarts;

  /// No description provided for @createEventLabelTitle.
  ///
  /// In en, this message translates to:
  /// **'TITLE'**
  String get createEventLabelTitle;

  /// No description provided for @createEventLabelWhereToPost.
  ///
  /// In en, this message translates to:
  /// **'WHERE TO POST'**
  String get createEventLabelWhereToPost;

  /// No description provided for @createEventLocationHint.
  ///
  /// In en, this message translates to:
  /// **'Address, venue, or \"online\"'**
  String get createEventLocationHint;

  /// No description provided for @createEventNoEndTime.
  ///
  /// In en, this message translates to:
  /// **'No end time'**
  String get createEventNoEndTime;

  /// No description provided for @createEventPickDate.
  ///
  /// In en, this message translates to:
  /// **'Pick a date'**
  String get createEventPickDate;

  /// No description provided for @createEventPickDateTimeA11y.
  ///
  /// In en, this message translates to:
  /// **'Pick a date and time'**
  String get createEventPickDateTimeA11y;

  /// No description provided for @createEventPickerTitle.
  ///
  /// In en, this message translates to:
  /// **'Where to post?'**
  String get createEventPickerTitle;

  /// No description provided for @createEventPublicVisibilityNote.
  ///
  /// In en, this message translates to:
  /// **'Public event. Visible on the main events screen.'**
  String get createEventPublicVisibilityNote;

  /// No description provided for @createEventSubmitting.
  ///
  /// In en, this message translates to:
  /// **'Creating…'**
  String get createEventSubmitting;

  /// No description provided for @createEventSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Pick a date, invite people, see who\'s in.'**
  String get createEventSubtitle;

  /// No description provided for @createEventTitle.
  ///
  /// In en, this message translates to:
  /// **'Create event'**
  String get createEventTitle;

  /// No description provided for @createEventTitleHint.
  ///
  /// In en, this message translates to:
  /// **'What\'s happening?'**
  String get createEventTitleHint;

  /// No description provided for @createEventTitlePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Your event title'**
  String get createEventTitlePlaceholder;

  /// No description provided for @createGroupCreate.
  ///
  /// In en, this message translates to:
  /// **'Create group'**
  String get createGroupCreate;

  /// No description provided for @createGroupCreating.
  ///
  /// In en, this message translates to:
  /// **'Creating…'**
  String get createGroupCreating;

  /// No description provided for @createGroupDescHint.
  ///
  /// In en, this message translates to:
  /// **'What is this group about? (optional)'**
  String get createGroupDescHint;

  /// No description provided for @createGroupDescLabel.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get createGroupDescLabel;

  /// No description provided for @createGroupEmojiLabel.
  ///
  /// In en, this message translates to:
  /// **'Emoji'**
  String get createGroupEmojiLabel;

  /// No description provided for @createGroupErr.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t create the group'**
  String get createGroupErr;

  /// No description provided for @createGroupGradient.
  ///
  /// In en, this message translates to:
  /// **'GRADIENT'**
  String get createGroupGradient;

  /// No description provided for @createGroupGradientOption.
  ///
  /// In en, this message translates to:
  /// **'Gradient option {n}'**
  String createGroupGradientOption(int n);

  /// No description provided for @createGroupNameHint.
  ///
  /// In en, this message translates to:
  /// **'Name it something memorable'**
  String get createGroupNameHint;

  /// No description provided for @createGroupNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Group name'**
  String get createGroupNameLabel;

  /// No description provided for @createGroupPhotoHintHas.
  ///
  /// In en, this message translates to:
  /// **'Replaces the gradient banner. Pinch / drag in the editor to fine-tune.'**
  String get createGroupPhotoHintHas;

  /// No description provided for @createGroupPhotoHintNone.
  ///
  /// In en, this message translates to:
  /// **'Skip and your gradient + emoji are used. Tap to upload + crop one.'**
  String get createGroupPhotoHintNone;

  /// No description provided for @createGroupPickPhoto.
  ///
  /// In en, this message translates to:
  /// **'Pick photo'**
  String get createGroupPickPhoto;

  /// No description provided for @createGroupPreviewFallback.
  ///
  /// In en, this message translates to:
  /// **'Your group'**
  String get createGroupPreviewFallback;

  /// No description provided for @createGroupPrivacy.
  ///
  /// In en, this message translates to:
  /// **'PRIVACY'**
  String get createGroupPrivacy;

  /// No description provided for @createGroupPrivacyA11y.
  ///
  /// In en, this message translates to:
  /// **'{title}. {blurb}'**
  String createGroupPrivacyA11y(String title, String blurb);

  /// No description provided for @createGroupPrivate.
  ///
  /// In en, this message translates to:
  /// **'Private'**
  String get createGroupPrivate;

  /// No description provided for @createGroupPrivateBlurb.
  ///
  /// In en, this message translates to:
  /// **'Invite-only, hidden from search.'**
  String get createGroupPrivateBlurb;

  /// No description provided for @createGroupPublic.
  ///
  /// In en, this message translates to:
  /// **'Public'**
  String get createGroupPublic;

  /// No description provided for @createGroupPublicBlurb.
  ///
  /// In en, this message translates to:
  /// **'Anyone can find and join. Subject to public rules.'**
  String get createGroupPublicBlurb;

  /// No description provided for @createGroupRemovePhoto.
  ///
  /// In en, this message translates to:
  /// **'Remove photo'**
  String get createGroupRemovePhoto;

  /// No description provided for @createGroupRemoveTag.
  ///
  /// In en, this message translates to:
  /// **'Remove tag {tag}'**
  String createGroupRemoveTag(String tag);

  /// No description provided for @createGroupReplacePhoto.
  ///
  /// In en, this message translates to:
  /// **'Replace photo'**
  String get createGroupReplacePhoto;

  /// No description provided for @createGroupTagFormatError.
  ///
  /// In en, this message translates to:
  /// **'Tags use lowercase letters, numbers, and dashes (2-24 chars).'**
  String get createGroupTagFormatError;

  /// No description provided for @createGroupTagInputHint.
  ///
  /// In en, this message translates to:
  /// **'Add a tag and press return'**
  String get createGroupTagInputHint;

  /// No description provided for @createGroupTagLimit.
  ///
  /// In en, this message translates to:
  /// **'Up to 8 tags per group.'**
  String get createGroupTagLimit;

  /// No description provided for @createGroupTags.
  ///
  /// In en, this message translates to:
  /// **'TAGS'**
  String get createGroupTags;

  /// No description provided for @createGroupTagsHelp.
  ///
  /// In en, this message translates to:
  /// **'Help people find this group. Lowercase, no spaces, up to 8.'**
  String get createGroupTagsHelp;

  /// No description provided for @createGroupTitle.
  ///
  /// In en, this message translates to:
  /// **'New Group'**
  String get createGroupTitle;

  /// No description provided for @createGroupTosA11y.
  ///
  /// In en, this message translates to:
  /// **'I have read and agree to the Group Terms of Service'**
  String get createGroupTosA11y;

  /// No description provided for @createGroupTosLink.
  ///
  /// In en, this message translates to:
  /// **'Group Terms of Service'**
  String get createGroupTosLink;

  /// No description provided for @createGroupTosPrefix.
  ///
  /// In en, this message translates to:
  /// **'I have read and agree to the '**
  String get createGroupTosPrefix;

  /// No description provided for @createGroupUploadPhoto.
  ///
  /// In en, this message translates to:
  /// **'Upload photo (optional)'**
  String get createGroupUploadPhoto;

  /// No description provided for @createLobbyAudienceChangeA11y.
  ///
  /// In en, this message translates to:
  /// **'Change lobby audience. Current: {title}'**
  String createLobbyAudienceChangeA11y(String title);

  /// No description provided for @createLobbyAudienceLockedA11y.
  ///
  /// In en, this message translates to:
  /// **'Lobby audience: {title}'**
  String createLobbyAudienceLockedA11y(String title);

  /// No description provided for @createLobbyDestPublic.
  ///
  /// In en, this message translates to:
  /// **'Public · everyone'**
  String get createLobbyDestPublic;

  /// No description provided for @createLobbyDestPublicSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Open lobby. No notifications.'**
  String get createLobbyDestPublicSubtitle;

  /// No description provided for @createLobbyErrStart.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t start lobby'**
  String get createLobbyErrStart;

  /// No description provided for @createLobbyErrTitleBody.
  ///
  /// In en, this message translates to:
  /// **'Give your lobby a short name. This is what shows up on the Lobbies screen and in the push notification.'**
  String get createLobbyErrTitleBody;

  /// No description provided for @createLobbyErrTitleRubric.
  ///
  /// In en, this message translates to:
  /// **'TITLE REQUIRED'**
  String get createLobbyErrTitleRubric;

  /// No description provided for @createLobbyErrTitleTitle.
  ///
  /// In en, this message translates to:
  /// **'Add a title'**
  String get createLobbyErrTitleTitle;

  /// No description provided for @createLobbyGroupNote.
  ///
  /// In en, this message translates to:
  /// **'Members of {group} get a notification when you go live.'**
  String createLobbyGroupNote(String group);

  /// No description provided for @createLobbyGroupsSection.
  ///
  /// In en, this message translates to:
  /// **'YOUR GROUPS'**
  String get createLobbyGroupsSection;

  /// No description provided for @createLobbyGroupSubtitle.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 member · they\'ll get a ping} other{{count} members · they\'ll get a ping}}'**
  String createLobbyGroupSubtitle(int count);

  /// No description provided for @createLobbyLabelMoodEmoji.
  ///
  /// In en, this message translates to:
  /// **'MOOD EMOJI · OPTIONAL'**
  String get createLobbyLabelMoodEmoji;

  /// No description provided for @createLobbyLabelTitle.
  ///
  /// In en, this message translates to:
  /// **'TITLE'**
  String get createLobbyLabelTitle;

  /// No description provided for @createLobbyLabelVibe.
  ///
  /// In en, this message translates to:
  /// **'VIBE'**
  String get createLobbyLabelVibe;

  /// No description provided for @createLobbyLabelWhere.
  ///
  /// In en, this message translates to:
  /// **'WHERE'**
  String get createLobbyLabelWhere;

  /// No description provided for @createLobbyMoodEmojiHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. 🌈  ☕  🎵'**
  String get createLobbyMoodEmojiHint;

  /// No description provided for @createLobbyPickerTitle.
  ///
  /// In en, this message translates to:
  /// **'Where to?'**
  String get createLobbyPickerTitle;

  /// No description provided for @createLobbyPublicNote.
  ///
  /// In en, this message translates to:
  /// **'Public lobbies don\'t notify anyone. They only show up on the Lobbies screen.'**
  String get createLobbyPublicNote;

  /// No description provided for @createLobbyStart.
  ///
  /// In en, this message translates to:
  /// **'Start lobby'**
  String get createLobbyStart;

  /// No description provided for @createLobbyStartA11y.
  ///
  /// In en, this message translates to:
  /// **'Start lobby'**
  String get createLobbyStartA11y;

  /// No description provided for @createLobbyStarting.
  ///
  /// In en, this message translates to:
  /// **'Starting…'**
  String get createLobbyStarting;

  /// No description provided for @createLobbySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Live audio room. You\'ll be the host.'**
  String get createLobbySubtitle;

  /// No description provided for @createLobbyTitle.
  ///
  /// In en, this message translates to:
  /// **'Start a lobby'**
  String get createLobbyTitle;

  /// No description provided for @createLobbyTitleHint.
  ///
  /// In en, this message translates to:
  /// **'What are you talking about?'**
  String get createLobbyTitleHint;

  /// No description provided for @crisisAlertCall.
  ///
  /// In en, this message translates to:
  /// **'Call {phone}'**
  String crisisAlertCall(String phone);

  /// No description provided for @crisisAlertHeroBody.
  ///
  /// In en, this message translates to:
  /// **'You don’t have to go through anything alone. The folks below are warm, queer-friendly, and trained for this. reach out any time, day or night.'**
  String get crisisAlertHeroBody;

  /// No description provided for @crisisAlertHeroTitle.
  ///
  /// In en, this message translates to:
  /// **'We’re thinking of you 💜'**
  String get crisisAlertHeroTitle;

  /// No description provided for @crisisAlertImOk.
  ///
  /// In en, this message translates to:
  /// **'I\'m OK for now'**
  String get crisisAlertImOk;

  /// No description provided for @crisisAlertOpenChat.
  ///
  /// In en, this message translates to:
  /// **'Open chat'**
  String get crisisAlertOpenChat;

  /// No description provided for @crisisAlertResourcesError.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load resources right now. Pull to refresh, or check back in a moment.'**
  String get crisisAlertResourcesError;

  /// No description provided for @crisisAlertText.
  ///
  /// In en, this message translates to:
  /// **'Text {sms}'**
  String crisisAlertText(String sms);

  /// No description provided for @crisisAlertTitle.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get crisisAlertTitle;

  /// No description provided for @customColorPickerHexLabel.
  ///
  /// In en, this message translates to:
  /// **'HEX'**
  String get customColorPickerHexLabel;

  /// No description provided for @customColorPickerRgbLabel.
  ///
  /// In en, this message translates to:
  /// **'RGB'**
  String get customColorPickerRgbLabel;

  /// No description provided for @customColorPickerTitle.
  ///
  /// In en, this message translates to:
  /// **'Custom color'**
  String get customColorPickerTitle;

  /// No description provided for @customColorPickerUse.
  ///
  /// In en, this message translates to:
  /// **'Use this color'**
  String get customColorPickerUse;

  /// No description provided for @dateCheckinActive.
  ///
  /// In en, this message translates to:
  /// **'Check-in active'**
  String get dateCheckinActive;

  /// No description provided for @dateCheckinAlerting.
  ///
  /// In en, this message translates to:
  /// **'Your Trusted Circle is being alerted.'**
  String get dateCheckinAlerting;

  /// No description provided for @dateCheckinDeadline.
  ///
  /// In en, this message translates to:
  /// **'Deadline'**
  String get dateCheckinDeadline;

  /// No description provided for @dateCheckinDeadlinePassed.
  ///
  /// In en, this message translates to:
  /// **'Deadline passed'**
  String get dateCheckinDeadlinePassed;

  /// No description provided for @dateCheckinDetailMeeting.
  ///
  /// In en, this message translates to:
  /// **'Meeting with'**
  String get dateCheckinDetailMeeting;

  /// No description provided for @dateCheckinDetailNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get dateCheckinDetailNotes;

  /// No description provided for @dateCheckinDetailWhere.
  ///
  /// In en, this message translates to:
  /// **'Where'**
  String get dateCheckinDetailWhere;

  /// No description provided for @dateCheckinDurationHint.
  ///
  /// In en, this message translates to:
  /// **'15 min - 12 h. You can extend later if your plans run long.'**
  String get dateCheckinDurationHint;

  /// No description provided for @dateCheckinErrExtend.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t extend check-in'**
  String get dateCheckinErrExtend;

  /// No description provided for @dateCheckinErrMarkSafe.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t mark safe'**
  String get dateCheckinErrMarkSafe;

  /// No description provided for @dateCheckinErrStart.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t start check-in'**
  String get dateCheckinErrStart;

  /// No description provided for @dateCheckinExtended.
  ///
  /// In en, this message translates to:
  /// **'Extended {count}×'**
  String dateCheckinExtended(int count);

  /// No description provided for @dateCheckinHowBody.
  ///
  /// In en, this message translates to:
  /// **'Set a deadline before going somewhere new. If you don\'t tap \"I\'m safe\" by then, your Trusted Circle gets pinged with a \"check on Zoey, meeting Sam at Beans Cafe\" alert. You can extend any time, and only your Circle sees it.'**
  String get dateCheckinHowBody;

  /// No description provided for @dateCheckinHowTitle.
  ///
  /// In en, this message translates to:
  /// **'How it works'**
  String get dateCheckinHowTitle;

  /// No description provided for @dateCheckinImSafe.
  ///
  /// In en, this message translates to:
  /// **'I\'m safe'**
  String get dateCheckinImSafe;

  /// No description provided for @dateCheckinLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String dateCheckinLoadError(String error);

  /// No description provided for @dateCheckinMeetingHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Sam, or @samhandle to tag a Luney friend'**
  String get dateCheckinMeetingHint;

  /// No description provided for @dateCheckinMeetingLabel.
  ///
  /// In en, this message translates to:
  /// **'Meeting with (optional)'**
  String get dateCheckinMeetingLabel;

  /// No description provided for @dateCheckinNeedCircleBody.
  ///
  /// In en, this message translates to:
  /// **'A check-in needs at least one trusted contact, someone gets pinged if you don\'t mark yourself safe before the deadline. Without anyone in your Circle, a check-in is just a personal timer with no one watching.'**
  String get dateCheckinNeedCircleBody;

  /// No description provided for @dateCheckinNeedCircleTitle.
  ///
  /// In en, this message translates to:
  /// **'Set up your Trusted Circle first'**
  String get dateCheckinNeedCircleTitle;

  /// No description provided for @dateCheckinNoDetails.
  ///
  /// In en, this message translates to:
  /// **'No details set. The alert (if it fires) will just say \"missed their check-in deadline.\"'**
  String get dateCheckinNoDetails;

  /// No description provided for @dateCheckinNotesHint.
  ///
  /// In en, this message translates to:
  /// **'Anything that\'d help if I don\'t check back in'**
  String get dateCheckinNotesHint;

  /// No description provided for @dateCheckinNotesLabel.
  ///
  /// In en, this message translates to:
  /// **'Private notes (optional, only your Circle sees)'**
  String get dateCheckinNotesLabel;

  /// No description provided for @dateCheckinOpenCircle.
  ///
  /// In en, this message translates to:
  /// **'Open Trusted Circle'**
  String get dateCheckinOpenCircle;

  /// No description provided for @dateCheckinOpenCircleA11y.
  ///
  /// In en, this message translates to:
  /// **'Open Trusted Circle'**
  String get dateCheckinOpenCircleA11y;

  /// No description provided for @dateCheckinPlus15.
  ///
  /// In en, this message translates to:
  /// **'+15 min'**
  String get dateCheckinPlus15;

  /// No description provided for @dateCheckinPlus1h.
  ///
  /// In en, this message translates to:
  /// **'+1 hr'**
  String get dateCheckinPlus1h;

  /// No description provided for @dateCheckinPlus4h.
  ///
  /// In en, this message translates to:
  /// **'+4 hr'**
  String get dateCheckinPlus4h;

  /// No description provided for @dateCheckinSafeFootnote.
  ///
  /// In en, this message translates to:
  /// **'Marking yourself safe closes the check-in. No one in your Circle is notified.'**
  String get dateCheckinSafeFootnote;

  /// No description provided for @dateCheckinSafeFootnoteOverdue.
  ///
  /// In en, this message translates to:
  /// **'Marking yourself safe now still closes the check-in so the next tick won\'t alert again.'**
  String get dateCheckinSafeFootnoteOverdue;

  /// No description provided for @dateCheckinStart.
  ///
  /// In en, this message translates to:
  /// **'Start check-in'**
  String get dateCheckinStart;

  /// No description provided for @dateCheckinStartFootnote.
  ///
  /// In en, this message translates to:
  /// **'Only your Trusted Circle gets notified, and only if the deadline passes without a safe tap. They never see this while it\'s active.'**
  String get dateCheckinStartFootnote;

  /// No description provided for @dateCheckinTapSafe.
  ///
  /// In en, this message translates to:
  /// **'Tap \"I\'m safe\" before the deadline.'**
  String get dateCheckinTapSafe;

  /// No description provided for @dateCheckinTitle.
  ///
  /// In en, this message translates to:
  /// **'Date Check-in'**
  String get dateCheckinTitle;

  /// No description provided for @dateCheckinWhereHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Beans Cafe'**
  String get dateCheckinWhereHint;

  /// No description provided for @dateCheckinWhereLabel.
  ///
  /// In en, this message translates to:
  /// **'Where (optional)'**
  String get dateCheckinWhereLabel;

  /// No description provided for @dbErrorAccountSuspended.
  ///
  /// In en, this message translates to:
  /// **'Your account is currently suspended. Tap Settings → Support to appeal.'**
  String get dbErrorAccountSuspended;

  /// No description provided for @dbErrorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong.'**
  String get dbErrorGeneric;

  /// No description provided for @dbErrorNameNotAllowed.
  ///
  /// In en, this message translates to:
  /// **'That name isn\'t allowed.'**
  String get dbErrorNameNotAllowed;

  /// No description provided for @dbErrorNameNotAllowedReason.
  ///
  /// In en, this message translates to:
  /// **'That name isn\'t allowed: {reason}'**
  String dbErrorNameNotAllowedReason(String reason);

  /// No description provided for @dmBubbleReplying.
  ///
  /// In en, this message translates to:
  /// **'Replying'**
  String get dmBubbleReplying;

  /// No description provided for @dmBubbleSomeone.
  ///
  /// In en, this message translates to:
  /// **'Someone'**
  String get dmBubbleSomeone;

  /// No description provided for @dmBubbleVerbEvent.
  ///
  /// In en, this message translates to:
  /// **'event'**
  String get dmBubbleVerbEvent;

  /// No description provided for @dmBubbleVerbScreenRecording.
  ///
  /// In en, this message translates to:
  /// **'started screen recording'**
  String get dmBubbleVerbScreenRecording;

  /// No description provided for @dmBubbleVerbScreenshot.
  ///
  /// In en, this message translates to:
  /// **'took a screenshot'**
  String get dmBubbleVerbScreenshot;

  /// No description provided for @dmBubbleYou.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get dmBubbleYou;

  /// No description provided for @dmChatAttachPhoto.
  ///
  /// In en, this message translates to:
  /// **'Attach photo'**
  String get dmChatAttachPhoto;

  /// No description provided for @dmChatBlockedBody.
  ///
  /// In en, this message translates to:
  /// **'One of you blocked the other. You can still scroll the history above, but new messages won\'t send.'**
  String get dmChatBlockedBody;

  /// No description provided for @dmChatBlockedRubric.
  ///
  /// In en, this message translates to:
  /// **'MESSAGING BLOCKED'**
  String get dmChatBlockedRubric;

  /// No description provided for @dmChatBlockedTitle.
  ///
  /// In en, this message translates to:
  /// **'You can no longer message this user'**
  String get dmChatBlockedTitle;

  /// No description provided for @dmChatCloseSearch.
  ///
  /// In en, this message translates to:
  /// **'Close search'**
  String get dmChatCloseSearch;

  /// No description provided for @dmChatComposeHint.
  ///
  /// In en, this message translates to:
  /// **'Message…'**
  String get dmChatComposeHint;

  /// No description provided for @dmChatDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'This removes it for both of you. Can\'t be undone.'**
  String get dmChatDeleteBody;

  /// No description provided for @dmChatDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this message?'**
  String get dmChatDeleteTitle;

  /// No description provided for @dmChatEditHint.
  ///
  /// In en, this message translates to:
  /// **'Edit message…'**
  String get dmChatEditHint;

  /// No description provided for @dmChatEditingBanner.
  ///
  /// In en, this message translates to:
  /// **'Editing message'**
  String get dmChatEditingBanner;

  /// No description provided for @dmChatEmoji.
  ///
  /// In en, this message translates to:
  /// **'Emoji'**
  String get dmChatEmoji;

  /// No description provided for @dmChatEmpty.
  ///
  /// In en, this message translates to:
  /// **'No messages yet. Say hi 👋'**
  String get dmChatEmpty;

  /// No description provided for @dmChatErrDelete.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete message'**
  String get dmChatErrDelete;

  /// No description provided for @dmChatErrSaveEdit.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save edit'**
  String get dmChatErrSaveEdit;

  /// No description provided for @dmChatErrSend.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send: your message is back in the box, tap send to try again'**
  String get dmChatErrSend;

  /// No description provided for @dmChatErrSendGif.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send the GIF'**
  String get dmChatErrSendGif;

  /// No description provided for @dmChatGone.
  ///
  /// In en, this message translates to:
  /// **'This conversation is no longer available.'**
  String get dmChatGone;

  /// No description provided for @dmChatKeyboard.
  ///
  /// In en, this message translates to:
  /// **'Keyboard'**
  String get dmChatKeyboard;

  /// No description provided for @dmChatLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load messages: {error}'**
  String dmChatLoadError(String error);

  /// No description provided for @dmChatMenuCopyText.
  ///
  /// In en, this message translates to:
  /// **'Copy text'**
  String get dmChatMenuCopyText;

  /// No description provided for @dmChatMenuEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get dmChatMenuEdit;

  /// No description provided for @dmChatMenuFavGif.
  ///
  /// In en, this message translates to:
  /// **'Favourite GIF'**
  String get dmChatMenuFavGif;

  /// No description provided for @dmChatMenuReply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get dmChatMenuReply;

  /// No description provided for @dmChatMenuUnfavGif.
  ///
  /// In en, this message translates to:
  /// **'Remove from favourites'**
  String get dmChatMenuUnfavGif;

  /// No description provided for @dmChatNoSearchMatch.
  ///
  /// In en, this message translates to:
  /// **'No messages match \"{query}\".'**
  String dmChatNoSearchMatch(String query);

  /// No description provided for @dmChatReplying.
  ///
  /// In en, this message translates to:
  /// **'Replying'**
  String get dmChatReplying;

  /// No description provided for @dmChatReplyPhoto.
  ///
  /// In en, this message translates to:
  /// **'📎 photo'**
  String get dmChatReplyPhoto;

  /// No description provided for @dmChatSaveEditA11y.
  ///
  /// In en, this message translates to:
  /// **'Save edit'**
  String get dmChatSaveEditA11y;

  /// No description provided for @dmChatSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search · from:me · has:image · before:2026-04-01'**
  String get dmChatSearchHint;

  /// No description provided for @dmChatSearchMessages.
  ///
  /// In en, this message translates to:
  /// **'Search messages'**
  String get dmChatSearchMessages;

  /// No description provided for @dmChatSeenAt.
  ///
  /// In en, this message translates to:
  /// **'Seen · {time}'**
  String dmChatSeenAt(String time);

  /// No description provided for @dmChatSendA11y.
  ///
  /// In en, this message translates to:
  /// **'Send message'**
  String get dmChatSendA11y;

  /// No description provided for @dmChatSuspendUser.
  ///
  /// In en, this message translates to:
  /// **'Suspend this user'**
  String get dmChatSuspendUser;

  /// No description provided for @dmChatThisUser.
  ///
  /// In en, this message translates to:
  /// **'this user'**
  String get dmChatThisUser;

  /// No description provided for @dmChatTitleFallback.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get dmChatTitleFallback;

  /// No description provided for @dmChatWarnUser.
  ///
  /// In en, this message translates to:
  /// **'Warn this user'**
  String get dmChatWarnUser;

  /// No description provided for @dmsAttachGif.
  ///
  /// In en, this message translates to:
  /// **'🎞️ GIF'**
  String get dmsAttachGif;

  /// No description provided for @dmsAttachment.
  ///
  /// In en, this message translates to:
  /// **'📎 Attachment'**
  String get dmsAttachment;

  /// No description provided for @dmsAttachPhoto.
  ///
  /// In en, this message translates to:
  /// **'📷 Photo'**
  String get dmsAttachPhoto;

  /// No description provided for @dmsClearSearch.
  ///
  /// In en, this message translates to:
  /// **'Clear search'**
  String get dmsClearSearch;

  /// No description provided for @dmsDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'This removes the whole thread for both of you, every message and reaction. Can\'t be undone.'**
  String get dmsDeleteBody;

  /// No description provided for @dmsDeleteConversation.
  ///
  /// In en, this message translates to:
  /// **'Delete conversation'**
  String get dmsDeleteConversation;

  /// No description provided for @dmsDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this conversation?'**
  String get dmsDeleteTitle;

  /// No description provided for @dmsEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No conversations yet.'**
  String get dmsEmptyTitle;

  /// No description provided for @dmsErrDelete.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete thread'**
  String get dmsErrDelete;

  /// No description provided for @dmsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load conversations: {error}'**
  String dmsLoadError(String error);

  /// No description provided for @dmsNewMessageButton.
  ///
  /// In en, this message translates to:
  /// **'+ New message'**
  String get dmsNewMessageButton;

  /// No description provided for @dmsNewMessageSemantic.
  ///
  /// In en, this message translates to:
  /// **'New message'**
  String get dmsNewMessageSemantic;

  /// No description provided for @dmsNewShort.
  ///
  /// In en, this message translates to:
  /// **'+ New'**
  String get dmsNewShort;

  /// No description provided for @dmsNoMatch.
  ///
  /// In en, this message translates to:
  /// **'No conversations match \"{query}\".'**
  String dmsNoMatch(String query);

  /// No description provided for @dmsPreviewNoMessages.
  ///
  /// In en, this message translates to:
  /// **'No messages yet. Say hi 👋'**
  String get dmsPreviewNoMessages;

  /// No description provided for @dmsPreviewScreenRecMine.
  ///
  /// In en, this message translates to:
  /// **'🎥 You started screen recording'**
  String get dmsPreviewScreenRecMine;

  /// No description provided for @dmsPreviewScreenRecOther.
  ///
  /// In en, this message translates to:
  /// **'🎥 {name} started screen recording'**
  String dmsPreviewScreenRecOther(String name);

  /// No description provided for @dmsPreviewScreenshotMine.
  ///
  /// In en, this message translates to:
  /// **'📸 You took a screenshot'**
  String get dmsPreviewScreenshotMine;

  /// No description provided for @dmsPreviewScreenshotOther.
  ///
  /// In en, this message translates to:
  /// **'📸 {name} took a screenshot'**
  String dmsPreviewScreenshotOther(String name);

  /// No description provided for @dmsPreviewYouPrefix.
  ///
  /// In en, this message translates to:
  /// **'You: '**
  String get dmsPreviewYouPrefix;

  /// No description provided for @dmsSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search conversations'**
  String get dmsSearchHint;

  /// No description provided for @dmsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Private conversations'**
  String get dmsSubtitle;

  /// No description provided for @dmsTitle.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get dmsTitle;

  /// No description provided for @draftsListConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'This permanently removes every saved reel draft on this device. Anything you haven\'t published yet is gone.'**
  String get draftsListConfirmBody;

  /// No description provided for @draftsListConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Discard all drafts?'**
  String get draftsListConfirmTitle;

  /// No description provided for @draftsListDiscardAll.
  ///
  /// In en, this message translates to:
  /// **'Discard all'**
  String get draftsListDiscardAll;

  /// No description provided for @draftsListDiscardTooltip.
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get draftsListDiscardTooltip;

  /// No description provided for @draftsListEmpty.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any drafts saved.'**
  String get draftsListEmpty;

  /// No description provided for @draftsListKeep.
  ///
  /// In en, this message translates to:
  /// **'Keep'**
  String get draftsListKeep;

  /// No description provided for @draftsListRubric.
  ///
  /// In en, this message translates to:
  /// **'DRAFTS'**
  String get draftsListRubric;

  /// No description provided for @draftsListTitle.
  ///
  /// In en, this message translates to:
  /// **'Drafts'**
  String get draftsListTitle;

  /// No description provided for @draftsListUntitled.
  ///
  /// In en, this message translates to:
  /// **'Untitled draft'**
  String get draftsListUntitled;

  /// No description provided for @dutyBannerMessage.
  ///
  /// In en, this message translates to:
  /// **'On duty as Luney moderation. Long-press content for admin actions.'**
  String get dutyBannerMessage;

  /// No description provided for @dutyBannerTapToStandDown.
  ///
  /// In en, this message translates to:
  /// **'TAP TO STAND DOWN'**
  String get dutyBannerTapToStandDown;

  /// No description provided for @editProfileAddBanner.
  ///
  /// In en, this message translates to:
  /// **'Add a banner'**
  String get editProfileAddBanner;

  /// No description provided for @editProfileAvatarUploadErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t upload avatar'**
  String get editProfileAvatarUploadErrorOp;

  /// No description provided for @editProfileBannerUploadErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t upload banner'**
  String get editProfileBannerUploadErrorOp;

  /// No description provided for @editProfileBioHint.
  ///
  /// In en, this message translates to:
  /// **'A sentence or two.'**
  String get editProfileBioHint;

  /// No description provided for @editProfileBioLabel.
  ///
  /// In en, this message translates to:
  /// **'Bio'**
  String get editProfileBioLabel;

  /// No description provided for @editProfileChangeAvatar.
  ///
  /// In en, this message translates to:
  /// **'Change avatar'**
  String get editProfileChangeAvatar;

  /// No description provided for @editProfileCropAvatar.
  ///
  /// In en, this message translates to:
  /// **'Crop avatar'**
  String get editProfileCropAvatar;

  /// No description provided for @editProfileCropBanner.
  ///
  /// In en, this message translates to:
  /// **'Crop banner'**
  String get editProfileCropBanner;

  /// No description provided for @editProfileCustomPronounsHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. xe/xem'**
  String get editProfileCustomPronounsHint;

  /// No description provided for @editProfileCustomPronounsLabel.
  ///
  /// In en, this message translates to:
  /// **'Custom pronouns'**
  String get editProfileCustomPronounsLabel;

  /// No description provided for @editProfileDisplayNameHint.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get editProfileDisplayNameHint;

  /// No description provided for @editProfileDisplayNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Display name'**
  String get editProfileDisplayNameLabel;

  /// No description provided for @editProfileEditBanner.
  ///
  /// In en, this message translates to:
  /// **'Edit banner'**
  String get editProfileEditBanner;

  /// No description provided for @editProfileHandleHint.
  ///
  /// In en, this message translates to:
  /// **'letters, numbers, underscores · 3-24 chars'**
  String get editProfileHandleHint;

  /// No description provided for @editProfileHandleInvalidBody.
  ///
  /// In en, this message translates to:
  /// **'Use letters, numbers, and underscores only. Your handle is what others type after @ to mention you.'**
  String get editProfileHandleInvalidBody;

  /// No description provided for @editProfileHandleInvalidRubric.
  ///
  /// In en, this message translates to:
  /// **'HANDLE INVALID'**
  String get editProfileHandleInvalidRubric;

  /// No description provided for @editProfileHandleInvalidTitle.
  ///
  /// In en, this message translates to:
  /// **'Handle must be 3 to 24 chars'**
  String get editProfileHandleInvalidTitle;

  /// No description provided for @editProfileHandleLabel.
  ///
  /// In en, this message translates to:
  /// **'Handle'**
  String get editProfileHandleLabel;

  /// No description provided for @editProfileHandleTakenBody.
  ///
  /// In en, this message translates to:
  /// **'Another account is already using @{handle}. Pick a different one.'**
  String editProfileHandleTakenBody(String handle);

  /// No description provided for @editProfileHandleTakenRubric.
  ///
  /// In en, this message translates to:
  /// **'HANDLE TAKEN'**
  String get editProfileHandleTakenRubric;

  /// No description provided for @editProfileHandleTakenTitle.
  ///
  /// In en, this message translates to:
  /// **'That handle is taken'**
  String get editProfileHandleTakenTitle;

  /// No description provided for @editProfileNameRequiredBody.
  ///
  /// In en, this message translates to:
  /// **'Your display name is what shows up on your profile, in chat, and in mentions.'**
  String get editProfileNameRequiredBody;

  /// No description provided for @editProfileNameRequiredRubric.
  ///
  /// In en, this message translates to:
  /// **'DISPLAY NAME REQUIRED'**
  String get editProfileNameRequiredRubric;

  /// No description provided for @editProfileNameRequiredTitle.
  ///
  /// In en, this message translates to:
  /// **'Add a display name'**
  String get editProfileNameRequiredTitle;

  /// No description provided for @editProfileNameStyle.
  ///
  /// In en, this message translates to:
  /// **'Name style'**
  String get editProfileNameStyle;

  /// No description provided for @editProfileNameStyleErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save name style'**
  String get editProfileNameStyleErrorOp;

  /// No description provided for @editProfileNameStyleHint.
  ///
  /// In en, this message translates to:
  /// **'Tap to pick a font, effect, and colour'**
  String get editProfileNameStyleHint;

  /// No description provided for @editProfileNameStyleVipOnly.
  ///
  /// In en, this message translates to:
  /// **'VIP only'**
  String get editProfileNameStyleVipOnly;

  /// No description provided for @editProfileReplaceBanner.
  ///
  /// In en, this message translates to:
  /// **'Replace banner'**
  String get editProfileReplaceBanner;

  /// No description provided for @editProfileSaveErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save profile'**
  String get editProfileSaveErrorOp;

  /// No description provided for @editProfileSectionIdentity.
  ///
  /// In en, this message translates to:
  /// **'IDENTITY'**
  String get editProfileSectionIdentity;

  /// No description provided for @editProfileSectionInterests.
  ///
  /// In en, this message translates to:
  /// **'INTERESTS'**
  String get editProfileSectionInterests;

  /// No description provided for @editProfileSectionPronouns.
  ///
  /// In en, this message translates to:
  /// **'PRONOUNS'**
  String get editProfileSectionPronouns;

  /// No description provided for @editProfileTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfileTitle;

  /// No description provided for @editProfileUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Profile unavailable'**
  String get editProfileUnavailable;

  /// No description provided for @editProfileVipUpsellBody.
  ///
  /// In en, this message translates to:
  /// **'Pick a font, an effect, and a colour for your name. Available on VIP, alongside per-group nicknames + avatars and unlimited GIF favourites.'**
  String get editProfileVipUpsellBody;

  /// No description provided for @editProfileVipUpsellTitle.
  ///
  /// In en, this message translates to:
  /// **'Display name styling is a VIP perk'**
  String get editProfileVipUpsellTitle;

  /// No description provided for @emojiPickerCrossGroupEmpty.
  ///
  /// In en, this message translates to:
  /// **'Join more groups to use their custom emojis here.'**
  String get emojiPickerCrossGroupEmpty;

  /// No description provided for @emojiPickerFavorites.
  ///
  /// In en, this message translates to:
  /// **'Favourites'**
  String get emojiPickerFavorites;

  /// No description provided for @emojiPickerFavsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load favourites: {error}'**
  String emojiPickerFavsLoadError(String error);

  /// No description provided for @emojiPickerGifsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load GIFs: {error}'**
  String emojiPickerGifsLoadError(String error);

  /// No description provided for @emojiPickerGifsNotSetupBody.
  ///
  /// In en, this message translates to:
  /// **'Add KLIPY_API_KEY to .env to enable the GIF picker.'**
  String get emojiPickerGifsNotSetupBody;

  /// No description provided for @emojiPickerGifsNotSetupTitle.
  ///
  /// In en, this message translates to:
  /// **'GIFs not set up yet'**
  String get emojiPickerGifsNotSetupTitle;

  /// No description provided for @emojiPickerGroupEmpty.
  ///
  /// In en, this message translates to:
  /// **'No custom emojis yet. Admins can upload up to 50 in Group Settings.'**
  String get emojiPickerGroupEmpty;

  /// No description provided for @emojiPickerGroupFallback.
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get emojiPickerGroupFallback;

  /// No description provided for @emojiPickerHiddenFavs.
  ///
  /// In en, this message translates to:
  /// **'{count} more saved. Get VIP to see them all.'**
  String emojiPickerHiddenFavs(int count);

  /// No description provided for @emojiPickerLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load emojis: {error}'**
  String emojiPickerLoadError(String error);

  /// No description provided for @emojiPickerNoFavsBody.
  ///
  /// In en, this message translates to:
  /// **'Tap the heart on any GIF to save it here for later.'**
  String get emojiPickerNoFavsBody;

  /// No description provided for @emojiPickerNoFavsTitle.
  ///
  /// In en, this message translates to:
  /// **'No favourites yet'**
  String get emojiPickerNoFavsTitle;

  /// No description provided for @emojiPickerNoGifsMatch.
  ///
  /// In en, this message translates to:
  /// **'No GIFs match \"{query}\".'**
  String emojiPickerNoGifsMatch(String query);

  /// No description provided for @emojiPickerNoTrending.
  ///
  /// In en, this message translates to:
  /// **'No trending GIFs right now.'**
  String get emojiPickerNoTrending;

  /// No description provided for @emojiPickerSearchGifs.
  ///
  /// In en, this message translates to:
  /// **'Search GIFs'**
  String get emojiPickerSearchGifs;

  /// No description provided for @emojiPickerShowTrending.
  ///
  /// In en, this message translates to:
  /// **'Show trending'**
  String get emojiPickerShowTrending;

  /// No description provided for @emojiPickerTabCustom.
  ///
  /// In en, this message translates to:
  /// **'CUSTOM'**
  String get emojiPickerTabCustom;

  /// No description provided for @emojiPickerTabEmojis.
  ///
  /// In en, this message translates to:
  /// **'EMOJIS'**
  String get emojiPickerTabEmojis;

  /// No description provided for @emojiPickerTabGifs.
  ///
  /// In en, this message translates to:
  /// **'GIFS'**
  String get emojiPickerTabGifs;

  /// No description provided for @emojiPickerTabThisGroup.
  ///
  /// In en, this message translates to:
  /// **'THIS GROUP'**
  String get emojiPickerTabThisGroup;

  /// No description provided for @emojiPickerVipBody.
  ///
  /// In en, this message translates to:
  /// **'VIP members can use custom emojis from any public group, across every group they\'re in.'**
  String get emojiPickerVipBody;

  /// No description provided for @emojiPickerVipTitle.
  ///
  /// In en, this message translates to:
  /// **'VIP only'**
  String get emojiPickerVipTitle;

  /// No description provided for @eventDetailAttendees.
  ///
  /// In en, this message translates to:
  /// **'Attendees'**
  String get eventDetailAttendees;

  /// No description provided for @eventDetailBeFirst.
  ///
  /// In en, this message translates to:
  /// **'Be the first to RSVP.'**
  String get eventDetailBeFirst;

  /// No description provided for @eventDetailCancelBody.
  ///
  /// In en, this message translates to:
  /// **'This will remove the event for everyone who RSVPd. The linked feed post (if any) survives but loses its event card.'**
  String get eventDetailCancelBody;

  /// No description provided for @eventDetailCancelEvent.
  ///
  /// In en, this message translates to:
  /// **'Cancel event'**
  String get eventDetailCancelEvent;

  /// No description provided for @eventDetailCancelSub.
  ///
  /// In en, this message translates to:
  /// **'Removes the event for everyone. Can\'t be undone.'**
  String get eventDetailCancelSub;

  /// No description provided for @eventDetailCancelTitle.
  ///
  /// In en, this message translates to:
  /// **'Cancel \"{title}\"?'**
  String eventDetailCancelTitle(String title);

  /// No description provided for @eventDetailErrAttendees.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load attendees: {error}'**
  String eventDetailErrAttendees(String error);

  /// No description provided for @eventDetailErrCancel.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t cancel event'**
  String get eventDetailErrCancel;

  /// No description provided for @eventDetailErrRsvp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t update RSVP'**
  String get eventDetailErrRsvp;

  /// No description provided for @eventDetailGoBack.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get eventDetailGoBack;

  /// No description provided for @eventDetailGoing.
  ///
  /// In en, this message translates to:
  /// **'{count} going'**
  String eventDetailGoing(int count);

  /// No description provided for @eventDetailGone.
  ///
  /// In en, this message translates to:
  /// **'This event was cancelled or is no longer visible.'**
  String get eventDetailGone;

  /// No description provided for @eventDetailHappeningNow.
  ///
  /// In en, this message translates to:
  /// **'HAPPENING NOW'**
  String get eventDetailHappeningNow;

  /// No description provided for @eventDetailHosting.
  ///
  /// In en, this message translates to:
  /// **'You\'re hosting this event.'**
  String get eventDetailHosting;

  /// No description provided for @eventDetailKeepEvent.
  ///
  /// In en, this message translates to:
  /// **'Keep event'**
  String get eventDetailKeepEvent;

  /// No description provided for @eventDetailLocationCopied.
  ///
  /// In en, this message translates to:
  /// **'Location copied to clipboard.'**
  String get eventDetailLocationCopied;

  /// No description provided for @eventDetailMaybeSuffix.
  ///
  /// In en, this message translates to:
  /// **' · {count} maybe'**
  String eventDetailMaybeSuffix(int count);

  /// No description provided for @eventDetailOptionsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Event options'**
  String get eventDetailOptionsTooltip;

  /// No description provided for @eventDetailRsvpCant.
  ///
  /// In en, this message translates to:
  /// **'Can\'t'**
  String get eventDetailRsvpCant;

  /// No description provided for @eventDetailRsvpGoing.
  ///
  /// In en, this message translates to:
  /// **'Going'**
  String get eventDetailRsvpGoing;

  /// No description provided for @eventDetailRsvpMaybe.
  ///
  /// In en, this message translates to:
  /// **'Maybe'**
  String get eventDetailRsvpMaybe;

  /// No description provided for @eventsScreenCreateCta.
  ///
  /// In en, this message translates to:
  /// **'Create event'**
  String get eventsScreenCreateCta;

  /// No description provided for @eventsScreenEmptyAllBody.
  ///
  /// In en, this message translates to:
  /// **'Be the first to plan something. Tap the button below.'**
  String get eventsScreenEmptyAllBody;

  /// No description provided for @eventsScreenEmptyAllTitle.
  ///
  /// In en, this message translates to:
  /// **'No upcoming events'**
  String get eventsScreenEmptyAllTitle;

  /// No description provided for @eventsScreenEmptyMineBody.
  ///
  /// In en, this message translates to:
  /// **'RSVP to events you find here. They\'ll show up in this tab.'**
  String get eventsScreenEmptyMineBody;

  /// No description provided for @eventsScreenEmptyMineTitle.
  ///
  /// In en, this message translates to:
  /// **'No upcoming RSVPs'**
  String get eventsScreenEmptyMineTitle;

  /// No description provided for @eventsScreenFilterAll.
  ///
  /// In en, this message translates to:
  /// **'All upcoming'**
  String get eventsScreenFilterAll;

  /// No description provided for @eventsScreenFilterMine.
  ///
  /// In en, this message translates to:
  /// **'My RSVPs'**
  String get eventsScreenFilterMine;

  /// No description provided for @eventsScreenLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String eventsScreenLoadError(String error);

  /// No description provided for @eventsScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get eventsScreenTitle;

  /// No description provided for @featureBanEyebrow.
  ///
  /// In en, this message translates to:
  /// **'Feature restricted'**
  String get featureBanEyebrow;

  /// No description provided for @featureBanIssued.
  ///
  /// In en, this message translates to:
  /// **'Issued {date}'**
  String featureBanIssued(String date);

  /// No description provided for @featureBanKindComment.
  ///
  /// In en, this message translates to:
  /// **'Commenting'**
  String get featureBanKindComment;

  /// No description provided for @featureBanKindCreateEvent.
  ///
  /// In en, this message translates to:
  /// **'Creating events'**
  String get featureBanKindCreateEvent;

  /// No description provided for @featureBanKindCreateGroup.
  ///
  /// In en, this message translates to:
  /// **'Creating groups'**
  String get featureBanKindCreateGroup;

  /// No description provided for @featureBanKindCreateLobby.
  ///
  /// In en, this message translates to:
  /// **'Hosting Live Lobbies'**
  String get featureBanKindCreateLobby;

  /// No description provided for @featureBanKindCreatePost.
  ///
  /// In en, this message translates to:
  /// **'Posting'**
  String get featureBanKindCreatePost;

  /// No description provided for @featureBanKindJoinLobby.
  ///
  /// In en, this message translates to:
  /// **'Joining Live Lobbies'**
  String get featureBanKindJoinLobby;

  /// No description provided for @featureBanKindSendDm.
  ///
  /// In en, this message translates to:
  /// **'Direct messages'**
  String get featureBanKindSendDm;

  /// No description provided for @featureBanKindSendGroupMessage.
  ///
  /// In en, this message translates to:
  /// **'Group chat'**
  String get featureBanKindSendGroupMessage;

  /// No description provided for @featureBanModerationSays.
  ///
  /// In en, this message translates to:
  /// **'Luney moderation says'**
  String get featureBanModerationSays;

  /// No description provided for @featureBanNotePermanent.
  ///
  /// In en, this message translates to:
  /// **'You can\'t use this feature right now. Tap Settings → Support to appeal.'**
  String get featureBanNotePermanent;

  /// No description provided for @featureBanNoteTemporary.
  ///
  /// In en, this message translates to:
  /// **'You can\'t use this feature right now. It\'ll lift automatically. See below.'**
  String get featureBanNoteTemporary;

  /// No description provided for @featureBanPillLifts.
  ///
  /// In en, this message translates to:
  /// **'LIFTS {time}'**
  String featureBanPillLifts(String time);

  /// No description provided for @featureBanPillPermanent.
  ///
  /// In en, this message translates to:
  /// **'PERMANENT'**
  String get featureBanPillPermanent;

  /// No description provided for @featureBanPillUntil.
  ///
  /// In en, this message translates to:
  /// **'UNTIL {date}'**
  String featureBanPillUntil(String date);

  /// No description provided for @featureBanViewAll.
  ///
  /// In en, this message translates to:
  /// **'View all restrictions'**
  String get featureBanViewAll;

  /// No description provided for @featureUnavailableRubric.
  ///
  /// In en, this message translates to:
  /// **'Temporarily unavailable'**
  String get featureUnavailableRubric;

  /// No description provided for @featureUnavailableSource.
  ///
  /// In en, this message translates to:
  /// **'Luney'**
  String get featureUnavailableSource;

  /// No description provided for @feedbackCategoryBug.
  ///
  /// In en, this message translates to:
  /// **'Bug'**
  String get feedbackCategoryBug;

  /// No description provided for @feedbackCategoryContent.
  ///
  /// In en, this message translates to:
  /// **'Content'**
  String get feedbackCategoryContent;

  /// No description provided for @feedbackCategoryIdea.
  ///
  /// In en, this message translates to:
  /// **'Idea'**
  String get feedbackCategoryIdea;

  /// No description provided for @feedbackCategoryOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get feedbackCategoryOther;

  /// No description provided for @feedbackCategoryUx.
  ///
  /// In en, this message translates to:
  /// **'Design / UX'**
  String get feedbackCategoryUx;

  /// No description provided for @feedbackCommunityEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Staff publish suggestions here once they decide a feature is worth the community weighing in. Check back soon.'**
  String get feedbackCommunityEmptyBody;

  /// No description provided for @feedbackCommunityEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No feedback is open for voting right now'**
  String get feedbackCommunityEmptyTitle;

  /// No description provided for @feedbackDetailAddEmojiTooltip.
  ///
  /// In en, this message translates to:
  /// **'Add emoji'**
  String get feedbackDetailAddEmojiTooltip;

  /// No description provided for @feedbackDetailBuildLabel.
  ///
  /// In en, this message translates to:
  /// **'build {build}'**
  String feedbackDetailBuildLabel(String build);

  /// No description provided for @feedbackDetailCancelReplySemantic.
  ///
  /// In en, this message translates to:
  /// **'Cancel reply'**
  String get feedbackDetailCancelReplySemantic;

  /// No description provided for @feedbackDetailCommentsCap.
  ///
  /// In en, this message translates to:
  /// **'Showing the first {count} comments. Older replies aren\'t shown here.'**
  String feedbackDetailCommentsCap(int count);

  /// No description provided for @feedbackDetailCommentsHeader.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get feedbackDetailCommentsHeader;

  /// No description provided for @feedbackDetailCommentsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load comments: {error}'**
  String feedbackDetailCommentsLoadError(String error);

  /// No description provided for @feedbackDetailComposerHintComment.
  ///
  /// In en, this message translates to:
  /// **'Add a comment'**
  String get feedbackDetailComposerHintComment;

  /// No description provided for @feedbackDetailComposerHintReply.
  ///
  /// In en, this message translates to:
  /// **'Write a reply'**
  String get feedbackDetailComposerHintReply;

  /// No description provided for @feedbackDetailComposerHintStaff.
  ///
  /// In en, this message translates to:
  /// **'Write the Luney team reply'**
  String get feedbackDetailComposerHintStaff;

  /// No description provided for @feedbackDetailDeleteCommentBody.
  ///
  /// In en, this message translates to:
  /// **'This removes your comment from the thread. You can\'t undo this.'**
  String get feedbackDetailDeleteCommentBody;

  /// No description provided for @feedbackDetailDeleteCommentTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete comment?'**
  String get feedbackDetailDeleteCommentTitle;

  /// No description provided for @feedbackDetailDeleteMyCommentSemantic.
  ///
  /// In en, this message translates to:
  /// **'Delete my comment'**
  String get feedbackDetailDeleteMyCommentSemantic;

  /// No description provided for @feedbackDetailInReplyTo.
  ///
  /// In en, this message translates to:
  /// **'In reply to {name}'**
  String feedbackDetailInReplyTo(String name);

  /// No description provided for @feedbackDetailLikeSemantic.
  ///
  /// In en, this message translates to:
  /// **'Like comment'**
  String get feedbackDetailLikeSemantic;

  /// Badge on an official staff (Luney team) feedback reply.
  ///
  /// In en, this message translates to:
  /// **'Luney team'**
  String get feedbackDetailLuneyTeamBadge;

  /// Label above the net vote score on a feedback item.
  ///
  /// In en, this message translates to:
  /// **'NET'**
  String get feedbackDetailNetLabel;

  /// No description provided for @feedbackDetailNoComments.
  ///
  /// In en, this message translates to:
  /// **'No comments yet. Be the first.'**
  String get feedbackDetailNoComments;

  /// No description provided for @feedbackDetailNotFound.
  ///
  /// In en, this message translates to:
  /// **'This feedback isn\'t available, it may have been removed.'**
  String get feedbackDetailNotFound;

  /// No description provided for @feedbackDetailOpenScreenshot.
  ///
  /// In en, this message translates to:
  /// **'Open screenshot {index}'**
  String feedbackDetailOpenScreenshot(int index);

  /// No description provided for @feedbackDetailPostCommentTooltip.
  ///
  /// In en, this message translates to:
  /// **'Post comment'**
  String get feedbackDetailPostCommentTooltip;

  /// No description provided for @feedbackDetailPostStaffTooltip.
  ///
  /// In en, this message translates to:
  /// **'Post Luney team reply'**
  String get feedbackDetailPostStaffTooltip;

  /// No description provided for @feedbackDetailReplyAction.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get feedbackDetailReplyAction;

  /// No description provided for @feedbackDetailReplyingTo.
  ///
  /// In en, this message translates to:
  /// **'Replying to {name}'**
  String feedbackDetailReplyingTo(String name);

  /// No description provided for @feedbackDetailReplySemantic.
  ///
  /// In en, this message translates to:
  /// **'Reply to this comment'**
  String get feedbackDetailReplySemantic;

  /// No description provided for @feedbackDetailReportCommentTargetLabel.
  ///
  /// In en, this message translates to:
  /// **'this comment'**
  String get feedbackDetailReportCommentTargetLabel;

  /// No description provided for @feedbackDetailScreenshotCounter.
  ///
  /// In en, this message translates to:
  /// **'{current} / {total}'**
  String feedbackDetailScreenshotCounter(int current, int total);

  /// No description provided for @feedbackDetailShowMoreComments.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Show 1 more comment} other{Show {count} more comments}}'**
  String feedbackDetailShowMoreComments(int count);

  /// No description provided for @feedbackDetailShowMoreReplies.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Show 1 more reply} other{Show {count} more replies}}'**
  String feedbackDetailShowMoreReplies(int count);

  /// No description provided for @feedbackDetailStaffModeHint.
  ///
  /// In en, this message translates to:
  /// **'Posts an official reply, your name still shows but it is badged \"Luney team\"'**
  String get feedbackDetailStaffModeHint;

  /// No description provided for @feedbackDetailStaffModeLockedHint.
  ///
  /// In en, this message translates to:
  /// **'This isn\'t open for voting, replies post as the Luney team'**
  String get feedbackDetailStaffModeLockedHint;

  /// No description provided for @feedbackDetailStaffModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Reply as the Luney team'**
  String get feedbackDetailStaffModeTitle;

  /// No description provided for @feedbackDetailUnlikeSemantic.
  ///
  /// In en, this message translates to:
  /// **'Unlike comment'**
  String get feedbackDetailUnlikeSemantic;

  /// No description provided for @feedbackDetailViewParentSemantic.
  ///
  /// In en, this message translates to:
  /// **'View the comment this replies to'**
  String get feedbackDetailViewParentSemantic;

  /// No description provided for @feedbackLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load feedback: {error}'**
  String feedbackLoadError(String error);

  /// No description provided for @feedbackMineEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Bug? Idea? UX paper cut? Send it over and we read every one.'**
  String get feedbackMineEmptyBody;

  /// No description provided for @feedbackMineEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t sent feedback yet'**
  String get feedbackMineEmptyTitle;

  /// No description provided for @feedbackReportTargetLabel.
  ///
  /// In en, this message translates to:
  /// **'this suggestion'**
  String get feedbackReportTargetLabel;

  /// No description provided for @feedbackSendButton.
  ///
  /// In en, this message translates to:
  /// **'Send feedback'**
  String get feedbackSendButton;

  /// No description provided for @feedbackShippedIn.
  ///
  /// In en, this message translates to:
  /// **'Shipped in {version}'**
  String feedbackShippedIn(String version);

  /// No description provided for @feedbackStaffNote.
  ///
  /// In en, this message translates to:
  /// **'Staff note: {reason}'**
  String feedbackStaffNote(String reason);

  /// No description provided for @feedbackStatusDenied.
  ///
  /// In en, this message translates to:
  /// **'Not planned'**
  String get feedbackStatusDenied;

  /// No description provided for @feedbackStatusDuplicate.
  ///
  /// In en, this message translates to:
  /// **'Duplicate'**
  String get feedbackStatusDuplicate;

  /// No description provided for @feedbackStatusPending.
  ///
  /// In en, this message translates to:
  /// **'Pending review'**
  String get feedbackStatusPending;

  /// No description provided for @feedbackStatusShipped.
  ///
  /// In en, this message translates to:
  /// **'Shipped'**
  String get feedbackStatusShipped;

  /// No description provided for @feedbackStatusVoting.
  ///
  /// In en, this message translates to:
  /// **'Open for voting'**
  String get feedbackStatusVoting;

  /// No description provided for @feedbackStatusWip.
  ///
  /// In en, this message translates to:
  /// **'Work in progress'**
  String get feedbackStatusWip;

  /// No description provided for @feedbackSubmitAddScreenshotA11y.
  ///
  /// In en, this message translates to:
  /// **'Add screenshot'**
  String get feedbackSubmitAddScreenshotA11y;

  /// No description provided for @feedbackSubmitAddTile.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get feedbackSubmitAddTile;

  /// No description provided for @feedbackSubmitBodyHint.
  ///
  /// In en, this message translates to:
  /// **'Describe what you want, what bug you hit, or what feels off. The more context the better.'**
  String get feedbackSubmitBodyHint;

  /// No description provided for @feedbackSubmitErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send your feedback'**
  String get feedbackSubmitErrorOp;

  /// No description provided for @feedbackSubmitRemoveScreenshotA11y.
  ///
  /// In en, this message translates to:
  /// **'Remove screenshot'**
  String get feedbackSubmitRemoveScreenshotA11y;

  /// No description provided for @feedbackSubmitScreenshots.
  ///
  /// In en, this message translates to:
  /// **'Screenshots'**
  String get feedbackSubmitScreenshots;

  /// No description provided for @feedbackSubmitScreenshotsHint.
  ///
  /// In en, this message translates to:
  /// **'Optional, super helpful for bug reports'**
  String get feedbackSubmitScreenshotsHint;

  /// No description provided for @feedbackSubmitSendCta.
  ///
  /// In en, this message translates to:
  /// **'Send to staff'**
  String get feedbackSubmitSendCta;

  /// No description provided for @feedbackSubmitSentBody.
  ///
  /// In en, this message translates to:
  /// **'Staff read every submission. You\'ll get a notification when there\'s a status update on this one.'**
  String get feedbackSubmitSentBody;

  /// No description provided for @feedbackSubmitSentRubric.
  ///
  /// In en, this message translates to:
  /// **'SENT TO STAFF'**
  String get feedbackSubmitSentRubric;

  /// No description provided for @feedbackSubmitSentTitle.
  ///
  /// In en, this message translates to:
  /// **'Thanks for the feedback'**
  String get feedbackSubmitSentTitle;

  /// No description provided for @feedbackSubmitSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Bug, idea, or paper cut, share it. Staff reads everything and gets back to you with a status.'**
  String get feedbackSubmitSubtitle;

  /// No description provided for @feedbackSubmitTitle.
  ///
  /// In en, this message translates to:
  /// **'Send feedback'**
  String get feedbackSubmitTitle;

  /// No description provided for @feedbackSubmitTitleHint.
  ///
  /// In en, this message translates to:
  /// **'Short title (e.g. \"Add a dark Sunrise theme\")'**
  String get feedbackSubmitTitleHint;

  /// No description provided for @feedbackSubmitTooltip.
  ///
  /// In en, this message translates to:
  /// **'Submit feedback'**
  String get feedbackSubmitTooltip;

  /// No description provided for @feedbackTabCommunity.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get feedbackTabCommunity;

  /// No description provided for @feedbackTabMine.
  ///
  /// In en, this message translates to:
  /// **'Mine'**
  String get feedbackTabMine;

  /// No description provided for @feedbackTitle.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get feedbackTitle;

  /// No description provided for @feedbackUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Feedback isn\'t available right now. Try again later.'**
  String get feedbackUnavailable;

  /// No description provided for @forgotPasswordBackTooltip.
  ///
  /// In en, this message translates to:
  /// **'Back to sign in'**
  String get forgotPasswordBackTooltip;

  /// No description provided for @forgotPasswordEmailHint.
  ///
  /// In en, this message translates to:
  /// **'you@domain.com'**
  String get forgotPasswordEmailHint;

  /// No description provided for @forgotPasswordEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get forgotPasswordEmailLabel;

  /// No description provided for @forgotPasswordErrInvalid.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email.'**
  String get forgotPasswordErrInvalid;

  /// No description provided for @forgotPasswordErrSend.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send the password reset link'**
  String get forgotPasswordErrSend;

  /// No description provided for @forgotPasswordSend.
  ///
  /// In en, this message translates to:
  /// **'Send reset link'**
  String get forgotPasswordSend;

  /// No description provided for @forgotPasswordSending.
  ///
  /// In en, this message translates to:
  /// **'Sending…'**
  String get forgotPasswordSending;

  /// No description provided for @forgotPasswordSentPrefix.
  ///
  /// In en, this message translates to:
  /// **'If an account exists for'**
  String get forgotPasswordSentPrefix;

  /// No description provided for @forgotPasswordSentSuffix.
  ///
  /// In en, this message translates to:
  /// **'we\'ve sent a reset link to it. Tap the link from your phone to pick a new password.'**
  String get forgotPasswordSentSuffix;

  /// No description provided for @forgotPasswordSentTitle.
  ///
  /// In en, this message translates to:
  /// **'Check your inbox'**
  String get forgotPasswordSentTitle;

  /// No description provided for @forgotPasswordSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter the email on your account and we\'ll send a reset link.'**
  String get forgotPasswordSubtitle;

  /// No description provided for @forgotPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password?'**
  String get forgotPasswordTitle;

  /// No description provided for @friendBtnAccept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get friendBtnAccept;

  /// No description provided for @friendBtnAdd.
  ///
  /// In en, this message translates to:
  /// **'Add Friend'**
  String get friendBtnAdd;

  /// No description provided for @friendBtnDecline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get friendBtnDecline;

  /// No description provided for @friendBtnErrUpdate.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t update friendship'**
  String get friendBtnErrUpdate;

  /// No description provided for @friendBtnFriends.
  ///
  /// In en, this message translates to:
  /// **'Friends'**
  String get friendBtnFriends;

  /// No description provided for @friendBtnRequestSent.
  ///
  /// In en, this message translates to:
  /// **'Request sent'**
  String get friendBtnRequestSent;

  /// No description provided for @friendBtnUnfriend.
  ///
  /// In en, this message translates to:
  /// **'Unfriend'**
  String get friendBtnUnfriend;

  /// No description provided for @friendBtnUnfriendTitle.
  ///
  /// In en, this message translates to:
  /// **'Unfriend?'**
  String get friendBtnUnfriendTitle;

  /// No description provided for @friendRequestsActionAccept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get friendRequestsActionAccept;

  /// No description provided for @friendRequestsActionDecline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get friendRequestsActionDecline;

  /// No description provided for @friendRequestsEmptyReceived.
  ///
  /// In en, this message translates to:
  /// **'No requests waiting on you.'**
  String get friendRequestsEmptyReceived;

  /// No description provided for @friendRequestsEmptySent.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t sent any pending requests.'**
  String get friendRequestsEmptySent;

  /// No description provided for @friendRequestsErrAccept.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t accept the friend request'**
  String get friendRequestsErrAccept;

  /// No description provided for @friendRequestsErrCancel.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t cancel the friend request'**
  String get friendRequestsErrCancel;

  /// No description provided for @friendRequestsErrDecline.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t decline the friend request'**
  String get friendRequestsErrDecline;

  /// No description provided for @friendRequestsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String friendRequestsLoadError(String error);

  /// No description provided for @friendRequestsTabReceived.
  ///
  /// In en, this message translates to:
  /// **'Received'**
  String get friendRequestsTabReceived;

  /// No description provided for @friendRequestsTabSent.
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get friendRequestsTabSent;

  /// No description provided for @friendRequestsTitle.
  ///
  /// In en, this message translates to:
  /// **'Friend Requests'**
  String get friendRequestsTitle;

  /// No description provided for @friendshipAnniversaryCardSent.
  ///
  /// In en, this message translates to:
  /// **'Card sent 💌'**
  String get friendshipAnniversaryCardSent;

  /// No description provided for @friendshipAnniversarySince.
  ///
  /// In en, this message translates to:
  /// **'Friends since {date}'**
  String friendshipAnniversarySince(String date);

  /// No description provided for @friendshipAnniversaryTapToSend.
  ///
  /// In en, this message translates to:
  /// **'Tap to send a card'**
  String get friendshipAnniversaryTapToSend;

  /// No description provided for @friendshipAnniversaryTodayTitle.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 year of friendship today} other{{count} years of friendship today}}'**
  String friendshipAnniversaryTodayTitle(int count);

  /// No description provided for @friendshipAnniversaryYears.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 year} other{{count} years}}'**
  String friendshipAnniversaryYears(int count);

  /// No description provided for @friendsListAddCircle.
  ///
  /// In en, this message translates to:
  /// **'Add to inner circle'**
  String get friendsListAddCircle;

  /// No description provided for @friendsListEmptyMineBody.
  ///
  /// In en, this message translates to:
  /// **'Tap a profile and hit Add Friend to start a connection.'**
  String get friendsListEmptyMineBody;

  /// No description provided for @friendsListEmptyMineTitle.
  ///
  /// In en, this message translates to:
  /// **'No friends yet'**
  String get friendsListEmptyMineTitle;

  /// No description provided for @friendsListEmptyOtherBody.
  ///
  /// In en, this message translates to:
  /// **'When they\'re connected with people, they\'ll show up here.'**
  String get friendsListEmptyOtherBody;

  /// No description provided for @friendsListEmptyOtherTitle.
  ///
  /// In en, this message translates to:
  /// **'No friends to show'**
  String get friendsListEmptyOtherTitle;

  /// No description provided for @friendsListErrCircle.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t update Circle'**
  String get friendsListErrCircle;

  /// No description provided for @friendsListLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load friends: {error}'**
  String friendsListLoadError(String error);

  /// No description provided for @friendsListRemoveCircle.
  ///
  /// In en, this message translates to:
  /// **'Remove from inner circle'**
  String get friendsListRemoveCircle;

  /// No description provided for @friendsListTitleMine.
  ///
  /// In en, this message translates to:
  /// **'Your Friends'**
  String get friendsListTitleMine;

  /// No description provided for @friendsListTitleOther.
  ///
  /// In en, this message translates to:
  /// **'Friends'**
  String get friendsListTitleOther;

  /// No description provided for @groupCardJoin.
  ///
  /// In en, this message translates to:
  /// **'+ Join'**
  String get groupCardJoin;

  /// No description provided for @groupCardJoined.
  ///
  /// In en, this message translates to:
  /// **'Joined ✓'**
  String get groupCardJoined;

  /// No description provided for @groupCardJoinOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t join group'**
  String get groupCardJoinOp;

  /// No description provided for @groupCardLeaveOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t leave group'**
  String get groupCardLeaveOp;

  /// No description provided for @groupCardMembers.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{{formatted} member} other{{formatted} members}}'**
  String groupCardMembers(int count, String formatted);

  /// No description provided for @groupCardPendingDeletion.
  ///
  /// In en, this message translates to:
  /// **'PENDING DELETION'**
  String get groupCardPendingDeletion;

  /// No description provided for @groupCardStaffChip.
  ///
  /// In en, this message translates to:
  /// **'STAFF'**
  String get groupCardStaffChip;

  /// No description provided for @groupChatDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'This removes it for everyone in the group.'**
  String get groupChatDeleteBody;

  /// No description provided for @groupChatDeleteBodyAdmin.
  ///
  /// In en, this message translates to:
  /// **'You\'re deleting another member\'s message as a group admin/mod. This removes it for everyone in the group.'**
  String get groupChatDeleteBodyAdmin;

  /// No description provided for @groupChatDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete message?'**
  String get groupChatDeleteTitle;

  /// No description provided for @groupChatDeleteTitleAdmin.
  ///
  /// In en, this message translates to:
  /// **'Delete this message?'**
  String get groupChatDeleteTitleAdmin;

  /// No description provided for @groupChatEmpty.
  ///
  /// In en, this message translates to:
  /// **'No messages yet. Say hi 👋'**
  String get groupChatEmpty;

  /// No description provided for @groupChatErrDelete.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete message'**
  String get groupChatErrDelete;

  /// No description provided for @groupChatErrReact.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t react'**
  String get groupChatErrReact;

  /// No description provided for @groupChatErrRestore.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t restore message'**
  String get groupChatErrRestore;

  /// No description provided for @groupChatErrSaveEdit.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save edit'**
  String get groupChatErrSaveEdit;

  /// No description provided for @groupChatErrSendGif.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send GIF'**
  String get groupChatErrSendGif;

  /// No description provided for @groupChatErrSendMessage.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send message'**
  String get groupChatErrSendMessage;

  /// No description provided for @groupChatLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load chat: {error}'**
  String groupChatLoadError(String error);

  /// No description provided for @groupChatMenuAddReaction.
  ///
  /// In en, this message translates to:
  /// **'Add reaction'**
  String get groupChatMenuAddReaction;

  /// No description provided for @groupChatMenuAdminDelete.
  ///
  /// In en, this message translates to:
  /// **'Admin delete'**
  String get groupChatMenuAdminDelete;

  /// No description provided for @groupChatMenuCopyText.
  ///
  /// In en, this message translates to:
  /// **'Copy text'**
  String get groupChatMenuCopyText;

  /// No description provided for @groupChatMenuDeleteAdmin.
  ///
  /// In en, this message translates to:
  /// **'Delete (group admin)'**
  String get groupChatMenuDeleteAdmin;

  /// No description provided for @groupChatMenuEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get groupChatMenuEdit;

  /// No description provided for @groupChatMenuFavGif.
  ///
  /// In en, this message translates to:
  /// **'Favourite GIF'**
  String get groupChatMenuFavGif;

  /// No description provided for @groupChatMenuReply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get groupChatMenuReply;

  /// No description provided for @groupChatMenuReport.
  ///
  /// In en, this message translates to:
  /// **'Report message'**
  String get groupChatMenuReport;

  /// No description provided for @groupChatMenuRestore.
  ///
  /// In en, this message translates to:
  /// **'Restore (within 7 days)'**
  String get groupChatMenuRestore;

  /// No description provided for @groupChatMenuUnfavGif.
  ///
  /// In en, this message translates to:
  /// **'Remove from favourites'**
  String get groupChatMenuUnfavGif;

  /// No description provided for @groupChatMomentShort.
  ///
  /// In en, this message translates to:
  /// **'a moment'**
  String get groupChatMomentShort;

  /// No description provided for @groupChatMutedTitle.
  ///
  /// In en, this message translates to:
  /// **'You\'re muted in this group'**
  String get groupChatMutedTitle;

  /// No description provided for @groupChatMuteLiftsIn.
  ///
  /// In en, this message translates to:
  /// **'Mute lifts in {remaining}.'**
  String groupChatMuteLiftsIn(String remaining);

  /// No description provided for @groupChatRecordingWarnFailed.
  ///
  /// In en, this message translates to:
  /// **'Recording warning failed to post: {error}'**
  String groupChatRecordingWarnFailed(String error);

  /// No description provided for @groupChatRemovedByModeration.
  ///
  /// In en, this message translates to:
  /// **'🛡️ Removed by Luney moderation'**
  String get groupChatRemovedByModeration;

  /// No description provided for @groupChatReplySnippetPhoto.
  ///
  /// In en, this message translates to:
  /// **'📷 Photo'**
  String get groupChatReplySnippetPhoto;

  /// No description provided for @groupChatReportLabel.
  ///
  /// In en, this message translates to:
  /// **'this message'**
  String get groupChatReportLabel;

  /// No description provided for @groupChatRestoredBody.
  ///
  /// In en, this message translates to:
  /// **'The message is visible again to everyone who could see it before the removal.'**
  String get groupChatRestoredBody;

  /// No description provided for @groupChatRestoredRubric.
  ///
  /// In en, this message translates to:
  /// **'MESSAGE RESTORED'**
  String get groupChatRestoredRubric;

  /// No description provided for @groupChatRestoredTitle.
  ///
  /// In en, this message translates to:
  /// **'Message restored'**
  String get groupChatRestoredTitle;

  /// No description provided for @groupChatRulesEventLine.
  ///
  /// In en, this message translates to:
  /// **'{who} · /rules · {time}'**
  String groupChatRulesEventLine(String who, String time);

  /// No description provided for @groupChatScreenshotWarnFailed.
  ///
  /// In en, this message translates to:
  /// **'Screenshot warning failed to post: {error}'**
  String groupChatScreenshotWarnFailed(String error);

  /// No description provided for @groupChatSomeone.
  ///
  /// In en, this message translates to:
  /// **'Someone'**
  String get groupChatSomeone;

  /// No description provided for @groupChatVerbChatWiped.
  ///
  /// In en, this message translates to:
  /// **'cleared the chat history'**
  String get groupChatVerbChatWiped;

  /// No description provided for @groupChatVerbDefault.
  ///
  /// In en, this message translates to:
  /// **'event'**
  String get groupChatVerbDefault;

  /// No description provided for @groupChatVerbJoined.
  ///
  /// In en, this message translates to:
  /// **'joined the group'**
  String get groupChatVerbJoined;

  /// No description provided for @groupChatVerbScreenRecording.
  ///
  /// In en, this message translates to:
  /// **'started screen recording'**
  String get groupChatVerbScreenRecording;

  /// No description provided for @groupChatVerbScreenshot.
  ///
  /// In en, this message translates to:
  /// **'took a screenshot'**
  String get groupChatVerbScreenshot;

  /// No description provided for @groupChatYou.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get groupChatYou;

  /// No description provided for @groupCommentsCancelReply.
  ///
  /// In en, this message translates to:
  /// **'Cancel reply'**
  String get groupCommentsCancelReply;

  /// No description provided for @groupCommentsDeleteA11y.
  ///
  /// In en, this message translates to:
  /// **'Delete comment'**
  String get groupCommentsDeleteA11y;

  /// No description provided for @groupCommentsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No comments yet. Be the first.'**
  String get groupCommentsEmpty;

  /// No description provided for @groupCommentsErrDelete.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete comment'**
  String get groupCommentsErrDelete;

  /// No description provided for @groupCommentsErrPost.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t post comment'**
  String get groupCommentsErrPost;

  /// No description provided for @groupCommentsHint.
  ///
  /// In en, this message translates to:
  /// **'Write a comment…'**
  String get groupCommentsHint;

  /// No description provided for @groupCommentsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load comments: {error}'**
  String groupCommentsLoadError(String error);

  /// No description provided for @groupCommentsOpenProfileA11y.
  ///
  /// In en, this message translates to:
  /// **'Open {name}\'s profile'**
  String groupCommentsOpenProfileA11y(String name);

  /// No description provided for @groupCommentsPostA11y.
  ///
  /// In en, this message translates to:
  /// **'Post comment'**
  String get groupCommentsPostA11y;

  /// No description provided for @groupCommentsRemoved.
  ///
  /// In en, this message translates to:
  /// **'🛡️ Removed by Luney moderation'**
  String get groupCommentsRemoved;

  /// No description provided for @groupCommentsReply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get groupCommentsReply;

  /// No description provided for @groupCommentsReplyingTo.
  ///
  /// In en, this message translates to:
  /// **'Replying to @{handle}'**
  String groupCommentsReplyingTo(String handle);

  /// No description provided for @groupCommentsTitle.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get groupCommentsTitle;

  /// No description provided for @groupContentActionsAdminDelete.
  ///
  /// In en, this message translates to:
  /// **'Admin delete'**
  String get groupContentActionsAdminDelete;

  /// No description provided for @groupContentActionsDeleteAdminTile.
  ///
  /// In en, this message translates to:
  /// **'Delete (group admin)'**
  String get groupContentActionsDeleteAdminTile;

  /// No description provided for @groupContentActionsDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'This removes it for everyone in the group.'**
  String get groupContentActionsDeleteBody;

  /// No description provided for @groupContentActionsDeleteBodyAdmin.
  ///
  /// In en, this message translates to:
  /// **'You\'re deleting another member\'s {kind} as a group admin/mod. This removes it for everyone in the group.'**
  String groupContentActionsDeleteBodyAdmin(String kind);

  /// No description provided for @groupContentActionsDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete {kind}?'**
  String groupContentActionsDeleteTitle(String kind);

  /// No description provided for @groupContentActionsDeleteTitleAdmin.
  ///
  /// In en, this message translates to:
  /// **'Delete this {kind}?'**
  String groupContentActionsDeleteTitleAdmin(String kind);

  /// No description provided for @groupContentActionsErrDelete.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete {kind}'**
  String groupContentActionsErrDelete(String kind);

  /// No description provided for @groupContentActionsErrRestore.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t restore content'**
  String get groupContentActionsErrRestore;

  /// No description provided for @groupContentActionsKindComment.
  ///
  /// In en, this message translates to:
  /// **'comment'**
  String get groupContentActionsKindComment;

  /// No description provided for @groupContentActionsKindItem.
  ///
  /// In en, this message translates to:
  /// **'item'**
  String get groupContentActionsKindItem;

  /// No description provided for @groupContentActionsKindMessage.
  ///
  /// In en, this message translates to:
  /// **'message'**
  String get groupContentActionsKindMessage;

  /// No description provided for @groupContentActionsKindPost.
  ///
  /// In en, this message translates to:
  /// **'post'**
  String get groupContentActionsKindPost;

  /// No description provided for @groupContentActionsReportComment.
  ///
  /// In en, this message translates to:
  /// **'Report comment'**
  String get groupContentActionsReportComment;

  /// No description provided for @groupContentActionsReportDefault.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get groupContentActionsReportDefault;

  /// No description provided for @groupContentActionsReportMessage.
  ///
  /// In en, this message translates to:
  /// **'Report message'**
  String get groupContentActionsReportMessage;

  /// No description provided for @groupContentActionsReportPost.
  ///
  /// In en, this message translates to:
  /// **'Report post'**
  String get groupContentActionsReportPost;

  /// No description provided for @groupContentActionsRestore.
  ///
  /// In en, this message translates to:
  /// **'Restore (within 7 days)'**
  String get groupContentActionsRestore;

  /// No description provided for @groupContentActionsRestoredBody.
  ///
  /// In en, this message translates to:
  /// **'The content is visible again to everyone who could see it before the removal.'**
  String get groupContentActionsRestoredBody;

  /// No description provided for @groupContentActionsRestoredRubric.
  ///
  /// In en, this message translates to:
  /// **'CONTENT RESTORED'**
  String get groupContentActionsRestoredRubric;

  /// No description provided for @groupContentActionsRestoredTitle.
  ///
  /// In en, this message translates to:
  /// **'Restored'**
  String get groupContentActionsRestoredTitle;

  /// No description provided for @groupContentActionsTargetComment.
  ///
  /// In en, this message translates to:
  /// **'this comment'**
  String get groupContentActionsTargetComment;

  /// No description provided for @groupContentActionsTargetDefault.
  ///
  /// In en, this message translates to:
  /// **'this content'**
  String get groupContentActionsTargetDefault;

  /// No description provided for @groupContentActionsTargetMessage.
  ///
  /// In en, this message translates to:
  /// **'this message'**
  String get groupContentActionsTargetMessage;

  /// No description provided for @groupContentActionsTargetPost.
  ///
  /// In en, this message translates to:
  /// **'this post'**
  String get groupContentActionsTargetPost;

  /// No description provided for @groupDetailErrJoin.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t join group'**
  String get groupDetailErrJoin;

  /// No description provided for @groupDetailJoin.
  ///
  /// In en, this message translates to:
  /// **'Join this group'**
  String get groupDetailJoin;

  /// No description provided for @groupDetailJoinA11y.
  ///
  /// In en, this message translates to:
  /// **'Join this group'**
  String get groupDetailJoinA11y;

  /// No description provided for @groupDetailJoining.
  ///
  /// In en, this message translates to:
  /// **'Joining…'**
  String get groupDetailJoining;

  /// No description provided for @groupDetailLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String groupDetailLoadError(String error);

  /// No description provided for @groupDetailMemberCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 member} other{{count} members}}'**
  String groupDetailMemberCount(int count);

  /// No description provided for @groupDetailMyProfileTooltip.
  ///
  /// In en, this message translates to:
  /// **'My profile in this group'**
  String get groupDetailMyProfileTooltip;

  /// No description provided for @groupDetailNotAllowedBody.
  ///
  /// In en, this message translates to:
  /// **'Suspending the Staff Lounge would lock every admin out of the channel they\'d use to lift the suspension. The server enforces this too.'**
  String get groupDetailNotAllowedBody;

  /// No description provided for @groupDetailNotAllowedRubric.
  ///
  /// In en, this message translates to:
  /// **'NOT ALLOWED'**
  String get groupDetailNotAllowedRubric;

  /// No description provided for @groupDetailNotAllowedTitle.
  ///
  /// In en, this message translates to:
  /// **'Can\'t suspend the Staff Lounge'**
  String get groupDetailNotAllowedTitle;

  /// No description provided for @groupDetailPermBody.
  ///
  /// In en, this message translates to:
  /// **'Group moderation actions are gated on the suspend_groups staff permission. Ask a super-admin to grant it from the staff role tools.'**
  String get groupDetailPermBody;

  /// No description provided for @groupDetailPermRubric.
  ///
  /// In en, this message translates to:
  /// **'MISSING PERMISSION'**
  String get groupDetailPermRubric;

  /// No description provided for @groupDetailPermTitle.
  ///
  /// In en, this message translates to:
  /// **'Need the suspend_groups perm'**
  String get groupDetailPermTitle;

  /// No description provided for @groupDetailRulesLabel.
  ///
  /// In en, this message translates to:
  /// **'RULES'**
  String get groupDetailRulesLabel;

  /// No description provided for @groupDetailSettingsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Group settings'**
  String get groupDetailSettingsTooltip;

  /// No description provided for @groupDetailsTabAbout.
  ///
  /// In en, this message translates to:
  /// **'ABOUT THIS GROUP'**
  String get groupDetailsTabAbout;

  /// No description provided for @groupDetailsTabCreated.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get groupDetailsTabCreated;

  /// No description provided for @groupDetailsTabEditDetails.
  ///
  /// In en, this message translates to:
  /// **'Edit details'**
  String get groupDetailsTabEditDetails;

  /// No description provided for @groupDetailsTabEditDetailsA11y.
  ///
  /// In en, this message translates to:
  /// **'Edit details'**
  String get groupDetailsTabEditDetailsA11y;

  /// No description provided for @groupDetailsTabEmptyAdmin.
  ///
  /// In en, this message translates to:
  /// **'Add a description and an About page so members know what this group is about. Tap \"Edit details\" below.'**
  String get groupDetailsTabEmptyAdmin;

  /// No description provided for @groupDetailsTabEmptyMember.
  ///
  /// In en, this message translates to:
  /// **'No details yet.'**
  String get groupDetailsTabEmptyMember;

  /// No description provided for @groupDetailsTabLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String groupDetailsTabLoadError(String error);

  /// No description provided for @groupDetailsTabMembers.
  ///
  /// In en, this message translates to:
  /// **'Members'**
  String get groupDetailsTabMembers;

  /// No description provided for @groupDetailsTabRules.
  ///
  /// In en, this message translates to:
  /// **'RULES'**
  String get groupDetailsTabRules;

  /// No description provided for @groupDetailSuspendedLine.
  ///
  /// In en, this message translates to:
  /// **'{base} ({kind})'**
  String groupDetailSuspendedLine(String base, String kind);

  /// No description provided for @groupDetailSuspendedNoDate.
  ///
  /// In en, this message translates to:
  /// **'Suspended by Luney moderation'**
  String get groupDetailSuspendedNoDate;

  /// No description provided for @groupDetailSuspendedUntil.
  ///
  /// In en, this message translates to:
  /// **'Suspended until {date}'**
  String groupDetailSuspendedUntil(String date);

  /// No description provided for @groupDetailSuspKindFrozen.
  ///
  /// In en, this message translates to:
  /// **'frozen, no access'**
  String get groupDetailSuspKindFrozen;

  /// No description provided for @groupDetailSuspKindViewOnly.
  ///
  /// In en, this message translates to:
  /// **'view-only'**
  String get groupDetailSuspKindViewOnly;

  /// No description provided for @groupDetailTabChat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get groupDetailTabChat;

  /// No description provided for @groupDetailTabDetails.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get groupDetailTabDetails;

  /// No description provided for @groupDetailTabEvents.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get groupDetailTabEvents;

  /// No description provided for @groupDetailTabLobbies.
  ///
  /// In en, this message translates to:
  /// **'Lobbies'**
  String get groupDetailTabLobbies;

  /// No description provided for @groupDetailTabMembers.
  ///
  /// In en, this message translates to:
  /// **'Members'**
  String get groupDetailTabMembers;

  /// No description provided for @groupDetailTabPosts.
  ///
  /// In en, this message translates to:
  /// **'Posts'**
  String get groupDetailTabPosts;

  /// No description provided for @groupDetailUnlockNote.
  ///
  /// In en, this message translates to:
  /// **'Posts and chat unlock after you join.'**
  String get groupDetailUnlockNote;

  /// No description provided for @groupEventsTabCreateCta.
  ///
  /// In en, this message translates to:
  /// **'Create event'**
  String get groupEventsTabCreateCta;

  /// No description provided for @groupEventsTabEmptyCanCreate.
  ///
  /// In en, this message translates to:
  /// **'Plan something for the group. Tap the button below.'**
  String get groupEventsTabEmptyCanCreate;

  /// No description provided for @groupEventsTabEmptyCannotCreate.
  ///
  /// In en, this message translates to:
  /// **'Group admins or mods can create events here.'**
  String get groupEventsTabEmptyCannotCreate;

  /// No description provided for @groupEventsTabEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No upcoming events in {group}'**
  String groupEventsTabEmptyTitle(String group);

  /// No description provided for @groupEventsTabLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String groupEventsTabLoadError(String error);

  /// No description provided for @groupLobbiesTabEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Be the first to start one. Members of this group get a notification.'**
  String get groupLobbiesTabEmptyBody;

  /// No description provided for @groupLobbiesTabEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No live lobbies in {groupName}'**
  String groupLobbiesTabEmptyTitle(String groupName);

  /// No description provided for @groupLobbiesTabPausedBody.
  ///
  /// In en, this message translates to:
  /// **'Live Lobbies is paused this month while we sort out audio costs. Back soon.'**
  String get groupLobbiesTabPausedBody;

  /// No description provided for @groupLobbiesTabPausedTitle.
  ///
  /// In en, this message translates to:
  /// **'Lobbies paused'**
  String get groupLobbiesTabPausedTitle;

  /// No description provided for @groupLobbiesTabStart.
  ///
  /// In en, this message translates to:
  /// **'Start a lobby'**
  String get groupLobbiesTabStart;

  /// No description provided for @groupNotifSettingsClearedBody.
  ///
  /// In en, this message translates to:
  /// **'Every per-group override is gone. Each kind now inherits your app-wide notification preference. The DM permission wasn\'t touched.'**
  String get groupNotifSettingsClearedBody;

  /// No description provided for @groupNotifSettingsClearedRubric.
  ///
  /// In en, this message translates to:
  /// **'CLEARED'**
  String get groupNotifSettingsClearedRubric;

  /// No description provided for @groupNotifSettingsClearedTitle.
  ///
  /// In en, this message translates to:
  /// **'Overrides cleared'**
  String get groupNotifSettingsClearedTitle;

  /// No description provided for @groupNotifSettingsClearMenu.
  ///
  /// In en, this message translates to:
  /// **'Clear overrides'**
  String get groupNotifSettingsClearMenu;

  /// No description provided for @groupNotifSettingsDmSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Off = members of this group can\'t start a new DM with you or send new messages in existing threads. Existing history stays readable. If you share other groups where DMs are on, those still work.'**
  String get groupNotifSettingsDmSubtitle;

  /// No description provided for @groupNotifSettingsDmTitle.
  ///
  /// In en, this message translates to:
  /// **'Allow members to DM me'**
  String get groupNotifSettingsDmTitle;

  /// No description provided for @groupNotifSettingsErrApply.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t apply preference'**
  String get groupNotifSettingsErrApply;

  /// No description provided for @groupNotifSettingsErrSave.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save preference'**
  String get groupNotifSettingsErrSave;

  /// No description provided for @groupNotifSettingsInApp.
  ///
  /// In en, this message translates to:
  /// **'In-app'**
  String get groupNotifSettingsInApp;

  /// No description provided for @groupNotifSettingsInfo.
  ///
  /// In en, this message translates to:
  /// **'Each kind defaults to your app-wide setting. Flip \"Override\" to set group-specific Push + In-app; works even if the kind is silenced globally.'**
  String get groupNotifSettingsInfo;

  /// No description provided for @groupNotifSettingsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String groupNotifSettingsLoadError(String error);

  /// No description provided for @groupNotifSettingsMuteBody.
  ///
  /// In en, this message translates to:
  /// **'Overrides every group-scoped kind to off (push + in-app). Wins over your app-wide setting, so this group goes silent even when notifications are on globally. The DM permission isn\'t changed.'**
  String get groupNotifSettingsMuteBody;

  /// No description provided for @groupNotifSettingsMuteCta.
  ///
  /// In en, this message translates to:
  /// **'Mute group'**
  String get groupNotifSettingsMuteCta;

  /// No description provided for @groupNotifSettingsMutedBody.
  ///
  /// In en, this message translates to:
  /// **'You won\'t get pushes or inbox rows for any kind from this group anymore. Flip individual kinds back on any time from this screen.'**
  String get groupNotifSettingsMutedBody;

  /// No description provided for @groupNotifSettingsMutedRubric.
  ///
  /// In en, this message translates to:
  /// **'MUTED'**
  String get groupNotifSettingsMutedRubric;

  /// No description provided for @groupNotifSettingsMutedTitle.
  ///
  /// In en, this message translates to:
  /// **'Group muted'**
  String get groupNotifSettingsMutedTitle;

  /// No description provided for @groupNotifSettingsMuteTitle.
  ///
  /// In en, this message translates to:
  /// **'Mute this group?'**
  String get groupNotifSettingsMuteTitle;

  /// No description provided for @groupNotifSettingsOverrideOff.
  ///
  /// In en, this message translates to:
  /// **'Inheriting app-wide setting'**
  String get groupNotifSettingsOverrideOff;

  /// No description provided for @groupNotifSettingsOverrideOn.
  ///
  /// In en, this message translates to:
  /// **'Override app-wide setting'**
  String get groupNotifSettingsOverrideOn;

  /// No description provided for @groupNotifSettingsOverridesError.
  ///
  /// In en, this message translates to:
  /// **'Could not load overrides: {error}'**
  String groupNotifSettingsOverridesError(String error);

  /// No description provided for @groupNotifSettingsPush.
  ///
  /// In en, this message translates to:
  /// **'Push'**
  String get groupNotifSettingsPush;

  /// No description provided for @groupNotifSettingsResetBody.
  ///
  /// In en, this message translates to:
  /// **'Removes every per-group override. Each kind goes back to inheriting your app-wide setting. The DM permission isn\'t changed.'**
  String get groupNotifSettingsResetBody;

  /// No description provided for @groupNotifSettingsResetCta.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get groupNotifSettingsResetCta;

  /// No description provided for @groupNotifSettingsResetTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset overrides?'**
  String get groupNotifSettingsResetTitle;

  /// No description provided for @groupNotifSettingsSectionNotifications.
  ///
  /// In en, this message translates to:
  /// **'NOTIFICATIONS'**
  String get groupNotifSettingsSectionNotifications;

  /// No description provided for @groupNotifSettingsSectionPrivacy.
  ///
  /// In en, this message translates to:
  /// **'PRIVACY'**
  String get groupNotifSettingsSectionPrivacy;

  /// No description provided for @groupNotifSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get groupNotifSettingsTitle;

  /// No description provided for @groupPermCommentDesc.
  ///
  /// In en, this message translates to:
  /// **'Reply to existing group-bulletin posts.'**
  String get groupPermCommentDesc;

  /// No description provided for @groupPermCommentLabel.
  ///
  /// In en, this message translates to:
  /// **'Comment on posts'**
  String get groupPermCommentLabel;

  /// No description provided for @groupPermDeleteOthersDesc.
  ///
  /// In en, this message translates to:
  /// **'Remove chat messages from anyone (moderator power).'**
  String get groupPermDeleteOthersDesc;

  /// No description provided for @groupPermDeleteOthersLabel.
  ///
  /// In en, this message translates to:
  /// **'Delete others\' messages'**
  String get groupPermDeleteOthersLabel;

  /// No description provided for @groupPermInviteMembersDesc.
  ///
  /// In en, this message translates to:
  /// **'Generate invite codes for the group.'**
  String get groupPermInviteMembersDesc;

  /// No description provided for @groupPermInviteMembersLabel.
  ///
  /// In en, this message translates to:
  /// **'Invite members'**
  String get groupPermInviteMembersLabel;

  /// No description provided for @groupPermManageGroupDesc.
  ///
  /// In en, this message translates to:
  /// **'Edit group name, privacy, tags, default permissions.'**
  String get groupPermManageGroupDesc;

  /// No description provided for @groupPermManageGroupLabel.
  ///
  /// In en, this message translates to:
  /// **'Manage group'**
  String get groupPermManageGroupLabel;

  /// No description provided for @groupPermManageMembersDesc.
  ///
  /// In en, this message translates to:
  /// **'Kick or change roles of other members.'**
  String get groupPermManageMembersDesc;

  /// No description provided for @groupPermManageMembersLabel.
  ///
  /// In en, this message translates to:
  /// **'Manage members'**
  String get groupPermManageMembersLabel;

  /// No description provided for @groupPermManageRolesDesc.
  ///
  /// In en, this message translates to:
  /// **'Create / edit / delete custom roles.'**
  String get groupPermManageRolesDesc;

  /// No description provided for @groupPermManageRolesLabel.
  ///
  /// In en, this message translates to:
  /// **'Manage roles'**
  String get groupPermManageRolesLabel;

  /// No description provided for @groupPermPinMessagesDesc.
  ///
  /// In en, this message translates to:
  /// **'Pin important messages so they stay at the top.'**
  String get groupPermPinMessagesDesc;

  /// No description provided for @groupPermPinMessagesLabel.
  ///
  /// In en, this message translates to:
  /// **'Pin messages'**
  String get groupPermPinMessagesLabel;

  /// No description provided for @groupPermPostDesc.
  ///
  /// In en, this message translates to:
  /// **'Create new posts on the group bulletin board.'**
  String get groupPermPostDesc;

  /// No description provided for @groupPermPostLabel.
  ///
  /// In en, this message translates to:
  /// **'Post to bulletin'**
  String get groupPermPostLabel;

  /// No description provided for @groupPermReactDesc.
  ///
  /// In en, this message translates to:
  /// **'Add emoji reactions to chat and DMs.'**
  String get groupPermReactDesc;

  /// No description provided for @groupPermReactLabel.
  ///
  /// In en, this message translates to:
  /// **'React to messages'**
  String get groupPermReactLabel;

  /// No description provided for @groupPermSendGifsDesc.
  ///
  /// In en, this message translates to:
  /// **'Share GIFs in group chat (when GIF support lands).'**
  String get groupPermSendGifsDesc;

  /// No description provided for @groupPermSendGifsLabel.
  ///
  /// In en, this message translates to:
  /// **'Send GIFs'**
  String get groupPermSendGifsLabel;

  /// No description provided for @groupPermSendImagesDesc.
  ///
  /// In en, this message translates to:
  /// **'Attach photos to chat messages and posts.'**
  String get groupPermSendImagesDesc;

  /// No description provided for @groupPermSendImagesLabel.
  ///
  /// In en, this message translates to:
  /// **'Send images'**
  String get groupPermSendImagesLabel;

  /// No description provided for @groupPermSendMessagesDesc.
  ///
  /// In en, this message translates to:
  /// **'Send text messages in group chat.'**
  String get groupPermSendMessagesDesc;

  /// No description provided for @groupPermSendMessagesLabel.
  ///
  /// In en, this message translates to:
  /// **'Send messages'**
  String get groupPermSendMessagesLabel;

  /// No description provided for @groupPermViewHistoryDesc.
  ///
  /// In en, this message translates to:
  /// **'See messages posted before they joined.'**
  String get groupPermViewHistoryDesc;

  /// No description provided for @groupPermViewHistoryLabel.
  ///
  /// In en, this message translates to:
  /// **'View history'**
  String get groupPermViewHistoryLabel;

  /// No description provided for @groupPostsComposerHint.
  ///
  /// In en, this message translates to:
  /// **'Post to this group…'**
  String get groupPostsComposerHint;

  /// No description provided for @groupPostsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No posts yet. Write the first one.'**
  String get groupPostsEmpty;

  /// No description provided for @groupPostsErrPost.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t post to group'**
  String get groupPostsErrPost;

  /// No description provided for @groupPostsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load posts: {error}'**
  String groupPostsLoadError(String error);

  /// No description provided for @groupPostsPostCta.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get groupPostsPostCta;

  /// No description provided for @groupPostsRemoved.
  ///
  /// In en, this message translates to:
  /// **'Removed by Luney moderation'**
  String get groupPostsRemoved;

  /// No description provided for @groupPostsTextHint.
  ///
  /// In en, this message translates to:
  /// **'What do you want to share?'**
  String get groupPostsTextHint;

  /// No description provided for @groupRoleInviteAcceptCta.
  ///
  /// In en, this message translates to:
  /// **'Accept & agree to Group Terms of Service'**
  String get groupRoleInviteAcceptCta;

  /// No description provided for @groupRoleInviteAcceptedRubric.
  ///
  /// In en, this message translates to:
  /// **'INVITE ACCEPTED'**
  String get groupRoleInviteAcceptedRubric;

  /// No description provided for @groupRoleInviteAcceptErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t accept invite'**
  String get groupRoleInviteAcceptErrorOp;

  /// No description provided for @groupRoleInviteBeforeAccept.
  ///
  /// In en, this message translates to:
  /// **'BEFORE YOU ACCEPT'**
  String get groupRoleInviteBeforeAccept;

  /// No description provided for @groupRoleInviteBeforeAcceptBody.
  ///
  /// In en, this message translates to:
  /// **'Group admins and moderators agree to additional rules on top of the platform-wide Terms of Service. They cover how to enforce community rules, how to use moderator tools, and what behaviour we expect when you\'re acting on Luney\'s behalf inside a group. By accepting this invite you confirm you\'ve read and agree to follow them.'**
  String get groupRoleInviteBeforeAcceptBody;

  /// No description provided for @groupRoleInviteDecline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get groupRoleInviteDecline;

  /// No description provided for @groupRoleInviteDeclineConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'You\'ll stay in {group} as a member. The owner can re-invite you any time.'**
  String groupRoleInviteDeclineConfirmBody(String group);

  /// No description provided for @groupRoleInviteDeclineConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Decline this invite?'**
  String get groupRoleInviteDeclineConfirmTitle;

  /// No description provided for @groupRoleInviteDeclinedBody.
  ///
  /// In en, this message translates to:
  /// **'You\'re still a member of {group}. The owner can re-invite you any time.'**
  String groupRoleInviteDeclinedBody(String group);

  /// No description provided for @groupRoleInviteDeclinedRubric.
  ///
  /// In en, this message translates to:
  /// **'INVITE DECLINED'**
  String get groupRoleInviteDeclinedRubric;

  /// No description provided for @groupRoleInviteDeclinedTitle.
  ///
  /// In en, this message translates to:
  /// **'Invite declined'**
  String get groupRoleInviteDeclinedTitle;

  /// No description provided for @groupRoleInviteDeclineErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t decline invite'**
  String get groupRoleInviteDeclineErrorOp;

  /// No description provided for @groupRoleInviteGroupFallback.
  ///
  /// In en, this message translates to:
  /// **'a group'**
  String get groupRoleInviteGroupFallback;

  /// No description provided for @groupRoleInviteIntro.
  ///
  /// In en, this message translates to:
  /// **'{inviter} invited you to be {article} of {group}. As {article}, you\'ll help keep the group safe and on-topic: review reports, remove rule-breaking content, and (for admins) shape who else can help moderate.'**
  String groupRoleInviteIntro(String inviter, String article, String group);

  /// No description provided for @groupRoleInviteLater.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get groupRoleInviteLater;

  /// No description provided for @groupRoleInviteLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load this invite.\n{error}'**
  String groupRoleInviteLoadError(String error);

  /// No description provided for @groupRoleInviteNowAdminBody.
  ///
  /// In en, this message translates to:
  /// **'You can help moderate {group}: review reports, remove rule-breaking content, and shape who else can help moderate.'**
  String groupRoleInviteNowAdminBody(String group);

  /// No description provided for @groupRoleInviteNowAdminTitle.
  ///
  /// In en, this message translates to:
  /// **'You\'re now an admin'**
  String get groupRoleInviteNowAdminTitle;

  /// No description provided for @groupRoleInviteNowModBody.
  ///
  /// In en, this message translates to:
  /// **'You can help moderate {group}: review reports and remove rule-breaking content.'**
  String groupRoleInviteNowModBody(String group);

  /// No description provided for @groupRoleInviteNowModTitle.
  ///
  /// In en, this message translates to:
  /// **'You\'re now a moderator'**
  String get groupRoleInviteNowModTitle;

  /// No description provided for @groupRoleInviteOpenGroup.
  ///
  /// In en, this message translates to:
  /// **'Open group'**
  String get groupRoleInviteOpenGroup;

  /// No description provided for @groupRoleInviteReadFirst.
  ///
  /// In en, this message translates to:
  /// **'Read the Terms above first'**
  String get groupRoleInviteReadFirst;

  /// No description provided for @groupRoleInviteResolved.
  ///
  /// In en, this message translates to:
  /// **'This invite has already been accepted, declined, or revoked. You\'re good either way. Nothing else to do here.'**
  String get groupRoleInviteResolved;

  /// No description provided for @groupRoleInviteRoleArticleAdmin.
  ///
  /// In en, this message translates to:
  /// **'an admin'**
  String get groupRoleInviteRoleArticleAdmin;

  /// No description provided for @groupRoleInviteRoleArticleMod.
  ///
  /// In en, this message translates to:
  /// **'a moderator'**
  String get groupRoleInviteRoleArticleMod;

  /// No description provided for @groupRoleInviteRoleLabelAdmin.
  ///
  /// In en, this message translates to:
  /// **'Group admin'**
  String get groupRoleInviteRoleLabelAdmin;

  /// No description provided for @groupRoleInviteRoleLabelMod.
  ///
  /// In en, this message translates to:
  /// **'Group moderator'**
  String get groupRoleInviteRoleLabelMod;

  /// No description provided for @groupRoleInviteSomeone.
  ///
  /// In en, this message translates to:
  /// **'Someone'**
  String get groupRoleInviteSomeone;

  /// No description provided for @groupRoleInviteTitle.
  ///
  /// In en, this message translates to:
  /// **'Group invitation'**
  String get groupRoleInviteTitle;

  /// No description provided for @groupRoleInviteTosRead.
  ///
  /// In en, this message translates to:
  /// **'Group Terms of Service · read ✓'**
  String get groupRoleInviteTosRead;

  /// No description provided for @groupRoleInviteTosUnread.
  ///
  /// In en, this message translates to:
  /// **'Read the Group Terms of Service'**
  String get groupRoleInviteTosUnread;

  /// No description provided for @groupRoleInviteTosUpdatedBody.
  ///
  /// In en, this message translates to:
  /// **'A new Group ToS was just published. Review and accept it, then come back here to accept this invite.'**
  String get groupRoleInviteTosUpdatedBody;

  /// No description provided for @groupRoleInviteTosUpdatedRubric.
  ///
  /// In en, this message translates to:
  /// **'GROUP TOS UPDATED'**
  String get groupRoleInviteTosUpdatedRubric;

  /// No description provided for @groupRoleInviteTosUpdatedTitle.
  ///
  /// In en, this message translates to:
  /// **'New Group Terms of Service'**
  String get groupRoleInviteTosUpdatedTitle;

  /// No description provided for @groupSafetyPostureBadgeOff.
  ///
  /// In en, this message translates to:
  /// **'OFF'**
  String get groupSafetyPostureBadgeOff;

  /// No description provided for @groupSafetyPostureBadgeOn.
  ///
  /// In en, this message translates to:
  /// **'ON'**
  String get groupSafetyPostureBadgeOn;

  /// No description provided for @groupSafetyPostureLabel.
  ///
  /// In en, this message translates to:
  /// **'SAFETY'**
  String get groupSafetyPostureLabel;

  /// No description provided for @groupSafetyPostureOff.
  ///
  /// In en, this message translates to:
  /// **'Off. Screenshots here are not flagged. Photos and messages you share can be captured without anyone being told.'**
  String get groupSafetyPostureOff;

  /// No description provided for @groupSafetyPostureOn.
  ///
  /// In en, this message translates to:
  /// **'On. If someone screenshots in this group, the photo\'s owner is notified and a note is added to the chat.'**
  String get groupSafetyPostureOn;

  /// No description provided for @groupSafetyPostureScreenshotTitle.
  ///
  /// In en, this message translates to:
  /// **'Screenshot warnings'**
  String get groupSafetyPostureScreenshotTitle;

  /// No description provided for @groupsCreateButton.
  ///
  /// In en, this message translates to:
  /// **'+ Create group'**
  String get groupsCreateButton;

  /// No description provided for @groupsCreateSemantic.
  ///
  /// In en, this message translates to:
  /// **'Create group'**
  String get groupsCreateSemantic;

  /// No description provided for @groupsEmptyCreate.
  ///
  /// In en, this message translates to:
  /// **'No groups yet. Create the first one.'**
  String get groupsEmptyCreate;

  /// No description provided for @groupsEmptyHidden.
  ///
  /// In en, this message translates to:
  /// **'No groups yet.'**
  String get groupsEmptyHidden;

  /// No description provided for @groupSettingsAboutHint.
  ///
  /// In en, this message translates to:
  /// **'About this group: rules, links, what to expect (up to 4000 chars)'**
  String get groupSettingsAboutHint;

  /// No description provided for @groupSettingsAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get groupSettingsAdd;

  /// No description provided for @groupSettingsAddRule.
  ///
  /// In en, this message translates to:
  /// **'Add rule'**
  String get groupSettingsAddRule;

  /// No description provided for @groupSettingsAuditEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Admin actions (deletes, role changes, emoji uploads, etc.) will show up here. Visible to members with the View audit log permission.'**
  String get groupSettingsAuditEmptyBody;

  /// No description provided for @groupSettingsAuditEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'Nothing here yet.'**
  String get groupSettingsAuditEmptyTitle;

  /// No description provided for @groupSettingsAuditSomeone.
  ///
  /// In en, this message translates to:
  /// **'Someone'**
  String get groupSettingsAuditSomeone;

  /// No description provided for @groupSettingsConfirmDeletionTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm deletion'**
  String get groupSettingsConfirmDeletionTitle;

  /// No description provided for @groupSettingsContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get groupSettingsContinue;

  /// No description provided for @groupSettingsCreateInvite.
  ///
  /// In en, this message translates to:
  /// **'Create invite'**
  String get groupSettingsCreateInvite;

  /// No description provided for @groupSettingsCreatingInvite.
  ///
  /// In en, this message translates to:
  /// **'Creating…'**
  String get groupSettingsCreatingInvite;

  /// No description provided for @groupSettingsDefaultMemberInfo.
  ///
  /// In en, this message translates to:
  /// **'What every member can do unless a custom role grants more. Always applies on top of admin / mod baselines.'**
  String get groupSettingsDefaultMemberInfo;

  /// No description provided for @groupSettingsDefaultMemberRoleTitle.
  ///
  /// In en, this message translates to:
  /// **'Default Member Role'**
  String get groupSettingsDefaultMemberRoleTitle;

  /// No description provided for @groupSettingsDeleteEmojiBody.
  ///
  /// In en, this message translates to:
  /// **'Existing reactions and chat messages keep their reference but render the literal :{code}: instead.'**
  String groupSettingsDeleteEmojiBody(String code);

  /// No description provided for @groupSettingsDeleteEmojiTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete :{code}: ?'**
  String groupSettingsDeleteEmojiTitle(String code);

  /// No description provided for @groupSettingsDeleteGroupBody.
  ///
  /// In en, this message translates to:
  /// **'As soon as you confirm, the group disappears for everyone, including you. You then have 7 days to email Luney Support if you want it brought back. After 7 days the group and everything in it (posts, chat, photos) is deleted for good and can\'t be recovered. You can\'t undo this yourself, only Support can, and only within those 7 days.'**
  String get groupSettingsDeleteGroupBody;

  /// No description provided for @groupSettingsDeleteGroupLabel.
  ///
  /// In en, this message translates to:
  /// **'Delete group'**
  String get groupSettingsDeleteGroupLabel;

  /// No description provided for @groupSettingsDeleteGroupSub.
  ///
  /// In en, this message translates to:
  /// **'Hides the group for everyone right away. You have 7 days to contact Support to bring it back, then it\'s gone for good. Owner only.'**
  String get groupSettingsDeleteGroupSub;

  /// No description provided for @groupSettingsDeleteGroupTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this group?'**
  String get groupSettingsDeleteGroupTitle;

  /// No description provided for @groupSettingsDeleteRoleBody.
  ///
  /// In en, this message translates to:
  /// **'Members with this role will lose its permissions.'**
  String get groupSettingsDeleteRoleBody;

  /// No description provided for @groupSettingsDeleteRoleTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete role?'**
  String get groupSettingsDeleteRoleTitle;

  /// No description provided for @groupSettingsDescHint.
  ///
  /// In en, this message translates to:
  /// **'Short summary (up to 500 chars)'**
  String get groupSettingsDescHint;

  /// No description provided for @groupSettingsDetailsBodyLenErr.
  ///
  /// In en, this message translates to:
  /// **'About text must be 4000 chars or less.'**
  String get groupSettingsDetailsBodyLenErr;

  /// No description provided for @groupSettingsDetailsDescLenErr.
  ///
  /// In en, this message translates to:
  /// **'Short description must be 500 chars or less.'**
  String get groupSettingsDetailsDescLenErr;

  /// No description provided for @groupSettingsDetailsGuestLenErr.
  ///
  /// In en, this message translates to:
  /// **'Guest welcome must be 4000 chars or less.'**
  String get groupSettingsDetailsGuestLenErr;

  /// No description provided for @groupSettingsDetailsIntro.
  ///
  /// In en, this message translates to:
  /// **'Shown on the Details tab. The short summary appears at the top of the join page; the longer \"About\" body shows below it.'**
  String get groupSettingsDetailsIntro;

  /// No description provided for @groupSettingsDetailsRubric.
  ///
  /// In en, this message translates to:
  /// **'DETAILS UPDATED'**
  String get groupSettingsDetailsRubric;

  /// No description provided for @groupSettingsDetailsSavedMsg.
  ///
  /// In en, this message translates to:
  /// **'The Details tab now shows your updated description and About body. Non-members see what you allowed via the guest toggles.'**
  String get groupSettingsDetailsSavedMsg;

  /// No description provided for @groupSettingsDetailsSavedTitle.
  ///
  /// In en, this message translates to:
  /// **'Details saved'**
  String get groupSettingsDetailsSavedTitle;

  /// No description provided for @groupSettingsDetailsUpToDate.
  ///
  /// In en, this message translates to:
  /// **'Details up to date'**
  String get groupSettingsDetailsUpToDate;

  /// No description provided for @groupSettingsEditRoleTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Role'**
  String get groupSettingsEditRoleTitle;

  /// No description provided for @groupSettingsEditRule.
  ///
  /// In en, this message translates to:
  /// **'Edit rule'**
  String get groupSettingsEditRule;

  /// No description provided for @groupSettingsEmojiCapErr.
  ///
  /// In en, this message translates to:
  /// **'Hit the 50-emoji cap for this group. Delete one to upload more.'**
  String get groupSettingsEmojiCapErr;

  /// No description provided for @groupSettingsEmojiDupErr.
  ///
  /// In en, this message translates to:
  /// **'A different emoji already uses that shortcode.'**
  String get groupSettingsEmojiDupErr;

  /// No description provided for @groupSettingsEmojiShortcodeErr.
  ///
  /// In en, this message translates to:
  /// **'Shortcode must be 2–32 lowercase letters, numbers, or underscores.'**
  String get groupSettingsEmojiShortcodeErr;

  /// No description provided for @groupSettingsEmojisIntro.
  ///
  /// In en, this message translates to:
  /// **'Custom emojis show up in the picker for everyone in this group. VIPs can use them across every group they\'re in (unless this group is private). 50 max per group · 256 KB each · PNG / GIF / WEBP.'**
  String get groupSettingsEmojisIntro;

  /// No description provided for @groupSettingsEmojiTooBig.
  ///
  /// In en, this message translates to:
  /// **'Emoji must be under 256 KB (this one is {kb} KB).'**
  String groupSettingsEmojiTooBig(int kb);

  /// No description provided for @groupSettingsEntriesOnRecord.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 entry on record} other{{count} entries on record}}'**
  String groupSettingsEntriesOnRecord(int count);

  /// No description provided for @groupSettingsErrChangeSetting.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t change setting'**
  String get groupSettingsErrChangeSetting;

  /// No description provided for @groupSettingsErrCreateInvite.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t create invite'**
  String get groupSettingsErrCreateInvite;

  /// No description provided for @groupSettingsErrCreateRole.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t create role'**
  String get groupSettingsErrCreateRole;

  /// No description provided for @groupSettingsErrDeleteEmoji.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete emoji'**
  String get groupSettingsErrDeleteEmoji;

  /// No description provided for @groupSettingsErrDeleteGroup.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete the group'**
  String get groupSettingsErrDeleteGroup;

  /// No description provided for @groupSettingsErrDeleteRole.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete role'**
  String get groupSettingsErrDeleteRole;

  /// No description provided for @groupSettingsErrLoadAuditLog.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load audit log: {error}'**
  String groupSettingsErrLoadAuditLog(String error);

  /// No description provided for @groupSettingsErrLoadEmojis.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load emojis: {error}'**
  String groupSettingsErrLoadEmojis(String error);

  /// No description provided for @groupSettingsErrLoadGroup.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load group: {error}'**
  String groupSettingsErrLoadGroup(String error);

  /// No description provided for @groupSettingsErrLoadHistory.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load history: {error}'**
  String groupSettingsErrLoadHistory(String error);

  /// No description provided for @groupSettingsErrLoadInvites.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load invites: {error}'**
  String groupSettingsErrLoadInvites(String error);

  /// No description provided for @groupSettingsErrLoadRoles.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load roles: {error}'**
  String groupSettingsErrLoadRoles(String error);

  /// No description provided for @groupSettingsErrLoadViolations.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String groupSettingsErrLoadViolations(String error);

  /// No description provided for @groupSettingsErrRemovePhoto.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t remove photo'**
  String get groupSettingsErrRemovePhoto;

  /// No description provided for @groupSettingsErrRename.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t rename the group'**
  String get groupSettingsErrRename;

  /// No description provided for @groupSettingsErrRevokeInvite.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t revoke invite'**
  String get groupSettingsErrRevokeInvite;

  /// No description provided for @groupSettingsErrRoleLimit.
  ///
  /// In en, this message translates to:
  /// **'You\'ve hit the role limit for this group.'**
  String get groupSettingsErrRoleLimit;

  /// No description provided for @groupSettingsErrSaveDetails.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save details'**
  String get groupSettingsErrSaveDetails;

  /// No description provided for @groupSettingsErrSaveRole.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save role'**
  String get groupSettingsErrSaveRole;

  /// No description provided for @groupSettingsErrSaveRules.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save rules'**
  String get groupSettingsErrSaveRules;

  /// No description provided for @groupSettingsErrSaveTags.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save tags'**
  String get groupSettingsErrSaveTags;

  /// No description provided for @groupSettingsErrUploadPhoto.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t upload photo'**
  String get groupSettingsErrUploadPhoto;

  /// No description provided for @groupSettingsErrWipeChat.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t wipe chat'**
  String get groupSettingsErrWipeChat;

  /// No description provided for @groupSettingsExpires.
  ///
  /// In en, this message translates to:
  /// **'Expires'**
  String get groupSettingsExpires;

  /// No description provided for @groupSettingsExpiry12Hours.
  ///
  /// In en, this message translates to:
  /// **'12 hours'**
  String get groupSettingsExpiry12Hours;

  /// No description provided for @groupSettingsExpiry1Day.
  ///
  /// In en, this message translates to:
  /// **'1 day'**
  String get groupSettingsExpiry1Day;

  /// No description provided for @groupSettingsExpiry1Hour.
  ///
  /// In en, this message translates to:
  /// **'1 hour'**
  String get groupSettingsExpiry1Hour;

  /// No description provided for @groupSettingsExpiry30Days.
  ///
  /// In en, this message translates to:
  /// **'30 days'**
  String get groupSettingsExpiry30Days;

  /// No description provided for @groupSettingsExpiry6Hours.
  ///
  /// In en, this message translates to:
  /// **'6 hours'**
  String get groupSettingsExpiry6Hours;

  /// No description provided for @groupSettingsExpiry7Days.
  ///
  /// In en, this message translates to:
  /// **'7 days'**
  String get groupSettingsExpiry7Days;

  /// No description provided for @groupSettingsExpiryNever.
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get groupSettingsExpiryNever;

  /// No description provided for @groupSettingsGroupDeletedMsg.
  ///
  /// In en, this message translates to:
  /// **'The group is now hidden from everyone. If you change your mind, email Luney Support before {date} and they can bring it back. After that date the group and everything in it is gone for good.'**
  String groupSettingsGroupDeletedMsg(String date);

  /// No description provided for @groupSettingsGroupDeletedRubric.
  ///
  /// In en, this message translates to:
  /// **'GROUP DELETED'**
  String get groupSettingsGroupDeletedRubric;

  /// No description provided for @groupSettingsGroupDeletedTitle.
  ///
  /// In en, this message translates to:
  /// **'Group deleted'**
  String get groupSettingsGroupDeletedTitle;

  /// No description provided for @groupSettingsGuestBodyToggle.
  ///
  /// In en, this message translates to:
  /// **'Welcome guests with a separate message'**
  String get groupSettingsGuestBodyToggle;

  /// No description provided for @groupSettingsGuestBodyToggleSub.
  ///
  /// In en, this message translates to:
  /// **'When on, non-members see your guest welcome instead of the main \"About\" body.'**
  String get groupSettingsGuestBodyToggleSub;

  /// No description provided for @groupSettingsGuestHint.
  ///
  /// In en, this message translates to:
  /// **'Welcome guests: what to know before joining (up to 4000 chars)'**
  String get groupSettingsGuestHint;

  /// No description provided for @groupSettingsHideWhoJoined.
  ///
  /// In en, this message translates to:
  /// **'Hide who joined'**
  String get groupSettingsHideWhoJoined;

  /// No description provided for @groupSettingsInfoNameLenErr.
  ///
  /// In en, this message translates to:
  /// **'Group name must be between 2 and 60 characters.'**
  String get groupSettingsInfoNameLenErr;

  /// No description provided for @groupSettingsInfoNameNotAllowed.
  ///
  /// In en, this message translates to:
  /// **'That group name isn\'t allowed.'**
  String get groupSettingsInfoNameNotAllowed;

  /// No description provided for @groupSettingsInfoRenamedMsg.
  ///
  /// In en, this message translates to:
  /// **'Members see the new name everywhere the group appears. The rename is recorded in the group audit log.'**
  String get groupSettingsInfoRenamedMsg;

  /// No description provided for @groupSettingsInfoRenamedRubric.
  ///
  /// In en, this message translates to:
  /// **'GROUP RENAMED'**
  String get groupSettingsInfoRenamedRubric;

  /// No description provided for @groupSettingsInfoRenamedTitle.
  ///
  /// In en, this message translates to:
  /// **'Name updated'**
  String get groupSettingsInfoRenamedTitle;

  /// No description provided for @groupSettingsInviteCopied.
  ///
  /// In en, this message translates to:
  /// **'Invite link copied'**
  String get groupSettingsInviteCopied;

  /// No description provided for @groupSettingsInviteExpired.
  ///
  /// In en, this message translates to:
  /// **'expired {when}'**
  String groupSettingsInviteExpired(String when);

  /// No description provided for @groupSettingsInviteExpires.
  ///
  /// In en, this message translates to:
  /// **'expires {when}'**
  String groupSettingsInviteExpires(String when);

  /// No description provided for @groupSettingsInviteRevoked.
  ///
  /// In en, this message translates to:
  /// **'revoked {when}'**
  String groupSettingsInviteRevoked(String when);

  /// No description provided for @groupSettingsInvitesActive.
  ///
  /// In en, this message translates to:
  /// **'ACTIVE'**
  String get groupSettingsInvitesActive;

  /// No description provided for @groupSettingsInviteShareText.
  ///
  /// In en, this message translates to:
  /// **'Join me on Luney → {link}'**
  String groupSettingsInviteShareText(String link);

  /// No description provided for @groupSettingsInvitesHistory.
  ///
  /// In en, this message translates to:
  /// **'HISTORY'**
  String get groupSettingsInvitesHistory;

  /// No description provided for @groupSettingsInvitesIntro.
  ///
  /// In en, this message translates to:
  /// **'Share an invite link to bring people in. Pick how many people can use it and how long it stays valid.'**
  String get groupSettingsInvitesIntro;

  /// No description provided for @groupSettingsInviteUsed.
  ///
  /// In en, this message translates to:
  /// **'{used}/{max} used'**
  String groupSettingsInviteUsed(int used, int max);

  /// No description provided for @groupSettingsIssued.
  ///
  /// In en, this message translates to:
  /// **'Issued {date}'**
  String groupSettingsIssued(String date);

  /// No description provided for @groupSettingsJoinAnnounceToggle.
  ///
  /// In en, this message translates to:
  /// **'Announce joins in chat'**
  String get groupSettingsJoinAnnounceToggle;

  /// No description provided for @groupSettingsJoinAnnounceToggleSub.
  ///
  /// In en, this message translates to:
  /// **'Drops a centered \"👋 X joined the group\" line when someone new joins.'**
  String get groupSettingsJoinAnnounceToggleSub;

  /// No description provided for @groupSettingsJoinedAgo.
  ///
  /// In en, this message translates to:
  /// **'joined {when}'**
  String groupSettingsJoinedAgo(String when);

  /// No description provided for @groupSettingsKindFrozen.
  ///
  /// In en, this message translates to:
  /// **'frozen, no access'**
  String get groupSettingsKindFrozen;

  /// No description provided for @groupSettingsKindViewOnly.
  ///
  /// In en, this message translates to:
  /// **'view-only'**
  String get groupSettingsKindViewOnly;

  /// No description provided for @groupSettingsLabelChat.
  ///
  /// In en, this message translates to:
  /// **'CHAT'**
  String get groupSettingsLabelChat;

  /// No description provided for @groupSettingsLabelColor.
  ///
  /// In en, this message translates to:
  /// **'COLOR'**
  String get groupSettingsLabelColor;

  /// No description provided for @groupSettingsLabelDangerZone.
  ///
  /// In en, this message translates to:
  /// **'DANGER ZONE'**
  String get groupSettingsLabelDangerZone;

  /// No description provided for @groupSettingsLabelDetails.
  ///
  /// In en, this message translates to:
  /// **'DETAILS'**
  String get groupSettingsLabelDetails;

  /// No description provided for @groupSettingsLabelName.
  ///
  /// In en, this message translates to:
  /// **'NAME'**
  String get groupSettingsLabelName;

  /// No description provided for @groupSettingsLabelNonMemberPreview.
  ///
  /// In en, this message translates to:
  /// **'NON-MEMBER PREVIEW'**
  String get groupSettingsLabelNonMemberPreview;

  /// No description provided for @groupSettingsLabelPermissions.
  ///
  /// In en, this message translates to:
  /// **'PERMISSIONS'**
  String get groupSettingsLabelPermissions;

  /// No description provided for @groupSettingsLabelPhoto.
  ///
  /// In en, this message translates to:
  /// **'PHOTO'**
  String get groupSettingsLabelPhoto;

  /// No description provided for @groupSettingsLabelRules.
  ///
  /// In en, this message translates to:
  /// **'RULES'**
  String get groupSettingsLabelRules;

  /// No description provided for @groupSettingsLabelSafety.
  ///
  /// In en, this message translates to:
  /// **'SAFETY'**
  String get groupSettingsLabelSafety;

  /// No description provided for @groupSettingsLabelTags.
  ///
  /// In en, this message translates to:
  /// **'TAGS'**
  String get groupSettingsLabelTags;

  /// No description provided for @groupSettingsMaxUses.
  ///
  /// In en, this message translates to:
  /// **'Max uses'**
  String get groupSettingsMaxUses;

  /// No description provided for @groupSettingsMemberRoleName.
  ///
  /// In en, this message translates to:
  /// **'Member'**
  String get groupSettingsMemberRoleName;

  /// No description provided for @groupSettingsNameHint.
  ///
  /// In en, this message translates to:
  /// **'Group name (2 to 60 characters)'**
  String get groupSettingsNameHint;

  /// No description provided for @groupSettingsNameUpToDate.
  ///
  /// In en, this message translates to:
  /// **'Name up to date'**
  String get groupSettingsNameUpToDate;

  /// No description provided for @groupSettingsNewRole.
  ///
  /// In en, this message translates to:
  /// **'New role'**
  String get groupSettingsNewRole;

  /// No description provided for @groupSettingsNewRoleTitle.
  ///
  /// In en, this message translates to:
  /// **'New Role'**
  String get groupSettingsNewRoleTitle;

  /// No description provided for @groupSettingsNoEmojis.
  ///
  /// In en, this message translates to:
  /// **'No emojis yet. Upload PNGs / GIFs to get started.'**
  String get groupSettingsNoEmojis;

  /// No description provided for @groupSettingsNoExtraPerms.
  ///
  /// In en, this message translates to:
  /// **'No extra permissions'**
  String get groupSettingsNoExtraPerms;

  /// No description provided for @groupSettingsNoInvites.
  ///
  /// In en, this message translates to:
  /// **'No invites yet.'**
  String get groupSettingsNoInvites;

  /// No description provided for @groupSettingsNoJoins.
  ///
  /// In en, this message translates to:
  /// **'No one has joined with this code yet.'**
  String get groupSettingsNoJoins;

  /// No description provided for @groupSettingsNoUserNote.
  ///
  /// In en, this message translates to:
  /// **'No user-facing note provided.'**
  String get groupSettingsNoUserNote;

  /// No description provided for @groupSettingsNoViolations.
  ///
  /// In en, this message translates to:
  /// **'No violations on this group.'**
  String get groupSettingsNoViolations;

  /// No description provided for @groupSettingsNoViolationsBody.
  ///
  /// In en, this message translates to:
  /// **'Staff-issued suspensions and their appeal threads show up here.'**
  String get groupSettingsNoViolationsBody;

  /// No description provided for @groupSettingsPermCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 permission} other{{count} permissions}}'**
  String groupSettingsPermCount(int count);

  /// No description provided for @groupSettingsPhotoHasNote.
  ///
  /// In en, this message translates to:
  /// **'Replaces the gradient banner. Emoji still used as a tiny fallback in tight spaces.'**
  String get groupSettingsPhotoHasNote;

  /// No description provided for @groupSettingsPhotoNoneNote.
  ///
  /// In en, this message translates to:
  /// **'No photo yet. The gradient + emoji are used for the banner.'**
  String get groupSettingsPhotoNoneNote;

  /// No description provided for @groupSettingsRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get groupSettingsRemove;

  /// No description provided for @groupSettingsReplacePhoto.
  ///
  /// In en, this message translates to:
  /// **'Replace photo'**
  String get groupSettingsReplacePhoto;

  /// No description provided for @groupSettingsReportsEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Reports filed by members about content in this group will land here. After 48 hours without action, anything still open escalates to Luney staff.'**
  String get groupSettingsReportsEmptyBody;

  /// No description provided for @groupSettingsReportsEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No open reports.'**
  String get groupSettingsReportsEmptyTitle;

  /// No description provided for @groupSettingsRevoke.
  ///
  /// In en, this message translates to:
  /// **'Revoke'**
  String get groupSettingsRevoke;

  /// No description provided for @groupSettingsRoleNameHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Verified, Mod, Pinned'**
  String get groupSettingsRoleNameHint;

  /// No description provided for @groupSettingsRolesIntro.
  ///
  /// In en, this message translates to:
  /// **'Custom roles let you grant permissions to specific members. Tap \"Member\" to edit what every member can do by default.'**
  String get groupSettingsRolesIntro;

  /// No description provided for @groupSettingsRuleDescHint.
  ///
  /// In en, this message translates to:
  /// **'Description (optional). Explain the rule'**
  String get groupSettingsRuleDescHint;

  /// No description provided for @groupSettingsRuleDescLen.
  ///
  /// In en, this message translates to:
  /// **'Description must be 500 chars or less.'**
  String get groupSettingsRuleDescLen;

  /// No description provided for @groupSettingsRuleLimitReached.
  ///
  /// In en, this message translates to:
  /// **'Rule limit reached'**
  String get groupSettingsRuleLimitReached;

  /// No description provided for @groupSettingsRulesIntro2.
  ///
  /// In en, this message translates to:
  /// **'Numbered list shown on the Details tab. Members run /rules in chat to post the current rules to everyone. Up to 20 rules. Each rule has a title and an optional longer explanation. Tap a rule to edit it.'**
  String get groupSettingsRulesIntro2;

  /// No description provided for @groupSettingsRulesMax.
  ///
  /// In en, this message translates to:
  /// **'Up to 20 rules per group.'**
  String get groupSettingsRulesMax;

  /// No description provided for @groupSettingsRulesRubric.
  ///
  /// In en, this message translates to:
  /// **'RULES UPDATED'**
  String get groupSettingsRulesRubric;

  /// No description provided for @groupSettingsRulesSavedMsg.
  ///
  /// In en, this message translates to:
  /// **'Members see the new list on the Details tab. Anyone can run /rules in chat to drop the rules into the room.'**
  String get groupSettingsRulesSavedMsg;

  /// No description provided for @groupSettingsRulesSavedTitle.
  ///
  /// In en, this message translates to:
  /// **'Rules saved'**
  String get groupSettingsRulesSavedTitle;

  /// No description provided for @groupSettingsRulesUpToDate.
  ///
  /// In en, this message translates to:
  /// **'Rules up to date'**
  String get groupSettingsRulesUpToDate;

  /// No description provided for @groupSettingsRuleTitleHint.
  ///
  /// In en, this message translates to:
  /// **'Rule title (required)'**
  String get groupSettingsRuleTitleHint;

  /// No description provided for @groupSettingsRuleTitleLen.
  ///
  /// In en, this message translates to:
  /// **'Title must be 120 chars or less.'**
  String get groupSettingsRuleTitleLen;

  /// No description provided for @groupSettingsRuleTitleRequired.
  ///
  /// In en, this message translates to:
  /// **'Rule title is required.'**
  String get groupSettingsRuleTitleRequired;

  /// No description provided for @groupSettingsSaveDetails.
  ///
  /// In en, this message translates to:
  /// **'Save details'**
  String get groupSettingsSaveDetails;

  /// No description provided for @groupSettingsSaveName.
  ///
  /// In en, this message translates to:
  /// **'Save name'**
  String get groupSettingsSaveName;

  /// No description provided for @groupSettingsSaveRules.
  ///
  /// In en, this message translates to:
  /// **'Save rules'**
  String get groupSettingsSaveRules;

  /// No description provided for @groupSettingsSaveTags.
  ///
  /// In en, this message translates to:
  /// **'Save tags'**
  String get groupSettingsSaveTags;

  /// No description provided for @groupSettingsSaving.
  ///
  /// In en, this message translates to:
  /// **'Saving…'**
  String get groupSettingsSaving;

  /// No description provided for @groupSettingsScreenshotToggle.
  ///
  /// In en, this message translates to:
  /// **'Warn on screenshots'**
  String get groupSettingsScreenshotToggle;

  /// No description provided for @groupSettingsScreenshotToggleSub.
  ///
  /// In en, this message translates to:
  /// **'When someone screenshots inside this group, drop a \"screenshot taken\" line into chat and notify the photo owner. Turn off for groups where photo sharing should feel friction-free.'**
  String get groupSettingsScreenshotToggleSub;

  /// No description provided for @groupSettingsShortcodeBody.
  ///
  /// In en, this message translates to:
  /// **'Lowercase letters, numbers, and underscores. Used like :happy_pride: when typing.'**
  String get groupSettingsShortcodeBody;

  /// No description provided for @groupSettingsShortcodeHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. happy_pride'**
  String get groupSettingsShortcodeHint;

  /// No description provided for @groupSettingsShortcodeTitle.
  ///
  /// In en, this message translates to:
  /// **'Shortcode'**
  String get groupSettingsShortcodeTitle;

  /// No description provided for @groupSettingsShortcodeValErr.
  ///
  /// In en, this message translates to:
  /// **'2–32 chars, lowercase + digits + underscore.'**
  String get groupSettingsShortcodeValErr;

  /// No description provided for @groupSettingsShowDetailsToggle.
  ///
  /// In en, this message translates to:
  /// **'Show Details to non-members'**
  String get groupSettingsShowDetailsToggle;

  /// No description provided for @groupSettingsShowDetailsToggleSub.
  ///
  /// In en, this message translates to:
  /// **'When off, the join preview only shows the short summary. Members always see the full Details tab.'**
  String get groupSettingsShowDetailsToggleSub;

  /// No description provided for @groupSettingsShowWhoJoined.
  ///
  /// In en, this message translates to:
  /// **'Show who joined ({count})'**
  String groupSettingsShowWhoJoined(int count);

  /// No description provided for @groupSettingsStandingGood.
  ///
  /// In en, this message translates to:
  /// **'Group in good standing'**
  String get groupSettingsStandingGood;

  /// No description provided for @groupSettingsStandingMultiple.
  ///
  /// In en, this message translates to:
  /// **'Multiple violations on file'**
  String get groupSettingsStandingMultiple;

  /// No description provided for @groupSettingsStandingSuspended.
  ///
  /// In en, this message translates to:
  /// **'Currently suspended'**
  String get groupSettingsStandingSuspended;

  /// No description provided for @groupSettingsSuspension.
  ///
  /// In en, this message translates to:
  /// **'Suspension'**
  String get groupSettingsSuspension;

  /// No description provided for @groupSettingsSuspPermanent.
  ///
  /// In en, this message translates to:
  /// **'{kind} · permanent'**
  String groupSettingsSuspPermanent(String kind);

  /// No description provided for @groupSettingsSuspUntil.
  ///
  /// In en, this message translates to:
  /// **'{kind} · until {date}'**
  String groupSettingsSuspUntil(String kind, String date);

  /// No description provided for @groupSettingsTabAuditLog.
  ///
  /// In en, this message translates to:
  /// **'Audit log'**
  String get groupSettingsTabAuditLog;

  /// No description provided for @groupSettingsTabEmojis.
  ///
  /// In en, this message translates to:
  /// **'Emojis'**
  String get groupSettingsTabEmojis;

  /// No description provided for @groupSettingsTabInfo.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get groupSettingsTabInfo;

  /// No description provided for @groupSettingsTabInvites.
  ///
  /// In en, this message translates to:
  /// **'Invites'**
  String get groupSettingsTabInvites;

  /// No description provided for @groupSettingsTabReports.
  ///
  /// In en, this message translates to:
  /// **'Reports'**
  String get groupSettingsTabReports;

  /// No description provided for @groupSettingsTabRoles.
  ///
  /// In en, this message translates to:
  /// **'Roles'**
  String get groupSettingsTabRoles;

  /// No description provided for @groupSettingsTabViolations.
  ///
  /// In en, this message translates to:
  /// **'Violations'**
  String get groupSettingsTabViolations;

  /// No description provided for @groupSettingsTagFormatErr.
  ///
  /// In en, this message translates to:
  /// **'Tags use lowercase letters, numbers, and dashes (2–24 chars).'**
  String get groupSettingsTagFormatErr;

  /// No description provided for @groupSettingsTagHint.
  ///
  /// In en, this message translates to:
  /// **'Add a tag and press return'**
  String get groupSettingsTagHint;

  /// No description provided for @groupSettingsTagMax.
  ///
  /// In en, this message translates to:
  /// **'Up to 8 tags per group.'**
  String get groupSettingsTagMax;

  /// No description provided for @groupSettingsTagsIntro.
  ///
  /// In en, this message translates to:
  /// **'Help people discover this group. Lowercase, no spaces, up to 8.'**
  String get groupSettingsTagsIntro;

  /// No description provided for @groupSettingsTagsRubric.
  ///
  /// In en, this message translates to:
  /// **'TAGS UPDATED'**
  String get groupSettingsTagsRubric;

  /// No description provided for @groupSettingsTagsSavedMsg.
  ///
  /// In en, this message translates to:
  /// **'Your tags help people discover this group. They show up in search and on the group card.'**
  String get groupSettingsTagsSavedMsg;

  /// No description provided for @groupSettingsTagsSavedTitle.
  ///
  /// In en, this message translates to:
  /// **'Tags saved'**
  String get groupSettingsTagsSavedTitle;

  /// No description provided for @groupSettingsTagsUpToDate.
  ///
  /// In en, this message translates to:
  /// **'Tags up to date'**
  String get groupSettingsTagsUpToDate;

  /// No description provided for @groupSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Group Settings'**
  String get groupSettingsTitle;

  /// No description provided for @groupSettingsTypeNamePrefix.
  ///
  /// In en, this message translates to:
  /// **'Type the group name '**
  String get groupSettingsTypeNamePrefix;

  /// No description provided for @groupSettingsTypeNameSuffix.
  ///
  /// In en, this message translates to:
  /// **' exactly to confirm. This is the last step, and you can\'t undo it yourself afterward.'**
  String get groupSettingsTypeNameSuffix;

  /// No description provided for @groupSettingsUploadEmoji.
  ///
  /// In en, this message translates to:
  /// **'Upload emoji ({count}/50)'**
  String groupSettingsUploadEmoji(int count);

  /// No description provided for @groupSettingsUploadingEmoji.
  ///
  /// In en, this message translates to:
  /// **'Uploading…'**
  String get groupSettingsUploadingEmoji;

  /// No description provided for @groupSettingsUploadPhotoBtn.
  ///
  /// In en, this message translates to:
  /// **'Upload photo'**
  String get groupSettingsUploadPhotoBtn;

  /// No description provided for @groupSettingsUsesCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 use} other{{count} uses}}'**
  String groupSettingsUsesCount(int count);

  /// No description provided for @groupSettingsUsesUnlimited.
  ///
  /// In en, this message translates to:
  /// **'Unlimited'**
  String get groupSettingsUsesUnlimited;

  /// No description provided for @groupSettingsViolationActive.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get groupSettingsViolationActive;

  /// No description provided for @groupSettingsViolationAwaitingStaff.
  ///
  /// In en, this message translates to:
  /// **'Awaiting staff'**
  String get groupSettingsViolationAwaitingStaff;

  /// No description provided for @groupSettingsViolationLifted.
  ///
  /// In en, this message translates to:
  /// **'Lifted'**
  String get groupSettingsViolationLifted;

  /// No description provided for @groupSettingsWipe.
  ///
  /// In en, this message translates to:
  /// **'Wipe'**
  String get groupSettingsWipe;

  /// No description provided for @groupSettingsWipeChatBody.
  ///
  /// In en, this message translates to:
  /// **'This permanently deletes every message in the group chat. Members see a \"you cleared the chat history\" line in the newly-empty chat. This cannot be undone.'**
  String get groupSettingsWipeChatBody;

  /// No description provided for @groupSettingsWipeChatLabel.
  ///
  /// In en, this message translates to:
  /// **'Wipe chat history'**
  String get groupSettingsWipeChatLabel;

  /// No description provided for @groupSettingsWipeChatSub.
  ///
  /// In en, this message translates to:
  /// **'Permanently delete every message in the group chat. Owner only.'**
  String get groupSettingsWipeChatSub;

  /// No description provided for @groupSettingsWipeChatTitle.
  ///
  /// In en, this message translates to:
  /// **'Wipe chat history?'**
  String get groupSettingsWipeChatTitle;

  /// No description provided for @groupSettingsWipedMsg.
  ///
  /// In en, this message translates to:
  /// **'The chat history is now empty. Members see a \"chat cleared\" system event so the empty room makes sense to them.'**
  String get groupSettingsWipedMsg;

  /// No description provided for @groupSettingsWipedRubric.
  ///
  /// In en, this message translates to:
  /// **'CHAT WIPED'**
  String get groupSettingsWipedRubric;

  /// No description provided for @groupSettingsWipedTitle.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Wiped 1 message} other{Wiped {count} messages}}'**
  String groupSettingsWipedTitle(int count);

  /// No description provided for @groupSettingsWipeEmptyMsg.
  ///
  /// In en, this message translates to:
  /// **'No messages to clear. The chat history surface stays as-is.'**
  String get groupSettingsWipeEmptyMsg;

  /// No description provided for @groupSettingsWipeEmptyRubric.
  ///
  /// In en, this message translates to:
  /// **'NOTHING TO WIPE'**
  String get groupSettingsWipeEmptyRubric;

  /// No description provided for @groupSettingsWipeEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'Chat was already empty'**
  String get groupSettingsWipeEmptyTitle;

  /// No description provided for @groupsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String groupsLoadError(String error);

  /// No description provided for @groupsNewButton.
  ///
  /// In en, this message translates to:
  /// **'+ New'**
  String get groupsNewButton;

  /// No description provided for @groupsNewSemantic.
  ///
  /// In en, this message translates to:
  /// **'New group'**
  String get groupsNewSemantic;

  /// No description provided for @groupsRailDiscover.
  ///
  /// In en, this message translates to:
  /// **'Discover'**
  String get groupsRailDiscover;

  /// No description provided for @groupsRailRecent.
  ///
  /// In en, this message translates to:
  /// **'Recently created'**
  String get groupsRailRecent;

  /// No description provided for @groupsRailTop.
  ///
  /// In en, this message translates to:
  /// **'Top public groups'**
  String get groupsRailTop;

  /// No description provided for @groupsRailWeekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly active'**
  String get groupsRailWeekly;

  /// No description provided for @groupsRailYours.
  ///
  /// In en, this message translates to:
  /// **'Your groups'**
  String get groupsRailYours;

  /// No description provided for @groupsSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Find your community…'**
  String get groupsSearchHint;

  /// No description provided for @groupsTitle.
  ///
  /// In en, this message translates to:
  /// **'Groups'**
  String get groupsTitle;

  /// No description provided for @groupTosScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Group Terms'**
  String get groupTosScreenTitle;

  /// No description provided for @groupTosScreenVersion.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String groupTosScreenVersion(int version);

  /// No description provided for @groupTosScreenVersionPublished.
  ///
  /// In en, this message translates to:
  /// **'Version {version} · published {date}'**
  String groupTosScreenVersionPublished(int version, String date);

  /// No description provided for @groupTransferInviteAcceptCta.
  ///
  /// In en, this message translates to:
  /// **'Accept ownership & agree to Group Terms of Service'**
  String get groupTransferInviteAcceptCta;

  /// No description provided for @groupTransferInviteAcceptErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t accept transfer'**
  String get groupTransferInviteAcceptErrorOp;

  /// No description provided for @groupTransferInviteBeforeAccept.
  ///
  /// In en, this message translates to:
  /// **'BEFORE YOU ACCEPT'**
  String get groupTransferInviteBeforeAccept;

  /// No description provided for @groupTransferInviteBeforeAcceptBody.
  ///
  /// In en, this message translates to:
  /// **'Owners take on extra responsibility on top of admins and moderators: you set the tone for the community, you can wipe chat history, and you agree to the Group Terms of Service that govern how Luney groups are run. By accepting this transfer you confirm you\'ve read and agree to follow them.'**
  String get groupTransferInviteBeforeAcceptBody;

  /// No description provided for @groupTransferInviteDecline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get groupTransferInviteDecline;

  /// No description provided for @groupTransferInviteDeclineConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'If you decline, ownership of {group} transfers to {inviter} (the staff member who offered it). They\'ll hold it temporarily until they find someone else to take over.'**
  String groupTransferInviteDeclineConfirmBody(String group, String inviter);

  /// No description provided for @groupTransferInviteDeclineConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Decline ownership?'**
  String get groupTransferInviteDeclineConfirmTitle;

  /// No description provided for @groupTransferInviteDeclinedBody.
  ///
  /// In en, this message translates to:
  /// **'Ownership of {group} went to {inviter}. You\'re still a member; nothing else changed.'**
  String groupTransferInviteDeclinedBody(String group, String inviter);

  /// No description provided for @groupTransferInviteDeclineDisclosure.
  ///
  /// In en, this message translates to:
  /// **'If you decline, ownership goes to the staff member who offered it. They hold it until someone else can take over.'**
  String get groupTransferInviteDeclineDisclosure;

  /// No description provided for @groupTransferInviteDeclinedRubric.
  ///
  /// In en, this message translates to:
  /// **'TRANSFER DECLINED'**
  String get groupTransferInviteDeclinedRubric;

  /// No description provided for @groupTransferInviteDeclinedTitle.
  ///
  /// In en, this message translates to:
  /// **'You said no, that\'s fine'**
  String get groupTransferInviteDeclinedTitle;

  /// No description provided for @groupTransferInviteDeclineErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t decline transfer'**
  String get groupTransferInviteDeclineErrorOp;

  /// No description provided for @groupTransferInviteIntro.
  ///
  /// In en, this message translates to:
  /// **'{inviter} wants to transfer full ownership of {group} to you. As the owner, you take on everything an admin can do plus the keys to the group: set the tone, wipe chat history, and decide who else helps moderate.'**
  String groupTransferInviteIntro(String inviter, String group);

  /// No description provided for @groupTransferInviteIntroFallback.
  ///
  /// In en, this message translates to:
  /// **'A Luney staff member'**
  String get groupTransferInviteIntroFallback;

  /// No description provided for @groupTransferInviteInviterFallback.
  ///
  /// In en, this message translates to:
  /// **'the staff member who offered it'**
  String get groupTransferInviteInviterFallback;

  /// No description provided for @groupTransferInviteLater.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get groupTransferInviteLater;

  /// No description provided for @groupTransferInviteLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load this transfer.\n{error}'**
  String groupTransferInviteLoadError(String error);

  /// No description provided for @groupTransferInviteOffered.
  ///
  /// In en, this message translates to:
  /// **'OWNERSHIP OFFERED'**
  String get groupTransferInviteOffered;

  /// No description provided for @groupTransferInviteOpenGroup.
  ///
  /// In en, this message translates to:
  /// **'Open group'**
  String get groupTransferInviteOpenGroup;

  /// No description provided for @groupTransferInviteReadFirst.
  ///
  /// In en, this message translates to:
  /// **'Read the Terms above first'**
  String get groupTransferInviteReadFirst;

  /// No description provided for @groupTransferInviteResolved.
  ///
  /// In en, this message translates to:
  /// **'This transfer offer has already been accepted, declined, or revoked. Nothing else to do here.'**
  String get groupTransferInviteResolved;

  /// No description provided for @groupTransferInviteTitle.
  ///
  /// In en, this message translates to:
  /// **'Group ownership'**
  String get groupTransferInviteTitle;

  /// No description provided for @groupTransferInviteTosRead.
  ///
  /// In en, this message translates to:
  /// **'Group Terms of Service · read ✓'**
  String get groupTransferInviteTosRead;

  /// No description provided for @groupTransferInviteTosUnread.
  ///
  /// In en, this message translates to:
  /// **'Read the Group Terms of Service'**
  String get groupTransferInviteTosUnread;

  /// No description provided for @groupTransferInviteTosUpdatedBody.
  ///
  /// In en, this message translates to:
  /// **'A new Group ToS was just published. Review and accept it, then come back here to accept this transfer.'**
  String get groupTransferInviteTosUpdatedBody;

  /// No description provided for @groupTransferInviteTosUpdatedRubric.
  ///
  /// In en, this message translates to:
  /// **'GROUP TOS UPDATED'**
  String get groupTransferInviteTosUpdatedRubric;

  /// No description provided for @groupTransferInviteTosUpdatedTitle.
  ///
  /// In en, this message translates to:
  /// **'New Group Terms of Service'**
  String get groupTransferInviteTosUpdatedTitle;

  /// No description provided for @groupTransferInviteTransferredBody.
  ///
  /// In en, this message translates to:
  /// **'You\'re the owner. You can manage admins and moderators, wipe chat history, edit settings, and (if it ever comes to it) hand the group off to someone else.'**
  String get groupTransferInviteTransferredBody;

  /// No description provided for @groupTransferInviteTransferredRubric.
  ///
  /// In en, this message translates to:
  /// **'OWNERSHIP TRANSFERRED'**
  String get groupTransferInviteTransferredRubric;

  /// No description provided for @groupTransferInviteTransferredTitle.
  ///
  /// In en, this message translates to:
  /// **'You now own {group}'**
  String groupTransferInviteTransferredTitle(String group);

  /// No description provided for @hashtagNoPosts.
  ///
  /// In en, this message translates to:
  /// **'No posts with #{tag} yet.'**
  String hashtagNoPosts(String tag);

  /// No description provided for @hashtagNoReels.
  ///
  /// In en, this message translates to:
  /// **'No reels with #{tag} yet.'**
  String hashtagNoReels(String tag);

  /// No description provided for @hashtagPostsError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load posts.'**
  String get hashtagPostsError;

  /// No description provided for @hashtagReelsError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load reels.'**
  String get hashtagReelsError;

  /// No description provided for @hashtagTabPosts.
  ///
  /// In en, this message translates to:
  /// **'Posts'**
  String get hashtagTabPosts;

  /// No description provided for @hashtagTabReels.
  ///
  /// In en, this message translates to:
  /// **'Reels'**
  String get hashtagTabReels;

  /// No description provided for @hashtagTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get hashtagTryAgain;

  /// No description provided for @hashtagWhyHidden.
  ///
  /// In en, this message translates to:
  /// **'Why is this hidden?'**
  String get hashtagWhyHidden;

  /// No description provided for @homeScreenComposeLabel.
  ///
  /// In en, this message translates to:
  /// **'Compose a post'**
  String get homeScreenComposeLabel;

  /// No description provided for @homeScreenEmptyAll.
  ///
  /// In en, this message translates to:
  /// **'Nothing here yet, be the first to post.'**
  String get homeScreenEmptyAll;

  /// No description provided for @homeScreenEmptyFilter.
  ///
  /// In en, this message translates to:
  /// **'No posts tagged \"{filter}\" yet.'**
  String homeScreenEmptyFilter(String filter);

  /// No description provided for @homeScreenEmptyNetwork.
  ///
  /// In en, this message translates to:
  /// **'Nothing from your network yet. Add some friends or wait for them to post.'**
  String get homeScreenEmptyNetwork;

  /// No description provided for @homeScreenNewPostLabel.
  ///
  /// In en, this message translates to:
  /// **'New post'**
  String get homeScreenNewPostLabel;

  /// No description provided for @icebreakerCategoryCommunity.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get icebreakerCategoryCommunity;

  /// No description provided for @icebreakerCategoryPlayful.
  ///
  /// In en, this message translates to:
  /// **'Playful'**
  String get icebreakerCategoryPlayful;

  /// No description provided for @icebreakerCategorySpicy.
  ///
  /// In en, this message translates to:
  /// **'Spicy'**
  String get icebreakerCategorySpicy;

  /// No description provided for @icebreakerCategoryVulnerable.
  ///
  /// In en, this message translates to:
  /// **'Vulnerable'**
  String get icebreakerCategoryVulnerable;

  /// No description provided for @icebreakerQDAnsweredBadge.
  ///
  /// In en, this message translates to:
  /// **'✓ ANSWERED'**
  String get icebreakerQDAnsweredBadge;

  /// No description provided for @icebreakerQDAnswerReplyCount.
  ///
  /// In en, this message translates to:
  /// **'{answerCount, plural, =1{1 answer · {replyCount} replies} other{{answerCount} answers · {replyCount} replies}}'**
  String icebreakerQDAnswerReplyCount(int answerCount, int replyCount);

  /// No description provided for @icebreakerQDCatCommunity.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get icebreakerQDCatCommunity;

  /// No description provided for @icebreakerQDCatPlayful.
  ///
  /// In en, this message translates to:
  /// **'Playful'**
  String get icebreakerQDCatPlayful;

  /// No description provided for @icebreakerQDCatSpicy.
  ///
  /// In en, this message translates to:
  /// **'Spicy'**
  String get icebreakerQDCatSpicy;

  /// No description provided for @icebreakerQDCatVulnerable.
  ///
  /// In en, this message translates to:
  /// **'Vulnerable'**
  String get icebreakerQDCatVulnerable;

  /// No description provided for @icebreakerQDComposerHint.
  ///
  /// In en, this message translates to:
  /// **'type your answer…'**
  String get icebreakerQDComposerHint;

  /// No description provided for @icebreakerQDEmptyOthers.
  ///
  /// In en, this message translates to:
  /// **'Nobody else answered this one. You\'re the only voice on the wall.'**
  String get icebreakerQDEmptyOthers;

  /// No description provided for @icebreakerQDErrPost.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t post your answer'**
  String get icebreakerQDErrPost;

  /// No description provided for @icebreakerQDLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load answers: {error}'**
  String icebreakerQDLoadError(String error);

  /// No description provided for @icebreakerQDOthersAnswered.
  ///
  /// In en, this message translates to:
  /// **'OTHERS ANSWERED'**
  String get icebreakerQDOthersAnswered;

  /// No description provided for @icebreakerQDOthersTotal.
  ///
  /// In en, this message translates to:
  /// **'{count} total'**
  String icebreakerQDOthersTotal(int count);

  /// No description provided for @icebreakerQDPastNotAnswered.
  ///
  /// In en, this message translates to:
  /// **'This was an older icebreaker. New answers can only land on today\'s question, but you can still read what others said.'**
  String get icebreakerQDPastNotAnswered;

  /// No description provided for @icebreakerQDPastReadOnly.
  ///
  /// In en, this message translates to:
  /// **'Past questions are read-only. You can\'t update an answer once the day rolls over.'**
  String get icebreakerQDPastReadOnly;

  /// No description provided for @icebreakerQDQotdDate.
  ///
  /// In en, this message translates to:
  /// **'QOTD · {date}'**
  String icebreakerQDQotdDate(String date);

  /// No description provided for @icebreakerQDQotdToday.
  ///
  /// In en, this message translates to:
  /// **'QOTD · TODAY'**
  String get icebreakerQDQotdToday;

  /// No description provided for @icebreakerQDSubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit & see answers'**
  String get icebreakerQDSubmit;

  /// No description provided for @icebreakerQDThanks.
  ///
  /// In en, this message translates to:
  /// **'Thanks for answering. See what others said below.'**
  String get icebreakerQDThanks;

  /// No description provided for @icebreakerQDTitlePast.
  ///
  /// In en, this message translates to:
  /// **'Past icebreaker'**
  String get icebreakerQDTitlePast;

  /// No description provided for @icebreakerQDTitleToday.
  ///
  /// In en, this message translates to:
  /// **'Today\'s icebreaker'**
  String get icebreakerQDTitleToday;

  /// No description provided for @icebreakerQDYourAnswer.
  ///
  /// In en, this message translates to:
  /// **'YOUR ANSWER'**
  String get icebreakerQDYourAnswer;

  /// No description provided for @icebreakersAnswerCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 answer} other{{count} answers}}'**
  String icebreakersAnswerCount(int count);

  /// No description provided for @icebreakersAnswerCta.
  ///
  /// In en, this message translates to:
  /// **'Answer →'**
  String get icebreakersAnswerCta;

  /// No description provided for @icebreakersAnsweredTag.
  ///
  /// In en, this message translates to:
  /// **'✓ ANSWERED'**
  String get icebreakersAnsweredTag;

  /// No description provided for @icebreakersAnswerHint.
  ///
  /// In en, this message translates to:
  /// **'type your answer…'**
  String get icebreakersAnswerHint;

  /// No description provided for @icebreakersCardAnswerCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 answer} other{{compact} answers}}'**
  String icebreakersCardAnswerCount(int count, String compact);

  /// No description provided for @icebreakersCardAnswerHint.
  ///
  /// In en, this message translates to:
  /// **'your answer…'**
  String get icebreakersCardAnswerHint;

  /// No description provided for @icebreakersCardBrowse.
  ///
  /// In en, this message translates to:
  /// **'Browse'**
  String get icebreakersCardBrowse;

  /// No description provided for @icebreakersCardCatCommunity.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get icebreakersCardCatCommunity;

  /// No description provided for @icebreakersCardCatPlayful.
  ///
  /// In en, this message translates to:
  /// **'Playful'**
  String get icebreakersCardCatPlayful;

  /// No description provided for @icebreakersCardCatQuestion.
  ///
  /// In en, this message translates to:
  /// **'Question'**
  String get icebreakersCardCatQuestion;

  /// No description provided for @icebreakersCardCatSpicy.
  ///
  /// In en, this message translates to:
  /// **'Spicy'**
  String get icebreakersCardCatSpicy;

  /// No description provided for @icebreakersCardCatVulnerable.
  ///
  /// In en, this message translates to:
  /// **'Vulnerable'**
  String get icebreakersCardCatVulnerable;

  /// No description provided for @icebreakersCardDm.
  ///
  /// In en, this message translates to:
  /// **'DM'**
  String get icebreakersCardDm;

  /// No description provided for @icebreakersCardErrOpenChat.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open chat'**
  String get icebreakersCardErrOpenChat;

  /// No description provided for @icebreakersCardErrorTileLabel.
  ///
  /// In en, this message translates to:
  /// **'Icebreakers'**
  String get icebreakersCardErrorTileLabel;

  /// No description provided for @icebreakersCardErrPost.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t post your answer'**
  String get icebreakersCardErrPost;

  /// No description provided for @icebreakersCardHide.
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get icebreakersCardHide;

  /// No description provided for @icebreakersCardHideAnswersA11y.
  ///
  /// In en, this message translates to:
  /// **'Hide answers'**
  String get icebreakersCardHideAnswersA11y;

  /// No description provided for @icebreakersCardLoadAnswersError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load answers.'**
  String get icebreakersCardLoadAnswersError;

  /// No description provided for @icebreakersCardNoAnswers.
  ///
  /// In en, this message translates to:
  /// **'No answers yet. Be the first.'**
  String get icebreakersCardNoAnswers;

  /// No description provided for @icebreakersCardOpen.
  ///
  /// In en, this message translates to:
  /// **'Open →'**
  String get icebreakersCardOpen;

  /// No description provided for @icebreakersCardOpenA11y.
  ///
  /// In en, this message translates to:
  /// **'Open Icebreakers'**
  String get icebreakersCardOpenA11y;

  /// No description provided for @icebreakersCardOpenDm.
  ///
  /// In en, this message translates to:
  /// **'Open DM with {name}'**
  String icebreakersCardOpenDm(String name);

  /// No description provided for @icebreakersCardOpenProfile.
  ///
  /// In en, this message translates to:
  /// **'Open {name}\'s profile'**
  String icebreakersCardOpenProfile(String name);

  /// No description provided for @icebreakersCardOpenReplies.
  ///
  /// In en, this message translates to:
  /// **'Open replies'**
  String get icebreakersCardOpenReplies;

  /// No description provided for @icebreakersCardReactEyes.
  ///
  /// In en, this message translates to:
  /// **'eyes'**
  String get icebreakersCardReactEyes;

  /// No description provided for @icebreakersCardReactHeart.
  ///
  /// In en, this message translates to:
  /// **'heart'**
  String get icebreakersCardReactHeart;

  /// No description provided for @icebreakersCardReactionA11y.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{{label} reaction, no reactions} other{{label} reaction, {count}}}'**
  String icebreakersCardReactionA11y(String label, int count);

  /// No description provided for @icebreakersCardReactLaugh.
  ///
  /// In en, this message translates to:
  /// **'laugh'**
  String get icebreakersCardReactLaugh;

  /// No description provided for @icebreakersCardReactSame.
  ///
  /// In en, this message translates to:
  /// **'same'**
  String get icebreakersCardReactSame;

  /// No description provided for @icebreakersCardReply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get icebreakersCardReply;

  /// No description provided for @icebreakersCardReportLabel.
  ///
  /// In en, this message translates to:
  /// **'this icebreaker answer'**
  String get icebreakersCardReportLabel;

  /// No description provided for @icebreakersCardSeeAnswersA11y.
  ///
  /// In en, this message translates to:
  /// **'See answers'**
  String get icebreakersCardSeeAnswersA11y;

  /// No description provided for @icebreakersCardSubmitA11y.
  ///
  /// In en, this message translates to:
  /// **'Submit answer'**
  String get icebreakersCardSubmitA11y;

  /// No description provided for @icebreakersCardSubmitCta.
  ///
  /// In en, this message translates to:
  /// **'Submit & see answers'**
  String get icebreakersCardSubmitCta;

  /// No description provided for @icebreakersCardThanks.
  ///
  /// In en, this message translates to:
  /// **'Thanks for answering. See what others said below.'**
  String get icebreakersCardThanks;

  /// No description provided for @icebreakersCharCount.
  ///
  /// In en, this message translates to:
  /// **'{count}/280'**
  String icebreakersCharCount(int count);

  /// No description provided for @icebreakersDayStreak.
  ///
  /// In en, this message translates to:
  /// **'{streak, plural, =1{1 day streak} other{{streak} day streak}}'**
  String icebreakersDayStreak(int streak);

  /// No description provided for @icebreakersFilterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get icebreakersFilterAll;

  /// No description provided for @icebreakersFilterSemantic.
  ///
  /// In en, this message translates to:
  /// **'{label} filter'**
  String icebreakersFilterSemantic(String label);

  /// No description provided for @icebreakersGenericLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load: {error}'**
  String icebreakersGenericLoadError(String error);

  /// No description provided for @icebreakersHeaderWithStreak.
  ///
  /// In en, this message translates to:
  /// **'{count} prompts · 🔥 {streak}-day streak'**
  String icebreakersHeaderWithStreak(int count, int streak);

  /// No description provided for @icebreakersLoadAnswersError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load answers.'**
  String get icebreakersLoadAnswersError;

  /// No description provided for @icebreakersMineEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Drop into the Today tab and break some ice.'**
  String get icebreakersMineEmptyBody;

  /// No description provided for @icebreakersMineEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t answered any yet'**
  String get icebreakersMineEmptyTitle;

  /// No description provided for @icebreakersNoAnswersYet.
  ///
  /// In en, this message translates to:
  /// **'No answers yet. Be the first.'**
  String get icebreakersNoAnswersYet;

  /// No description provided for @icebreakersNoPastBody.
  ///
  /// In en, this message translates to:
  /// **'New icebreakers drop every day. Today\'s question is on the Today tab.'**
  String get icebreakersNoPastBody;

  /// No description provided for @icebreakersNoPastTitle.
  ///
  /// In en, this message translates to:
  /// **'No past questions to browse yet'**
  String get icebreakersNoPastTitle;

  /// No description provided for @icebreakersNoQuestionBody.
  ///
  /// In en, this message translates to:
  /// **'Check back tomorrow, or browse past questions on the Library tab.'**
  String get icebreakersNoQuestionBody;

  /// No description provided for @icebreakersNoQuestionTitle.
  ///
  /// In en, this message translates to:
  /// **'No question scheduled for today'**
  String get icebreakersNoQuestionTitle;

  /// No description provided for @icebreakersNoStreak.
  ///
  /// In en, this message translates to:
  /// **'No active streak'**
  String get icebreakersNoStreak;

  /// No description provided for @icebreakersNothingCategory.
  ///
  /// In en, this message translates to:
  /// **'Nothing in that category yet'**
  String get icebreakersNothingCategory;

  /// No description provided for @icebreakersOpenAnswerError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open this answer'**
  String get icebreakersOpenAnswerError;

  /// No description provided for @icebreakersOpenSemantic.
  ///
  /// In en, this message translates to:
  /// **'Open icebreaker: {prompt}'**
  String icebreakersOpenSemantic(String prompt);

  /// No description provided for @icebreakersOthersAnswered.
  ///
  /// In en, this message translates to:
  /// **'OTHERS ANSWERED'**
  String get icebreakersOthersAnswered;

  /// No description provided for @icebreakersPostError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t post your answer'**
  String get icebreakersPostError;

  /// No description provided for @icebreakersPromptCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 prompt} other{{count} prompts}}'**
  String icebreakersPromptCount(int count);

  /// No description provided for @icebreakersPromptsAnswered.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 prompt answered} other{{count} prompts answered}}'**
  String icebreakersPromptsAnswered(int count);

  /// No description provided for @icebreakersQotdBadge.
  ///
  /// In en, this message translates to:
  /// **'QOTD · {date}'**
  String icebreakersQotdBadge(String date);

  /// No description provided for @icebreakersReactionCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 reaction} other{{count} reactions}}'**
  String icebreakersReactionCount(int count);

  /// No description provided for @icebreakersReadCta.
  ///
  /// In en, this message translates to:
  /// **'Read →'**
  String get icebreakersReadCta;

  /// No description provided for @icebreakersRepliesReactions.
  ///
  /// In en, this message translates to:
  /// **'Replies & reactions'**
  String get icebreakersRepliesReactions;

  /// No description provided for @icebreakersSeeRepliesSemantic.
  ///
  /// In en, this message translates to:
  /// **'See replies and reactions on your answer'**
  String get icebreakersSeeRepliesSemantic;

  /// No description provided for @icebreakersSubmitSeeAnswers.
  ///
  /// In en, this message translates to:
  /// **'Submit & see answers'**
  String get icebreakersSubmitSeeAnswers;

  /// No description provided for @icebreakersTabLibrary.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get icebreakersTabLibrary;

  /// No description provided for @icebreakersTabMine.
  ///
  /// In en, this message translates to:
  /// **'Mine'**
  String get icebreakersTabMine;

  /// No description provided for @icebreakersTabToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get icebreakersTabToday;

  /// No description provided for @icebreakersThanksAnswering.
  ///
  /// In en, this message translates to:
  /// **'Thanks for answering. See what others said below.'**
  String get icebreakersThanksAnswering;

  /// No description provided for @icebreakersTitle.
  ///
  /// In en, this message translates to:
  /// **'Icebreakers'**
  String get icebreakersTitle;

  /// No description provided for @icebreakersTodayTag.
  ///
  /// In en, this message translates to:
  /// **'· TODAY'**
  String get icebreakersTodayTag;

  /// No description provided for @icebreakersTotalAnswers.
  ///
  /// In en, this message translates to:
  /// **'{count} total'**
  String icebreakersTotalAnswers(int count);

  /// No description provided for @icebreakersTryFilterBody.
  ///
  /// In en, this message translates to:
  /// **'Try a different filter or check back later.'**
  String get icebreakersTryFilterBody;

  /// No description provided for @icebreakersUpdateAnswer.
  ///
  /// In en, this message translates to:
  /// **'Update answer'**
  String get icebreakersUpdateAnswer;

  /// No description provided for @icebreakersYourAnswer.
  ///
  /// In en, this message translates to:
  /// **'YOUR ANSWER'**
  String get icebreakersYourAnswer;

  /// No description provided for @icebreakersYourAnswers.
  ///
  /// In en, this message translates to:
  /// **'YOUR ANSWERS'**
  String get icebreakersYourAnswers;

  /// No description provided for @icebreakerThreadAddEmoji.
  ///
  /// In en, this message translates to:
  /// **'Add emoji'**
  String get icebreakerThreadAddEmoji;

  /// No description provided for @icebreakerThreadDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'This removes your reply from the thread. You can\'t undo this.'**
  String get icebreakerThreadDeleteBody;

  /// No description provided for @icebreakerThreadDeleteErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete reply'**
  String get icebreakerThreadDeleteErrorOp;

  /// No description provided for @icebreakerThreadDeleteMyReplyA11y.
  ///
  /// In en, this message translates to:
  /// **'Delete my reply'**
  String get icebreakerThreadDeleteMyReplyA11y;

  /// No description provided for @icebreakerThreadDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete reply?'**
  String get icebreakerThreadDeleteTitle;

  /// No description provided for @icebreakerThreadDm.
  ///
  /// In en, this message translates to:
  /// **'DM'**
  String get icebreakerThreadDm;

  /// No description provided for @icebreakerThreadDmErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open chat'**
  String get icebreakerThreadDmErrorOp;

  /// No description provided for @icebreakerThreadMuteErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t mute thread'**
  String get icebreakerThreadMuteErrorOp;

  /// No description provided for @icebreakerThreadMuteTooltip.
  ///
  /// In en, this message translates to:
  /// **'Mute this thread'**
  String get icebreakerThreadMuteTooltip;

  /// No description provided for @icebreakerThreadNoReplies.
  ///
  /// In en, this message translates to:
  /// **'No replies yet, be the first.'**
  String get icebreakerThreadNoReplies;

  /// No description provided for @icebreakerThreadOpenDm.
  ///
  /// In en, this message translates to:
  /// **'Open DM with {name}'**
  String icebreakerThreadOpenDm(String name);

  /// No description provided for @icebreakerThreadOpenProfile.
  ///
  /// In en, this message translates to:
  /// **'Open {name}\'s profile'**
  String icebreakerThreadOpenProfile(String name);

  /// No description provided for @icebreakerThreadReplies.
  ///
  /// In en, this message translates to:
  /// **'REPLIES'**
  String get icebreakerThreadReplies;

  /// No description provided for @icebreakerThreadRepliesError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load replies: {error}'**
  String icebreakerThreadRepliesError(String error);

  /// No description provided for @icebreakerThreadReplyErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t post your reply'**
  String get icebreakerThreadReplyErrorOp;

  /// No description provided for @icebreakerThreadReplyHint.
  ///
  /// In en, this message translates to:
  /// **'Reply to this answer…'**
  String get icebreakerThreadReplyHint;

  /// No description provided for @icebreakerThreadReportLabel.
  ///
  /// In en, this message translates to:
  /// **'this reply'**
  String get icebreakerThreadReportLabel;

  /// No description provided for @icebreakerThreadSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get icebreakerThreadSend;

  /// No description provided for @icebreakerThreadSendA11y.
  ///
  /// In en, this message translates to:
  /// **'Send reply'**
  String get icebreakerThreadSendA11y;

  /// No description provided for @icebreakerThreadUnmuteErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t unmute thread'**
  String get icebreakerThreadUnmuteErrorOp;

  /// No description provided for @icebreakerThreadUnmuteTooltip.
  ///
  /// In en, this message translates to:
  /// **'Unmute this thread'**
  String get icebreakerThreadUnmuteTooltip;

  /// No description provided for @imageCropEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit photo'**
  String get imageCropEditTitle;

  /// No description provided for @imageCropTitle.
  ///
  /// In en, this message translates to:
  /// **'Crop photo'**
  String get imageCropTitle;

  /// No description provided for @inAppActorLuneyStaff.
  ///
  /// In en, this message translates to:
  /// **'Luney Staff'**
  String get inAppActorLuneyStaff;

  /// No description provided for @inAppActorSomeone.
  ///
  /// In en, this message translates to:
  /// **'Someone'**
  String get inAppActorSomeone;

  /// No description provided for @inAppAnotherMember.
  ///
  /// In en, this message translates to:
  /// **'another member'**
  String get inAppAnotherMember;

  /// No description provided for @inAppArticleAdmin.
  ///
  /// In en, this message translates to:
  /// **'an admin'**
  String get inAppArticleAdmin;

  /// No description provided for @inAppArticleModerator.
  ///
  /// In en, this message translates to:
  /// **'a moderator'**
  String get inAppArticleModerator;

  /// No description provided for @inAppAttachment.
  ///
  /// In en, this message translates to:
  /// **'📎 Attachment'**
  String get inAppAttachment;

  /// No description provided for @inAppBodyAnniversaryCard.
  ///
  /// In en, this message translates to:
  /// **'sent you a friendiversary card 🎉'**
  String get inAppBodyAnniversaryCard;

  /// No description provided for @inAppBodyAnniversaryCardN.
  ///
  /// In en, this message translates to:
  /// **'sent you a {count} year friendiversary card 🎉'**
  String inAppBodyAnniversaryCardN(int count);

  /// No description provided for @inAppBodyCommentReply.
  ///
  /// In en, this message translates to:
  /// **'replied to your comment.'**
  String get inAppBodyCommentReply;

  /// No description provided for @inAppBodyCrisisAlert.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have to go through this alone. Tap for support.'**
  String get inAppBodyCrisisAlert;

  /// No description provided for @inAppBodyDefault.
  ///
  /// In en, this message translates to:
  /// **'sent you something.'**
  String get inAppBodyDefault;

  /// No description provided for @inAppBodyFriendAccept.
  ///
  /// In en, this message translates to:
  /// **'accepted your friend request.'**
  String get inAppBodyFriendAccept;

  /// No description provided for @inAppBodyFriendRequest.
  ///
  /// In en, this message translates to:
  /// **'sent you a friend request.'**
  String get inAppBodyFriendRequest;

  /// No description provided for @inAppBodyGroupInviteRedeemed.
  ///
  /// In en, this message translates to:
  /// **'joined \"{group}\" via your invite.'**
  String inAppBodyGroupInviteRedeemed(String group);

  /// No description provided for @inAppBodyLobbyStarted.
  ///
  /// In en, this message translates to:
  /// **'started a Live Lobby. Tap to join.'**
  String get inAppBodyLobbyStarted;

  /// No description provided for @inAppBodyMention.
  ///
  /// In en, this message translates to:
  /// **'mentioned you.'**
  String get inAppBodyMention;

  /// No description provided for @inAppBodyOwnerTransferredOther.
  ///
  /// In en, this message translates to:
  /// **'transferred ownership of your group {group} to {target}.'**
  String inAppBodyOwnerTransferredOther(String group, String target);

  /// No description provided for @inAppBodyOwnerTransferredToYou.
  ///
  /// In en, this message translates to:
  /// **'transferred ownership of {group} to you. Tap to open it.'**
  String inAppBodyOwnerTransferredToYou(String group);

  /// No description provided for @inAppBodyPanicAlert.
  ///
  /// In en, this message translates to:
  /// **'may need help. They activated Panic Mode and haven\'t responded for 5 minutes.'**
  String get inAppBodyPanicAlert;

  /// No description provided for @inAppBodyPostComment.
  ///
  /// In en, this message translates to:
  /// **'commented on your post.'**
  String get inAppBodyPostComment;

  /// No description provided for @inAppBodyPostLike.
  ///
  /// In en, this message translates to:
  /// **'liked your post.'**
  String get inAppBodyPostLike;

  /// No description provided for @inAppBodyRoleInvite.
  ///
  /// In en, this message translates to:
  /// **'invited you to be {article} of a group. Tap to accept or decline.'**
  String inAppBodyRoleInvite(String article);

  /// No description provided for @inAppBodyScreenshotPost.
  ///
  /// In en, this message translates to:
  /// **'took a screenshot of your post.'**
  String get inAppBodyScreenshotPost;

  /// No description provided for @inAppBodyScreenshotProfile.
  ///
  /// In en, this message translates to:
  /// **'took a screenshot of your profile picture.'**
  String get inAppBodyScreenshotProfile;

  /// No description provided for @inAppBodyTransferInvite.
  ///
  /// In en, this message translates to:
  /// **'wants to transfer ownership of a group to you. Tap to accept or decline.'**
  String get inAppBodyTransferInvite;

  /// No description provided for @inAppBodyTrustedCircleAccepted.
  ///
  /// In en, this message translates to:
  /// **'accepted your Trusted Circle invite.'**
  String get inAppBodyTrustedCircleAccepted;

  /// No description provided for @inAppBodyTrustedCircleRequest.
  ///
  /// In en, this message translates to:
  /// **'wants to add you to their Trusted Circle.'**
  String get inAppBodyTrustedCircleRequest;

  /// No description provided for @inAppDateCheckinBody.
  ///
  /// In en, this message translates to:
  /// **'missed their check-in deadline{ctx}. Tap to reach out.'**
  String inAppDateCheckinBody(String ctx);

  /// No description provided for @inAppDateCheckinCtxAt.
  ///
  /// In en, this message translates to:
  /// **', at {l}'**
  String inAppDateCheckinCtxAt(String l);

  /// No description provided for @inAppDateCheckinCtxMeeting.
  ///
  /// In en, this message translates to:
  /// **', meeting {m}'**
  String inAppDateCheckinCtxMeeting(String m);

  /// No description provided for @inAppDateCheckinCtxMeetingAt.
  ///
  /// In en, this message translates to:
  /// **', meeting {m} at {l}'**
  String inAppDateCheckinCtxMeetingAt(String m, String l);

  /// No description provided for @inAppDmFallbackSender.
  ///
  /// In en, this message translates to:
  /// **'Someone'**
  String get inAppDmFallbackSender;

  /// No description provided for @inAppGroupFallback.
  ///
  /// In en, this message translates to:
  /// **'a group'**
  String get inAppGroupFallback;

  /// No description provided for @inAppGroupGenericFallback.
  ///
  /// In en, this message translates to:
  /// **'your group'**
  String get inAppGroupGenericFallback;

  /// No description provided for @inAppGroupKicked.
  ///
  /// In en, this message translates to:
  /// **'You were removed from \"{group}\".'**
  String inAppGroupKicked(String group);

  /// No description provided for @inAppGroupMembershipChanged.
  ///
  /// In en, this message translates to:
  /// **'Your membership in \"{group}\" changed.'**
  String inAppGroupMembershipChanged(String group);

  /// No description provided for @inAppGroupNowAdmin.
  ///
  /// In en, this message translates to:
  /// **'You\'re now an admin of \"{group}\".'**
  String inAppGroupNowAdmin(String group);

  /// No description provided for @inAppGroupNowMember.
  ///
  /// In en, this message translates to:
  /// **'Your role in \"{group}\" changed to member.'**
  String inAppGroupNowMember(String group);

  /// No description provided for @inAppGroupNowMod.
  ///
  /// In en, this message translates to:
  /// **'You\'re now a moderator of \"{group}\".'**
  String inAppGroupNowMod(String group);

  /// No description provided for @inAppGroupRoleChanged.
  ///
  /// In en, this message translates to:
  /// **'Your role in \"{group}\" changed.'**
  String inAppGroupRoleChanged(String group);

  /// No description provided for @inAppGroupTitleFallback.
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get inAppGroupTitleFallback;

  /// No description provided for @inAppGroupUpdateTitle.
  ///
  /// In en, this message translates to:
  /// **'Group update'**
  String get inAppGroupUpdateTitle;

  /// No description provided for @inAppModContentRestored.
  ///
  /// In en, this message translates to:
  /// **'A post or message of yours was restored.'**
  String get inAppModContentRestored;

  /// No description provided for @inAppModDefault.
  ///
  /// In en, this message translates to:
  /// **'Luney moderation took action on your account.'**
  String get inAppModDefault;

  /// No description provided for @inAppModDeleteContent.
  ///
  /// In en, this message translates to:
  /// **'A post or message of yours was removed.'**
  String get inAppModDeleteContent;

  /// No description provided for @inAppModGroupSuspended.
  ///
  /// In en, this message translates to:
  /// **'One of your groups was suspended.'**
  String get inAppModGroupSuspended;

  /// No description provided for @inAppModGroupSuspendedNamed.
  ///
  /// In en, this message translates to:
  /// **'Your group \"{group}\" was suspended.'**
  String inAppModGroupSuspendedNamed(String group);

  /// No description provided for @inAppModGroupSuspLifted.
  ///
  /// In en, this message translates to:
  /// **'A suspension on one of your groups was lifted.'**
  String get inAppModGroupSuspLifted;

  /// No description provided for @inAppModGroupSuspLiftedNamed.
  ///
  /// In en, this message translates to:
  /// **'The suspension on \"{group}\" was lifted.'**
  String inAppModGroupSuspLiftedNamed(String group);

  /// No description provided for @inAppModSuspend.
  ///
  /// In en, this message translates to:
  /// **'Your account has been suspended.'**
  String get inAppModSuspend;

  /// No description provided for @inAppModTitle.
  ///
  /// In en, this message translates to:
  /// **'Luney moderation'**
  String get inAppModTitle;

  /// No description provided for @inAppModWarn.
  ///
  /// In en, this message translates to:
  /// **'A warning was issued on your account.'**
  String get inAppModWarn;

  /// No description provided for @inviteAlreadyMember.
  ///
  /// In en, this message translates to:
  /// **'You\'re already in this group.'**
  String get inviteAlreadyMember;

  /// No description provided for @inviteBackHome.
  ///
  /// In en, this message translates to:
  /// **'Back to home'**
  String get inviteBackHome;

  /// No description provided for @inviteErrExhausted.
  ///
  /// In en, this message translates to:
  /// **'This invite has been used up.'**
  String get inviteErrExhausted;

  /// No description provided for @inviteErrExpired.
  ///
  /// In en, this message translates to:
  /// **'This invite has expired.'**
  String get inviteErrExpired;

  /// No description provided for @inviteErrNotFound.
  ///
  /// In en, this message translates to:
  /// **'That invite doesn\'t exist.'**
  String get inviteErrNotFound;

  /// No description provided for @inviteErrRevoked.
  ///
  /// In en, this message translates to:
  /// **'This invite has been revoked.'**
  String get inviteErrRevoked;

  /// No description provided for @inviteErrSignIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in to accept this invite.'**
  String get inviteErrSignIn;

  /// No description provided for @inviteInvitedToJoin.
  ///
  /// In en, this message translates to:
  /// **'You\'ve been invited to join'**
  String get inviteInvitedToJoin;

  /// No description provided for @inviteJoinGroup.
  ///
  /// In en, this message translates to:
  /// **'Join group'**
  String get inviteJoinGroup;

  /// No description provided for @inviteJoining.
  ///
  /// In en, this message translates to:
  /// **'Joining…'**
  String get inviteJoining;

  /// No description provided for @inviteLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading invite…'**
  String get inviteLoading;

  /// No description provided for @inviteMemberCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 member} other{{count} members}}'**
  String inviteMemberCount(int count);

  /// No description provided for @inviteNotNow.
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get inviteNotNow;

  /// No description provided for @inviteOpenGroup.
  ///
  /// In en, this message translates to:
  /// **'Open group'**
  String get inviteOpenGroup;

  /// No description provided for @languageEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// No description provided for @languagePickerTitle.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languagePickerTitle;

  /// Locale option: follow the device language.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get languageSystemDefault;

  /// No description provided for @lobbiesListDisabledBanner.
  ///
  /// In en, this message translates to:
  /// **'Live Lobbies is paused this month while we sort out audio costs. Back soon.'**
  String get lobbiesListDisabledBanner;

  /// No description provided for @lobbiesListEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Be the first to start one. Tap the button below.'**
  String get lobbiesListEmptyBody;

  /// No description provided for @lobbiesListEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No live lobbies'**
  String get lobbiesListEmptyTitle;

  /// No description provided for @lobbiesListEmptyTitleFiltered.
  ///
  /// In en, this message translates to:
  /// **'No live lobbies for {vibe}'**
  String lobbiesListEmptyTitleFiltered(String vibe);

  /// No description provided for @lobbiesListHostedBy.
  ///
  /// In en, this message translates to:
  /// **'hosted by {name}'**
  String lobbiesListHostedBy(String name);

  /// No description provided for @lobbiesListStartCta.
  ///
  /// In en, this message translates to:
  /// **'Start a lobby'**
  String get lobbiesListStartCta;

  /// No description provided for @lobbiesListTitle.
  ///
  /// In en, this message translates to:
  /// **'Live Lobbies'**
  String get lobbiesListTitle;

  /// No description provided for @lobbiesListVibeAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get lobbiesListVibeAll;

  /// No description provided for @lobbyRoomAmbientBed.
  ///
  /// In en, this message translates to:
  /// **'AMBIENT BED'**
  String get lobbyRoomAmbientBed;

  /// No description provided for @lobbyRoomAmbientBedNoTrack.
  ///
  /// In en, this message translates to:
  /// **'AMBIENT BED · NO TRACK'**
  String get lobbyRoomAmbientBedNoTrack;

  /// No description provided for @lobbyRoomBringUp.
  ///
  /// In en, this message translates to:
  /// **'Bring up'**
  String get lobbyRoomBringUp;

  /// No description provided for @lobbyRoomBroadcastVolume.
  ///
  /// In en, this message translates to:
  /// **'BROADCAST VOLUME'**
  String get lobbyRoomBroadcastVolume;

  /// No description provided for @lobbyRoomCuratedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Curated ambient track baked into the vibe.'**
  String get lobbyRoomCuratedSubtitle;

  /// No description provided for @lobbyRoomEndConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'Everyone will be disconnected. This can\'t be undone.'**
  String get lobbyRoomEndConfirmBody;

  /// No description provided for @lobbyRoomEndConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'End the lobby?'**
  String get lobbyRoomEndConfirmTitle;

  /// No description provided for @lobbyRoomEndedMessage.
  ///
  /// In en, this message translates to:
  /// **'Live audio rooms close when the host hangs up. Catch them next time, or start your own from the Lobbies tab.'**
  String get lobbyRoomEndedMessage;

  /// No description provided for @lobbyRoomEndedRubric.
  ///
  /// In en, this message translates to:
  /// **'LOBBY ENDED'**
  String get lobbyRoomEndedRubric;

  /// No description provided for @lobbyRoomEndedTitle.
  ///
  /// In en, this message translates to:
  /// **'The host ended this lobby'**
  String get lobbyRoomEndedTitle;

  /// No description provided for @lobbyRoomEndLobby.
  ///
  /// In en, this message translates to:
  /// **'End lobby'**
  String get lobbyRoomEndLobby;

  /// No description provided for @lobbyRoomErrAction.
  ///
  /// In en, this message translates to:
  /// **'Action failed'**
  String get lobbyRoomErrAction;

  /// No description provided for @lobbyRoomErrEnd.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t end lobby'**
  String get lobbyRoomErrEnd;

  /// No description provided for @lobbyRoomErrFileTooBigFree.
  ///
  /// In en, this message translates to:
  /// **'File too big. 15 MB max. Get VIP for 50 MB uploads.'**
  String get lobbyRoomErrFileTooBigFree;

  /// No description provided for @lobbyRoomErrFileTooBigVip.
  ///
  /// In en, this message translates to:
  /// **'File too big. 50 MB max.'**
  String get lobbyRoomErrFileTooBigVip;

  /// No description provided for @lobbyRoomErrJoinTitle.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t join lobby'**
  String get lobbyRoomErrJoinTitle;

  /// No description provided for @lobbyRoomErrNeedTitle.
  ///
  /// In en, this message translates to:
  /// **'Add a name for this track. We couldn\'t guess one from the URL.'**
  String get lobbyRoomErrNeedTitle;

  /// No description provided for @lobbyRoomErrPromote.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t promote to speaker'**
  String get lobbyRoomErrPromote;

  /// No description provided for @lobbyRoomErrReadBytes.
  ///
  /// In en, this message translates to:
  /// **'Could not read file bytes.'**
  String get lobbyRoomErrReadBytes;

  /// No description provided for @lobbyRoomErrReset.
  ///
  /// In en, this message translates to:
  /// **'Could not reset: {error}'**
  String lobbyRoomErrReset(String error);

  /// No description provided for @lobbyRoomErrSetTrack.
  ///
  /// In en, this message translates to:
  /// **'Could not set track: {error}'**
  String lobbyRoomErrSetTrack(String error);

  /// No description provided for @lobbyRoomErrStart.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t start lobby'**
  String get lobbyRoomErrStart;

  /// No description provided for @lobbyRoomErrToggleMic.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t toggle mic: {error}'**
  String lobbyRoomErrToggleMic(String error);

  /// No description provided for @lobbyRoomErrToggleMusic.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t toggle music'**
  String get lobbyRoomErrToggleMusic;

  /// No description provided for @lobbyRoomErrUpdateHand.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t update hand: {error}'**
  String lobbyRoomErrUpdateHand(String error);

  /// No description provided for @lobbyRoomErrUpload.
  ///
  /// In en, this message translates to:
  /// **'Upload failed: {error}'**
  String lobbyRoomErrUpload(String error);

  /// No description provided for @lobbyRoomErrUrlScheme.
  ///
  /// In en, this message translates to:
  /// **'URL must start with https://'**
  String get lobbyRoomErrUrlScheme;

  /// No description provided for @lobbyRoomHandRaised.
  ///
  /// In en, this message translates to:
  /// **'Hand raised'**
  String get lobbyRoomHandRaised;

  /// No description provided for @lobbyRoomHandRaisedBanner.
  ///
  /// In en, this message translates to:
  /// **'Hand raised. Host will invite you up soon.'**
  String get lobbyRoomHandRaisedBanner;

  /// No description provided for @lobbyRoomHostLabel.
  ///
  /// In en, this message translates to:
  /// **'HOST'**
  String get lobbyRoomHostLabel;

  /// No description provided for @lobbyRoomLeave.
  ///
  /// In en, this message translates to:
  /// **'Leave'**
  String get lobbyRoomLeave;

  /// No description provided for @lobbyRoomLeaveConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'You\'ll stop hearing the room. You can rejoin anytime.'**
  String get lobbyRoomLeaveConfirmBody;

  /// No description provided for @lobbyRoomLeaveConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Leave lobby?'**
  String get lobbyRoomLeaveConfirmTitle;

  /// No description provided for @lobbyRoomLeaveSemantic.
  ///
  /// In en, this message translates to:
  /// **'Leave lobby'**
  String get lobbyRoomLeaveSemantic;

  /// No description provided for @lobbyRoomListenersCount.
  ///
  /// In en, this message translates to:
  /// **'Listeners · {count}'**
  String lobbyRoomListenersCount(int count);

  /// No description provided for @lobbyRoomListeningSuffix.
  ///
  /// In en, this message translates to:
  /// **' listening'**
  String get lobbyRoomListeningSuffix;

  /// No description provided for @lobbyRoomLiveLobby.
  ///
  /// In en, this message translates to:
  /// **'LIVE LOBBY · {vibe}'**
  String lobbyRoomLiveLobby(String vibe);

  /// No description provided for @lobbyRoomLowerHandSemantic.
  ///
  /// In en, this message translates to:
  /// **'Lower hand'**
  String get lobbyRoomLowerHandSemantic;

  /// No description provided for @lobbyRoomMinimizeSemantic.
  ///
  /// In en, this message translates to:
  /// **'Minimize lobby'**
  String get lobbyRoomMinimizeSemantic;

  /// No description provided for @lobbyRoomMoreOptionsSemantic.
  ///
  /// In en, this message translates to:
  /// **'More options'**
  String get lobbyRoomMoreOptionsSemantic;

  /// No description provided for @lobbyRoomMoveToListeners.
  ///
  /// In en, this message translates to:
  /// **'Move to listeners'**
  String get lobbyRoomMoveToListeners;

  /// No description provided for @lobbyRoomMusicControls.
  ///
  /// In en, this message translates to:
  /// **'Music controls'**
  String get lobbyRoomMusicControls;

  /// No description provided for @lobbyRoomMuteForMe.
  ///
  /// In en, this message translates to:
  /// **'Mute for me only'**
  String get lobbyRoomMuteForMe;

  /// No description provided for @lobbyRoomMuteForMeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Listeners still hear the music'**
  String get lobbyRoomMuteForMeSubtitle;

  /// No description provided for @lobbyRoomMuteSemanticLive.
  ///
  /// In en, this message translates to:
  /// **'You\'re live, tap to mute'**
  String get lobbyRoomMuteSemanticLive;

  /// No description provided for @lobbyRoomNoAudio.
  ///
  /// In en, this message translates to:
  /// **'No audio in this room. Check mic permission or try rejoining.'**
  String get lobbyRoomNoAudio;

  /// No description provided for @lobbyRoomNoDefaultSubtitle.
  ///
  /// In en, this message translates to:
  /// **'No default for this vibe. Pick a source below.'**
  String get lobbyRoomNoDefaultSubtitle;

  /// No description provided for @lobbyRoomNowPlaying.
  ///
  /// In en, this message translates to:
  /// **'NOW PLAYING'**
  String get lobbyRoomNowPlaying;

  /// No description provided for @lobbyRoomOnStage.
  ///
  /// In en, this message translates to:
  /// **'ON STAGE · {count}'**
  String lobbyRoomOnStage(int count);

  /// No description provided for @lobbyRoomPasteUrl.
  ///
  /// In en, this message translates to:
  /// **'Paste a direct URL'**
  String get lobbyRoomPasteUrl;

  /// No description provided for @lobbyRoomPasteUrlSubtitle.
  ///
  /// In en, this message translates to:
  /// **'HTTPS link to an audio file (e.g. Pixabay download). YouTube / Spotify links won\'t work; Agora needs a direct stream.'**
  String get lobbyRoomPasteUrlSubtitle;

  /// No description provided for @lobbyRoomRaisedHands.
  ///
  /// In en, this message translates to:
  /// **'✋ RAISED HANDS · {count}'**
  String lobbyRoomRaisedHands(int count);

  /// No description provided for @lobbyRoomRaiseHandToTalk.
  ///
  /// In en, this message translates to:
  /// **'Raise hand to talk'**
  String get lobbyRoomRaiseHandToTalk;

  /// No description provided for @lobbyRoomRemovedMessage.
  ///
  /// In en, this message translates to:
  /// **'You\'ve been taken out of this lobby by the host. You can join other open rooms from the Lobbies tab any time.'**
  String get lobbyRoomRemovedMessage;

  /// No description provided for @lobbyRoomRemovedRubric.
  ///
  /// In en, this message translates to:
  /// **'REMOVED'**
  String get lobbyRoomRemovedRubric;

  /// No description provided for @lobbyRoomRemovedTitle.
  ///
  /// In en, this message translates to:
  /// **'The host removed you from the lobby'**
  String get lobbyRoomRemovedTitle;

  /// No description provided for @lobbyRoomRemoveFromLobby.
  ///
  /// In en, this message translates to:
  /// **'Remove from lobby'**
  String get lobbyRoomRemoveFromLobby;

  /// No description provided for @lobbyRoomReportSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sends a report to Luney moderation about {host}.'**
  String lobbyRoomReportSubtitle(String host);

  /// No description provided for @lobbyRoomReportTargetLabel.
  ///
  /// In en, this message translates to:
  /// **'\"{title}\" hosted by {host}'**
  String lobbyRoomReportTargetLabel(String title, String host);

  /// No description provided for @lobbyRoomReportTitle.
  ///
  /// In en, this message translates to:
  /// **'Report this lobby'**
  String get lobbyRoomReportTitle;

  /// No description provided for @lobbyRoomResetSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Removes your custom track. Uploaded files are deleted.'**
  String get lobbyRoomResetSubtitle;

  /// No description provided for @lobbyRoomResetToVibeDefault.
  ///
  /// In en, this message translates to:
  /// **'Reset to vibe default'**
  String get lobbyRoomResetToVibeDefault;

  /// No description provided for @lobbyRoomStartLobby.
  ///
  /// In en, this message translates to:
  /// **'Start Lobby'**
  String get lobbyRoomStartLobby;

  /// No description provided for @lobbyRoomStay.
  ///
  /// In en, this message translates to:
  /// **'Stay'**
  String get lobbyRoomStay;

  /// No description provided for @lobbyRoomTapToUnmute.
  ///
  /// In en, this message translates to:
  /// **'Tap to unmute'**
  String get lobbyRoomTapToUnmute;

  /// No description provided for @lobbyRoomTheHost.
  ///
  /// In en, this message translates to:
  /// **'the host'**
  String get lobbyRoomTheHost;

  /// No description provided for @lobbyRoomTrackNameHint.
  ///
  /// In en, this message translates to:
  /// **'Track name (auto-filled from the URL)'**
  String get lobbyRoomTrackNameHint;

  /// No description provided for @lobbyRoomTrackSource.
  ///
  /// In en, this message translates to:
  /// **'TRACK SOURCE'**
  String get lobbyRoomTrackSource;

  /// No description provided for @lobbyRoomUploadedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Stored just for this lobby. Auto-deleted when the room closes.'**
  String get lobbyRoomUploadedSubtitle;

  /// No description provided for @lobbyRoomUploadFromDevice.
  ///
  /// In en, this message translates to:
  /// **'Upload from device'**
  String get lobbyRoomUploadFromDevice;

  /// No description provided for @lobbyRoomUploadSubtitleFree.
  ///
  /// In en, this message translates to:
  /// **'MP3 / M4A / AAC / OGG / WAV. 15 MB max. VIP raises to 50 MB.'**
  String get lobbyRoomUploadSubtitleFree;

  /// No description provided for @lobbyRoomUploadSubtitleVip.
  ///
  /// In en, this message translates to:
  /// **'MP3 / M4A / AAC / OGG / WAV. 50 MB max.'**
  String get lobbyRoomUploadSubtitleVip;

  /// No description provided for @lobbyRoomUrlHint.
  ///
  /// In en, this message translates to:
  /// **'https://example.com/track.mp3'**
  String get lobbyRoomUrlHint;

  /// No description provided for @lobbyRoomUseThisUrl.
  ///
  /// In en, this message translates to:
  /// **'Use this URL'**
  String get lobbyRoomUseThisUrl;

  /// No description provided for @lobbyRoomVibeDefault.
  ///
  /// In en, this message translates to:
  /// **'Vibe default'**
  String get lobbyRoomVibeDefault;

  /// No description provided for @lobbyRoomVibeDefaultNamed.
  ///
  /// In en, this message translates to:
  /// **'Vibe default · {vibe}'**
  String lobbyRoomVibeDefaultNamed(String vibe);

  /// No description provided for @lobbyRoomWaitingForHost.
  ///
  /// In en, this message translates to:
  /// **'Waiting for the host to start…'**
  String get lobbyRoomWaitingForHost;

  /// No description provided for @lobbyRoomWaitingForSomeone.
  ///
  /// In en, this message translates to:
  /// **'Waiting for someone to join…'**
  String get lobbyRoomWaitingForSomeone;

  /// No description provided for @lobbyRoomYou.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get lobbyRoomYou;

  /// No description provided for @lobbyRoomYoureLive.
  ///
  /// In en, this message translates to:
  /// **'You\'re live'**
  String get lobbyRoomYoureLive;

  /// No description provided for @lobbyRoomYourLinkedUrl.
  ///
  /// In en, this message translates to:
  /// **'Your linked URL'**
  String get lobbyRoomYourLinkedUrl;

  /// No description provided for @lobbyRoomYourUploadedTrack.
  ///
  /// In en, this message translates to:
  /// **'Your uploaded track'**
  String get lobbyRoomYourUploadedTrack;

  /// No description provided for @lobbyVibeChill.
  ///
  /// In en, this message translates to:
  /// **'Chill'**
  String get lobbyVibeChill;

  /// No description provided for @lobbyVibeFocus.
  ///
  /// In en, this message translates to:
  /// **'Focus'**
  String get lobbyVibeFocus;

  /// No description provided for @lobbyVibeHype.
  ///
  /// In en, this message translates to:
  /// **'Hype'**
  String get lobbyVibeHype;

  /// No description provided for @lobbyVibeSupport.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get lobbyVibeSupport;

  /// No description provided for @lobbyVibeWatch.
  ///
  /// In en, this message translates to:
  /// **'Watch'**
  String get lobbyVibeWatch;

  /// No description provided for @luneyErrorSheetCode.
  ///
  /// In en, this message translates to:
  /// **'Code: {code}'**
  String luneyErrorSheetCode(String code);

  /// No description provided for @luneyErrorSheetDetails.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get luneyErrorSheetDetails;

  /// No description provided for @luneyErrorSheetOperationFallback.
  ///
  /// In en, this message translates to:
  /// **'Action failed'**
  String get luneyErrorSheetOperationFallback;

  /// No description provided for @luneyErrorSheetRubric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get luneyErrorSheetRubric;

  /// No description provided for @luneyInfoSheetDefaultRubricInfo.
  ///
  /// In en, this message translates to:
  /// **'Heads up'**
  String get luneyInfoSheetDefaultRubricInfo;

  /// No description provided for @luneyInfoSheetDefaultRubricSuccess.
  ///
  /// In en, this message translates to:
  /// **'All set'**
  String get luneyInfoSheetDefaultRubricSuccess;

  /// No description provided for @luneyTabBarDms.
  ///
  /// In en, this message translates to:
  /// **'DMs'**
  String get luneyTabBarDms;

  /// No description provided for @luneyTabBarGroups.
  ///
  /// In en, this message translates to:
  /// **'Groups'**
  String get luneyTabBarGroups;

  /// No description provided for @luneyTabBarHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get luneyTabBarHome;

  /// No description provided for @luneyTabBarMe.
  ///
  /// In en, this message translates to:
  /// **'Me'**
  String get luneyTabBarMe;

  /// No description provided for @luneyTabBarUnreadLabel.
  ///
  /// In en, this message translates to:
  /// **'{label}, {count, plural, =1{1 unread} other{{count} unread}}'**
  String luneyTabBarUnreadLabel(String label, int count);

  /// No description provided for @magicLinkBackTooltip.
  ///
  /// In en, this message translates to:
  /// **'Back to sign in'**
  String get magicLinkBackTooltip;

  /// No description provided for @magicLinkDidntGet.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t get it? Check spam, or:'**
  String get magicLinkDidntGet;

  /// No description provided for @magicLinkEmailHint.
  ///
  /// In en, this message translates to:
  /// **'you@domain.com'**
  String get magicLinkEmailHint;

  /// No description provided for @magicLinkEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get magicLinkEmailLabel;

  /// No description provided for @magicLinkErrSend.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send magic link'**
  String get magicLinkErrSend;

  /// No description provided for @magicLinkSend.
  ///
  /// In en, this message translates to:
  /// **'Send magic link'**
  String get magicLinkSend;

  /// No description provided for @magicLinkSending.
  ///
  /// In en, this message translates to:
  /// **'Sending…'**
  String get magicLinkSending;

  /// No description provided for @magicLinkSentTitle.
  ///
  /// In en, this message translates to:
  /// **'Magic link sent'**
  String get magicLinkSentTitle;

  /// No description provided for @magicLinkSentTo.
  ///
  /// In en, this message translates to:
  /// **'Tap the link we sent to'**
  String get magicLinkSentTo;

  /// No description provided for @magicLinkSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in without a password'**
  String get magicLinkSubtitle;

  /// No description provided for @markdownDocLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load this page. Try again or pull-to-refresh from outside the screen.'**
  String get markdownDocLoadError;

  /// No description provided for @matchNudgeDismissA11y.
  ///
  /// In en, this message translates to:
  /// **'Dismiss suggestion'**
  String get matchNudgeDismissA11y;

  /// No description provided for @matchNudgeErrOpenChat.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open chat'**
  String get matchNudgeErrOpenChat;

  /// No description provided for @matchNudgeErrorLabel.
  ///
  /// In en, this message translates to:
  /// **'Match Nudge'**
  String get matchNudgeErrorLabel;

  /// No description provided for @matchNudgeNotNow.
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get matchNudgeNotNow;

  /// No description provided for @matchNudgeOpenProfileA11y.
  ///
  /// In en, this message translates to:
  /// **'Open {name}\'s profile'**
  String matchNudgeOpenProfileA11y(String name);

  /// No description provided for @matchNudgeSayHi.
  ///
  /// In en, this message translates to:
  /// **'Say hi →'**
  String get matchNudgeSayHi;

  /// No description provided for @matchNudgeSayHiA11y.
  ///
  /// In en, this message translates to:
  /// **'Say hi to {name}'**
  String matchNudgeSayHiA11y(String name);

  /// No description provided for @matchNudgeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'is also looking for something this week'**
  String get matchNudgeSubtitle;

  /// No description provided for @matchNudgeTitle.
  ///
  /// In en, this message translates to:
  /// **'You might vibe'**
  String get matchNudgeTitle;

  /// No description provided for @mediaUploadAuditFailed.
  ///
  /// In en, this message translates to:
  /// **'Audit log failed'**
  String get mediaUploadAuditFailed;

  /// No description provided for @mediaUploadFailed.
  ///
  /// In en, this message translates to:
  /// **'Upload failed'**
  String get mediaUploadFailed;

  /// No description provided for @mediaUploadNotSignedIn.
  ///
  /// In en, this message translates to:
  /// **'Not signed in'**
  String get mediaUploadNotSignedIn;

  /// No description provided for @membersAdminInviteSent.
  ///
  /// In en, this message translates to:
  /// **'Admin invite sent to @{handle}.'**
  String membersAdminInviteSent(String handle);

  /// No description provided for @membersBadgeAdmin.
  ///
  /// In en, this message translates to:
  /// **'ADMIN'**
  String get membersBadgeAdmin;

  /// No description provided for @membersBadgeMod.
  ///
  /// In en, this message translates to:
  /// **'MOD'**
  String get membersBadgeMod;

  /// No description provided for @membersBadgeOwner.
  ///
  /// In en, this message translates to:
  /// **'OWNER'**
  String get membersBadgeOwner;

  /// No description provided for @membersDemote.
  ///
  /// In en, this message translates to:
  /// **'Demote to member'**
  String get membersDemote;

  /// No description provided for @membersErrChangeRole.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t change role'**
  String get membersErrChangeRole;

  /// No description provided for @membersErrRemove.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t remove member'**
  String get membersErrRemove;

  /// No description provided for @membersErrSendInvite.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send invite'**
  String get membersErrSendInvite;

  /// No description provided for @membersInviteAdmin.
  ///
  /// In en, this message translates to:
  /// **'Invite as admin'**
  String get membersInviteAdmin;

  /// No description provided for @membersInviteMod.
  ///
  /// In en, this message translates to:
  /// **'Invite as moderator'**
  String get membersInviteMod;

  /// No description provided for @membersLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load members: {error}'**
  String membersLoadError(String error);

  /// No description provided for @membersModInviteSent.
  ///
  /// In en, this message translates to:
  /// **'Moderator invite sent to @{handle}.'**
  String membersModInviteSent(String handle);

  /// No description provided for @membersRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove from group'**
  String get membersRemove;

  /// No description provided for @membersRemoveBody.
  ///
  /// In en, this message translates to:
  /// **'They lose access to posts and chat. They can re-join if the group is public.'**
  String get membersRemoveBody;

  /// No description provided for @membersRemoveTitle.
  ///
  /// In en, this message translates to:
  /// **'Remove @{handle}?'**
  String membersRemoveTitle(String handle);

  /// No description provided for @membersRoleAdmin.
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get membersRoleAdmin;

  /// No description provided for @membersRoleMember.
  ///
  /// In en, this message translates to:
  /// **'Member'**
  String get membersRoleMember;

  /// No description provided for @membersRoleMod.
  ///
  /// In en, this message translates to:
  /// **'Moderator'**
  String get membersRoleMod;

  /// No description provided for @membersYouSuffix.
  ///
  /// In en, this message translates to:
  /// **'· you'**
  String get membersYouSuffix;

  /// No description provided for @mentionAutocompleteStaffBroadcast.
  ///
  /// In en, this message translates to:
  /// **'Luney moderation team'**
  String get mentionAutocompleteStaffBroadcast;

  /// No description provided for @mentionTextNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'@{handle} isn\'t on Luney. Double-check the spelling, or send the link directly if you meant a different account.'**
  String mentionTextNotFoundMessage(String handle);

  /// No description provided for @mentionTextNotFoundTitle.
  ///
  /// In en, this message translates to:
  /// **'Handle not found'**
  String get mentionTextNotFoundTitle;

  /// No description provided for @mentionTextRubric.
  ///
  /// In en, this message translates to:
  /// **'MENTION'**
  String get mentionTextRubric;

  /// No description provided for @myAchievementsEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Keep using Luney. Some are awarded automatically; others get granted by the team.'**
  String get myAchievementsEmptyBody;

  /// No description provided for @myAchievementsEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No achievements yet.'**
  String get myAchievementsEmptyTitle;

  /// No description provided for @myAchievementsTitle.
  ///
  /// In en, this message translates to:
  /// **'Your achievements'**
  String get myAchievementsTitle;

  /// No description provided for @myReelsEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Tap + to share a short vertical video.'**
  String get myReelsEmptyBody;

  /// No description provided for @myReelsEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No reels yet'**
  String get myReelsEmptyTitle;

  /// No description provided for @myReelsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load your reels.'**
  String get myReelsLoadError;

  /// No description provided for @myReelsNewReel.
  ///
  /// In en, this message translates to:
  /// **'New reel'**
  String get myReelsNewReel;

  /// No description provided for @myReelsSemanticOpen.
  ///
  /// In en, this message translates to:
  /// **'Open reel'**
  String get myReelsSemanticOpen;

  /// No description provided for @myReelsSemanticProcessing.
  ///
  /// In en, this message translates to:
  /// **'Reel processing'**
  String get myReelsSemanticProcessing;

  /// No description provided for @myReelsStatusFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get myReelsStatusFailed;

  /// No description provided for @myReelsStatusProcessing.
  ///
  /// In en, this message translates to:
  /// **'Processing…'**
  String get myReelsStatusProcessing;

  /// No description provided for @myReelsTitle.
  ///
  /// In en, this message translates to:
  /// **'Your reels'**
  String get myReelsTitle;

  /// No description provided for @myReelsTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get myReelsTryAgain;

  /// No description provided for @newDmBlockedBody.
  ///
  /// In en, this message translates to:
  /// **'One of you has blocked the other, so a new DM can\'t start. If you blocked them by accident, unblock them from their profile sheet.'**
  String get newDmBlockedBody;

  /// No description provided for @newDmBlockedRubric.
  ///
  /// In en, this message translates to:
  /// **'CONVERSATION BLOCKED'**
  String get newDmBlockedRubric;

  /// No description provided for @newDmBlockedTitle.
  ///
  /// In en, this message translates to:
  /// **'You can\'t start this conversation'**
  String get newDmBlockedTitle;

  /// No description provided for @newDmEmptyPrompt.
  ///
  /// In en, this message translates to:
  /// **'Find someone to message. Type a handle.'**
  String get newDmEmptyPrompt;

  /// No description provided for @newDmErrStart.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t start chat'**
  String get newDmErrStart;

  /// No description provided for @newDmNoResults.
  ///
  /// In en, this message translates to:
  /// **'No one found.'**
  String get newDmNoResults;

  /// No description provided for @newDmSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search by handle…'**
  String get newDmSearchHint;

  /// No description provided for @newDmSearching.
  ///
  /// In en, this message translates to:
  /// **'Searching…'**
  String get newDmSearching;

  /// No description provided for @newDmTitle.
  ///
  /// In en, this message translates to:
  /// **'New message'**
  String get newDmTitle;

  /// No description provided for @newTicketAttachFile.
  ///
  /// In en, this message translates to:
  /// **'File'**
  String get newTicketAttachFile;

  /// No description provided for @newTicketAttachImage.
  ///
  /// In en, this message translates to:
  /// **'Image'**
  String get newTicketAttachImage;

  /// No description provided for @newTicketBodyHint.
  ///
  /// In en, this message translates to:
  /// **'What\'s going on? Markdown works (**bold**, lists, tables, code).'**
  String get newTicketBodyHint;

  /// No description provided for @newTicketCatElseSubtitle.
  ///
  /// In en, this message translates to:
  /// **'General report, feedback, or anything that doesn\'t fit above.'**
  String get newTicketCatElseSubtitle;

  /// No description provided for @newTicketCatElseTitle.
  ///
  /// In en, this message translates to:
  /// **'Something Else'**
  String get newTicketCatElseTitle;

  /// No description provided for @newTicketCatGroupSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Something about a group you belong to: questions, reports, appeals.'**
  String get newTicketCatGroupSubtitle;

  /// No description provided for @newTicketCatGroupTitle.
  ///
  /// In en, this message translates to:
  /// **'For a Group'**
  String get newTicketCatGroupTitle;

  /// No description provided for @newTicketCatMyselfSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A question, a bug, or feedback about your account.'**
  String get newTicketCatMyselfSubtitle;

  /// No description provided for @newTicketCatMyselfTitle.
  ///
  /// In en, this message translates to:
  /// **'For myself'**
  String get newTicketCatMyselfTitle;

  /// No description provided for @newTicketErrBody.
  ///
  /// In en, this message translates to:
  /// **'Tell us what is going on.'**
  String get newTicketErrBody;

  /// No description provided for @newTicketErrGroup.
  ///
  /// In en, this message translates to:
  /// **'Pick which group this is about.'**
  String get newTicketErrGroup;

  /// No description provided for @newTicketErrSubject.
  ///
  /// In en, this message translates to:
  /// **'Subject is required.'**
  String get newTicketErrSubject;

  /// No description provided for @newTicketErrSubmit.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t submit the ticket'**
  String get newTicketErrSubmit;

  /// No description provided for @newTicketFilePickerUnavailable.
  ///
  /// In en, this message translates to:
  /// **'File picker not available yet. Please restart the app to finish setting it up.'**
  String get newTicketFilePickerUnavailable;

  /// No description provided for @newTicketGroupsError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load your groups: {error}'**
  String newTicketGroupsError(String error);

  /// No description provided for @newTicketGroupsLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading your groups…'**
  String get newTicketGroupsLoading;

  /// No description provided for @newTicketHeadingGroup.
  ///
  /// In en, this message translates to:
  /// **'Ticket about a group'**
  String get newTicketHeadingGroup;

  /// No description provided for @newTicketHeadingMyself.
  ///
  /// In en, this message translates to:
  /// **'Ticket about your account'**
  String get newTicketHeadingMyself;

  /// No description provided for @newTicketLabelDetails.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get newTicketLabelDetails;

  /// No description provided for @newTicketLabelGroup.
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get newTicketLabelGroup;

  /// No description provided for @newTicketLabelSubject.
  ///
  /// In en, this message translates to:
  /// **'Subject'**
  String get newTicketLabelSubject;

  /// No description provided for @newTicketNoGroups.
  ///
  /// In en, this message translates to:
  /// **'You\'re not a member of any groups yet. Pick \"Something Else\" instead.'**
  String get newTicketNoGroups;

  /// No description provided for @newTicketPickGroup.
  ///
  /// In en, this message translates to:
  /// **'Pick a group…'**
  String get newTicketPickGroup;

  /// No description provided for @newTicketPrivateGroup.
  ///
  /// In en, this message translates to:
  /// **'Private group'**
  String get newTicketPrivateGroup;

  /// No description provided for @newTicketPublicGroup.
  ///
  /// In en, this message translates to:
  /// **'Public group'**
  String get newTicketPublicGroup;

  /// No description provided for @newTicketSend.
  ///
  /// In en, this message translates to:
  /// **'Send ticket'**
  String get newTicketSend;

  /// No description provided for @newTicketSending.
  ///
  /// In en, this message translates to:
  /// **'Sending…'**
  String get newTicketSending;

  /// No description provided for @newTicketSubjectHint.
  ///
  /// In en, this message translates to:
  /// **'A short summary'**
  String get newTicketSubjectHint;

  /// No description provided for @newTicketSubtitle.
  ///
  /// In en, this message translates to:
  /// **'What\'s this about?'**
  String get newTicketSubtitle;

  /// No description provided for @newTicketTbBold.
  ///
  /// In en, this message translates to:
  /// **'Bold'**
  String get newTicketTbBold;

  /// No description provided for @newTicketTbCode.
  ///
  /// In en, this message translates to:
  /// **'Inline code'**
  String get newTicketTbCode;

  /// No description provided for @newTicketTbHeading.
  ///
  /// In en, this message translates to:
  /// **'Heading'**
  String get newTicketTbHeading;

  /// No description provided for @newTicketTbItalic.
  ///
  /// In en, this message translates to:
  /// **'Italic'**
  String get newTicketTbItalic;

  /// No description provided for @newTicketTbLink.
  ///
  /// In en, this message translates to:
  /// **'Link'**
  String get newTicketTbLink;

  /// No description provided for @newTicketTbList.
  ///
  /// In en, this message translates to:
  /// **'List'**
  String get newTicketTbList;

  /// No description provided for @newTicketTbQuote.
  ///
  /// In en, this message translates to:
  /// **'Quote'**
  String get newTicketTbQuote;

  /// No description provided for @newTicketTbTable.
  ///
  /// In en, this message translates to:
  /// **'Table'**
  String get newTicketTbTable;

  /// No description provided for @newTicketTitle.
  ///
  /// In en, this message translates to:
  /// **'New ticket'**
  String get newTicketTitle;

  /// No description provided for @nicknameStyleApply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get nicknameStyleApply;

  /// No description provided for @nicknameStyleColor.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get nicknameStyleColor;

  /// No description provided for @nicknameStyleEffect.
  ///
  /// In en, this message translates to:
  /// **'Effect'**
  String get nicknameStyleEffect;

  /// No description provided for @nicknameStyleFont.
  ///
  /// In en, this message translates to:
  /// **'Font'**
  String get nicknameStyleFont;

  /// No description provided for @nicknameStyleReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get nicknameStyleReset;

  /// No description provided for @nicknameStyleSecondColor.
  ///
  /// In en, this message translates to:
  /// **'Second color'**
  String get nicknameStyleSecondColor;

  /// No description provided for @nicknameStyleTitle.
  ///
  /// In en, this message translates to:
  /// **'Display name style'**
  String get nicknameStyleTitle;

  /// No description provided for @notifAchievementEarned.
  ///
  /// In en, this message translates to:
  /// **'unlocked. Tap to see what you earned.'**
  String get notifAchievementEarned;

  /// No description provided for @notifActionMarkRead.
  ///
  /// In en, this message translates to:
  /// **'Mark as read'**
  String get notifActionMarkRead;

  /// No description provided for @notifActionReply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get notifActionReply;

  /// No description provided for @notifActionReplyHint.
  ///
  /// In en, this message translates to:
  /// **'Reply with a message…'**
  String get notifActionReplyHint;

  /// No description provided for @notifActorGroupAdmins.
  ///
  /// In en, this message translates to:
  /// **'Group admins'**
  String get notifActorGroupAdmins;

  /// No description provided for @notifActorLuneyRewind.
  ///
  /// In en, this message translates to:
  /// **'Luney Rewind'**
  String get notifActorLuneyRewind;

  /// No description provided for @notifActorLuneyStaff.
  ///
  /// In en, this message translates to:
  /// **'Luney Staff'**
  String get notifActorLuneyStaff;

  /// No description provided for @notifActorLuneyTeam.
  ///
  /// In en, this message translates to:
  /// **'Luney team'**
  String get notifActorLuneyTeam;

  /// No description provided for @notifActorModerationTeam.
  ///
  /// In en, this message translates to:
  /// **'Luney moderation team'**
  String get notifActorModerationTeam;

  /// No description provided for @notifActorNewBadge.
  ///
  /// In en, this message translates to:
  /// **'New badge'**
  String get notifActorNewBadge;

  /// No description provided for @notifActorSomeone.
  ///
  /// In en, this message translates to:
  /// **'Someone'**
  String get notifActorSomeone;

  /// No description provided for @notifActorYourGroup.
  ///
  /// In en, this message translates to:
  /// **'Your group'**
  String get notifActorYourGroup;

  /// No description provided for @notifActorYourReel.
  ///
  /// In en, this message translates to:
  /// **'Your reel'**
  String get notifActorYourReel;

  /// No description provided for @notifAnniversary.
  ///
  /// In en, this message translates to:
  /// **'sent you a friendiversary card 🎉'**
  String get notifAnniversary;

  /// No description provided for @notifAnniversaryYears.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{sent you a 1 year friendiversary card 🎉} other{sent you a {count} year friendiversary card 🎉}}'**
  String notifAnniversaryYears(int count);

  /// No description provided for @notifBodyCommentReply.
  ///
  /// In en, this message translates to:
  /// **'replied to your comment.'**
  String get notifBodyCommentReply;

  /// No description provided for @notifBodyFriendAccept.
  ///
  /// In en, this message translates to:
  /// **'accepted your friend request.'**
  String get notifBodyFriendAccept;

  /// No description provided for @notifBodyFriendRequest.
  ///
  /// In en, this message translates to:
  /// **'sent you a friend request.'**
  String get notifBodyFriendRequest;

  /// No description provided for @notifBodyMention.
  ///
  /// In en, this message translates to:
  /// **'mentioned you.'**
  String get notifBodyMention;

  /// No description provided for @notifBodyPostComment.
  ///
  /// In en, this message translates to:
  /// **'commented on your post.'**
  String get notifBodyPostComment;

  /// No description provided for @notifBodyPostLike.
  ///
  /// In en, this message translates to:
  /// **'liked your post.'**
  String get notifBodyPostLike;

  /// No description provided for @notifCatDms.
  ///
  /// In en, this message translates to:
  /// **'DIRECT MESSAGES'**
  String get notifCatDms;

  /// No description provided for @notifCatEvents.
  ///
  /// In en, this message translates to:
  /// **'EVENTS'**
  String get notifCatEvents;

  /// No description provided for @notifCatFeedback.
  ///
  /// In en, this message translates to:
  /// **'FEEDBACK'**
  String get notifCatFeedback;

  /// No description provided for @notifCatGroups.
  ///
  /// In en, this message translates to:
  /// **'GROUPS'**
  String get notifCatGroups;

  /// No description provided for @notifCatIcebreakers.
  ///
  /// In en, this message translates to:
  /// **'ICEBREAKERS'**
  String get notifCatIcebreakers;

  /// No description provided for @notifCatMilestones.
  ///
  /// In en, this message translates to:
  /// **'MILESTONES'**
  String get notifCatMilestones;

  /// No description provided for @notifCatModeration.
  ///
  /// In en, this message translates to:
  /// **'MODERATION'**
  String get notifCatModeration;

  /// No description provided for @notifCatPosts.
  ///
  /// In en, this message translates to:
  /// **'POSTS'**
  String get notifCatPosts;

  /// No description provided for @notifCatReels.
  ///
  /// In en, this message translates to:
  /// **'REELS'**
  String get notifCatReels;

  /// No description provided for @notifCatSafety.
  ///
  /// In en, this message translates to:
  /// **'SAFETY'**
  String get notifCatSafety;

  /// No description provided for @notifCatSeasonal.
  ///
  /// In en, this message translates to:
  /// **'SEASONAL'**
  String get notifCatSeasonal;

  /// No description provided for @notifCatShoutouts.
  ///
  /// In en, this message translates to:
  /// **'SHOUTOUTS'**
  String get notifCatShoutouts;

  /// No description provided for @notifCatSocial.
  ///
  /// In en, this message translates to:
  /// **'SOCIAL'**
  String get notifCatSocial;

  /// No description provided for @notifCatWeeklyPrompt.
  ///
  /// In en, this message translates to:
  /// **'WEEKLY PROMPT'**
  String get notifCatWeeklyPrompt;

  /// No description provided for @notifChannelDesc.
  ///
  /// In en, this message translates to:
  /// **'DMs and inbox notifications you can mark read directly from the notification shade.'**
  String get notifChannelDesc;

  /// No description provided for @notifChannelName.
  ///
  /// In en, this message translates to:
  /// **'Messages and mentions'**
  String get notifChannelName;

  /// No description provided for @notifClearBody.
  ///
  /// In en, this message translates to:
  /// **'This permanently deletes everything you\'ve already read. Unread notifications stay. (Read ones are auto-cleared after 7 days anyway.)'**
  String get notifClearBody;

  /// No description provided for @notifClearConfirm.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get notifClearConfirm;

  /// No description provided for @notifClearedBody.
  ///
  /// In en, this message translates to:
  /// **'Read notifications removed from your inbox. Unread ones are still here.'**
  String get notifClearedBody;

  /// No description provided for @notifClearedRubric.
  ///
  /// In en, this message translates to:
  /// **'CLEARED'**
  String get notifClearedRubric;

  /// No description provided for @notifClearedTitle.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Cleared 1 notification} other{Cleared {count} notifications}}'**
  String notifClearedTitle(int count);

  /// No description provided for @notifClearErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t clear notifications'**
  String get notifClearErrorOp;

  /// No description provided for @notifClearNothingBody.
  ///
  /// In en, this message translates to:
  /// **'There were no read notifications waiting to be cleared. Anything still in your inbox is unread or hasn\'t been opened yet.'**
  String get notifClearNothingBody;

  /// No description provided for @notifClearNothingRubric.
  ///
  /// In en, this message translates to:
  /// **'INBOX'**
  String get notifClearNothingRubric;

  /// No description provided for @notifClearNothingTitle.
  ///
  /// In en, this message translates to:
  /// **'Nothing to clear'**
  String get notifClearNothingTitle;

  /// No description provided for @notifClearTitle.
  ///
  /// In en, this message translates to:
  /// **'Clear read notifications?'**
  String get notifClearTitle;

  /// No description provided for @notifCrisisAlert.
  ///
  /// In en, this message translates to:
  /// **'is thinking of you. You don\'t have to go through this alone. Tap for support.'**
  String get notifCrisisAlert;

  /// No description provided for @notifDateCheckin.
  ///
  /// In en, this message translates to:
  /// **'missed their check-in deadline. Tap to reach out.'**
  String get notifDateCheckin;

  /// No description provided for @notifDateCheckinLoc.
  ///
  /// In en, this message translates to:
  /// **'missed their check-in deadline, at {loc}. Tap to reach out.'**
  String notifDateCheckinLoc(String loc);

  /// No description provided for @notifDateCheckinMeeting.
  ///
  /// In en, this message translates to:
  /// **'missed their check-in deadline, meeting {meeting}. Tap to reach out.'**
  String notifDateCheckinMeeting(String meeting);

  /// No description provided for @notifDateCheckinMeetingLoc.
  ///
  /// In en, this message translates to:
  /// **'missed their check-in deadline, meeting {meeting} at {loc}. Tap to reach out.'**
  String notifDateCheckinMeetingLoc(String meeting, String loc);

  /// No description provided for @notifDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'This permanently removes the row from your inbox. Other notifications stay.'**
  String get notifDeleteBody;

  /// No description provided for @notifDeleteErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete notification'**
  String get notifDeleteErrorOp;

  /// No description provided for @notifDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this notification?'**
  String get notifDeleteTitle;

  /// No description provided for @notifEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Likes, comments, and friend events will land here.'**
  String get notifEmptyBody;

  /// No description provided for @notifEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No notifications yet'**
  String get notifEmptyTitle;

  /// No description provided for @notifFallbackAGroup.
  ///
  /// In en, this message translates to:
  /// **'a group'**
  String get notifFallbackAGroup;

  /// No description provided for @notifFallbackAnotherMember.
  ///
  /// In en, this message translates to:
  /// **'another member'**
  String get notifFallbackAnotherMember;

  /// No description provided for @notifFallbackYourGroup.
  ///
  /// In en, this message translates to:
  /// **'your group'**
  String get notifFallbackYourGroup;

  /// No description provided for @notifFeedbackComment.
  ///
  /// In en, this message translates to:
  /// **'commented on your feedback.'**
  String get notifFeedbackComment;

  /// No description provided for @notifFeedbackDenied.
  ///
  /// In en, this message translates to:
  /// **'closed your feedback. Tap to read the staff note.'**
  String get notifFeedbackDenied;

  /// No description provided for @notifFeedbackDuplicate.
  ///
  /// In en, this message translates to:
  /// **'marked your feedback as a duplicate of another submission.'**
  String get notifFeedbackDuplicate;

  /// No description provided for @notifFeedbackReply.
  ///
  /// In en, this message translates to:
  /// **'replied to your feedback. Tap to read it.'**
  String get notifFeedbackReply;

  /// No description provided for @notifFeedbackShipped.
  ///
  /// In en, this message translates to:
  /// **'shipped your feedback 🎉 Tap to see what landed.'**
  String get notifFeedbackShipped;

  /// No description provided for @notifFeedbackStatusDefault.
  ///
  /// In en, this message translates to:
  /// **'updated the status of your feedback.'**
  String get notifFeedbackStatusDefault;

  /// No description provided for @notifFeedbackVoting.
  ///
  /// In en, this message translates to:
  /// **'opened your feedback to community voting. Tap to see comments.'**
  String get notifFeedbackVoting;

  /// No description provided for @notifFeedbackVotingClosed.
  ///
  /// In en, this message translates to:
  /// **'closed voting on feedback you engaged with. Tap to see the outcome.'**
  String get notifFeedbackVotingClosed;

  /// No description provided for @notifFeedbackWip.
  ///
  /// In en, this message translates to:
  /// **'marked your feedback as Work in progress.'**
  String get notifFeedbackWip;

  /// No description provided for @notifGroupDeletedDated.
  ///
  /// In en, this message translates to:
  /// **'is now hidden and will be permanently deleted on {date} unless Luney Support restores it. Email Support before then if you want it back.'**
  String notifGroupDeletedDated(String date);

  /// No description provided for @notifGroupDeletedNamedDated.
  ///
  /// In en, this message translates to:
  /// **'\"{group}\" is now hidden and will be permanently deleted on {date} unless Luney Support restores it. Email Support before then if you want it back.'**
  String notifGroupDeletedNamedDated(String group, String date);

  /// No description provided for @notifGroupDeletedNamedSoon.
  ///
  /// In en, this message translates to:
  /// **'\"{group}\" is now hidden and will be permanently deleted soon unless Luney Support restores it. Email Support before then if you want it back.'**
  String notifGroupDeletedNamedSoon(String group);

  /// No description provided for @notifGroupDeletedSoon.
  ///
  /// In en, this message translates to:
  /// **'is now hidden and will be permanently deleted soon unless Luney Support restores it. Email Support before then if you want it back.'**
  String get notifGroupDeletedSoon;

  /// No description provided for @notifGroupInviteRedeemed.
  ///
  /// In en, this message translates to:
  /// **'joined \"{group}\" via your invite.'**
  String notifGroupInviteRedeemed(String group);

  /// No description provided for @notifGroupKicked.
  ///
  /// In en, this message translates to:
  /// **'removed you from \"{group}\".'**
  String notifGroupKicked(String group);

  /// No description provided for @notifGroupMembershipUpdated.
  ///
  /// In en, this message translates to:
  /// **'updated your membership in \"{group}\".'**
  String notifGroupMembershipUpdated(String group);

  /// No description provided for @notifGroupRestored.
  ///
  /// In en, this message translates to:
  /// **'was restored by Luney Support and is back to normal. Tap to open it.'**
  String get notifGroupRestored;

  /// No description provided for @notifGroupRestoredNamed.
  ///
  /// In en, this message translates to:
  /// **'\"{group}\" was restored by Luney Support and is back to normal. Tap to open it.'**
  String notifGroupRestoredNamed(String group);

  /// No description provided for @notifGroupRoleAdmin.
  ///
  /// In en, this message translates to:
  /// **'made you an admin of \"{group}\".'**
  String notifGroupRoleAdmin(String group);

  /// No description provided for @notifGroupRoleChanged.
  ///
  /// In en, this message translates to:
  /// **'changed your role in \"{group}\".'**
  String notifGroupRoleChanged(String group);

  /// No description provided for @notifGroupRoleInviteAdmin.
  ///
  /// In en, this message translates to:
  /// **'invited you to be an admin of a group. Tap to accept or decline.'**
  String get notifGroupRoleInviteAdmin;

  /// No description provided for @notifGroupRoleInviteMod.
  ///
  /// In en, this message translates to:
  /// **'invited you to be a moderator of a group. Tap to accept or decline.'**
  String get notifGroupRoleInviteMod;

  /// No description provided for @notifGroupRoleMember.
  ///
  /// In en, this message translates to:
  /// **'changed your role in \"{group}\" to member.'**
  String notifGroupRoleMember(String group);

  /// No description provided for @notifGroupRoleMod.
  ///
  /// In en, this message translates to:
  /// **'made you a moderator of \"{group}\".'**
  String notifGroupRoleMod(String group);

  /// No description provided for @notifGroupTransferInvite.
  ///
  /// In en, this message translates to:
  /// **'wants to transfer ownership of a group to you. Tap to accept or decline.'**
  String get notifGroupTransferInvite;

  /// No description provided for @notifIcebreakerReaction.
  ///
  /// In en, this message translates to:
  /// **'reacted to your icebreaker answer.'**
  String get notifIcebreakerReaction;

  /// No description provided for @notifIcebreakerReply.
  ///
  /// In en, this message translates to:
  /// **'replied to your icebreaker answer.'**
  String get notifIcebreakerReply;

  /// No description provided for @notifKindAchievementEarnedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A profile badge you just earned (Beta Tester, Founding Member, etc.).'**
  String get notifKindAchievementEarnedSubtitle;

  /// No description provided for @notifKindAchievementEarnedTitle.
  ///
  /// In en, this message translates to:
  /// **'Achievement unlocked'**
  String get notifKindAchievementEarnedTitle;

  /// No description provided for @notifKindAnniversaryCardReceivedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A friend sent you a card on your friendship anniversary.'**
  String get notifKindAnniversaryCardReceivedSubtitle;

  /// No description provided for @notifKindAnniversaryCardReceivedTitle.
  ///
  /// In en, this message translates to:
  /// **'Friendiversary cards'**
  String get notifKindAnniversaryCardReceivedTitle;

  /// No description provided for @notifKindCommentReplySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone replied to a comment you made.'**
  String get notifKindCommentReplySubtitle;

  /// No description provided for @notifKindCommentReplyTitle.
  ///
  /// In en, this message translates to:
  /// **'Replies to your comments'**
  String get notifKindCommentReplyTitle;

  /// No description provided for @notifKindDmMessageMentionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone @-mentioned you in a DM.'**
  String get notifKindDmMessageMentionSubtitle;

  /// No description provided for @notifKindDmMessageMentionTitle.
  ///
  /// In en, this message translates to:
  /// **'Mentions in DMs'**
  String get notifKindDmMessageMentionTitle;

  /// No description provided for @notifKindDmMessageReactionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone reacted to a message you sent in a DM.'**
  String get notifKindDmMessageReactionSubtitle;

  /// No description provided for @notifKindDmMessageReactionTitle.
  ///
  /// In en, this message translates to:
  /// **'Reactions on your DMs'**
  String get notifKindDmMessageReactionTitle;

  /// No description provided for @notifKindDmMessageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone sent you a DM.'**
  String get notifKindDmMessageSubtitle;

  /// No description provided for @notifKindDmMessageTitle.
  ///
  /// In en, this message translates to:
  /// **'New direct messages'**
  String get notifKindDmMessageTitle;

  /// No description provided for @notifKindEventRsvpSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone said they\'re going (or maybe) to an event you organised.'**
  String get notifKindEventRsvpSubtitle;

  /// No description provided for @notifKindEventRsvpTitle.
  ///
  /// In en, this message translates to:
  /// **'RSVPs to your events'**
  String get notifKindEventRsvpTitle;

  /// No description provided for @notifKindFeedbackCommentReceivedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone commented on a feedback submission you posted.'**
  String get notifKindFeedbackCommentReceivedSubtitle;

  /// No description provided for @notifKindFeedbackCommentReceivedTitle.
  ///
  /// In en, this message translates to:
  /// **'Comments on your feedback'**
  String get notifKindFeedbackCommentReceivedTitle;

  /// No description provided for @notifKindFriendAcceptSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone accepted your friend request.'**
  String get notifKindFriendAcceptSubtitle;

  /// No description provided for @notifKindFriendAcceptTitle.
  ///
  /// In en, this message translates to:
  /// **'Friend accepts'**
  String get notifKindFriendAcceptTitle;

  /// No description provided for @notifKindFriendRequestSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone sent you a friend request.'**
  String get notifKindFriendRequestSubtitle;

  /// No description provided for @notifKindFriendRequestTitle.
  ///
  /// In en, this message translates to:
  /// **'Friend requests'**
  String get notifKindFriendRequestTitle;

  /// No description provided for @notifKindGroupInviteRedeemedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A user you invited accepted the invite.'**
  String get notifKindGroupInviteRedeemedSubtitle;

  /// No description provided for @notifKindGroupInviteRedeemedTitle.
  ///
  /// In en, this message translates to:
  /// **'Someone joined via your invite'**
  String get notifKindGroupInviteRedeemedTitle;

  /// No description provided for @notifKindGroupMembershipChangedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'You were kicked, promoted, or demoted in a group.'**
  String get notifKindGroupMembershipChangedSubtitle;

  /// No description provided for @notifKindGroupMembershipChangedTitle.
  ///
  /// In en, this message translates to:
  /// **'Membership changes'**
  String get notifKindGroupMembershipChangedTitle;

  /// No description provided for @notifKindGroupMessageMentionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone @-mentioned you in a group chat.'**
  String get notifKindGroupMessageMentionSubtitle;

  /// No description provided for @notifKindGroupMessageMentionTitle.
  ///
  /// In en, this message translates to:
  /// **'Mentions in group chat'**
  String get notifKindGroupMessageMentionTitle;

  /// No description provided for @notifKindGroupMessageReactionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone reacted to a message you sent in a group.'**
  String get notifKindGroupMessageReactionSubtitle;

  /// No description provided for @notifKindGroupMessageReactionTitle.
  ///
  /// In en, this message translates to:
  /// **'Reactions on your group messages'**
  String get notifKindGroupMessageReactionTitle;

  /// No description provided for @notifKindGroupMessageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone posted in a group chat you\'re in.'**
  String get notifKindGroupMessageSubtitle;

  /// No description provided for @notifKindGroupMessageTitle.
  ///
  /// In en, this message translates to:
  /// **'New group chat messages'**
  String get notifKindGroupMessageTitle;

  /// No description provided for @notifKindGroupPostCommentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone commented on a post you wrote in a group.'**
  String get notifKindGroupPostCommentSubtitle;

  /// No description provided for @notifKindGroupPostCommentTitle.
  ///
  /// In en, this message translates to:
  /// **'Comments on your group posts'**
  String get notifKindGroupPostCommentTitle;

  /// No description provided for @notifKindGroupPostMentionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone @-mentioned you in a group post or comment.'**
  String get notifKindGroupPostMentionSubtitle;

  /// No description provided for @notifKindGroupPostMentionTitle.
  ///
  /// In en, this message translates to:
  /// **'Mentions in group posts and comments'**
  String get notifKindGroupPostMentionTitle;

  /// No description provided for @notifKindIcebreakerReactionReceivedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone reacted to one of your answers (only the first reaction per person, not every tap).'**
  String get notifKindIcebreakerReactionReceivedSubtitle;

  /// No description provided for @notifKindIcebreakerReactionReceivedTitle.
  ///
  /// In en, this message translates to:
  /// **'Reactions to your icebreaker answers'**
  String get notifKindIcebreakerReactionReceivedTitle;

  /// No description provided for @notifKindIcebreakerReplyReceivedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone replied to one of your daily-question answers.'**
  String get notifKindIcebreakerReplyReceivedSubtitle;

  /// No description provided for @notifKindIcebreakerReplyReceivedTitle.
  ///
  /// In en, this message translates to:
  /// **'Replies to your icebreaker answers'**
  String get notifKindIcebreakerReplyReceivedTitle;

  /// No description provided for @notifKindLobbyStartedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone in this group started a Live Lobby.'**
  String get notifKindLobbyStartedSubtitle;

  /// No description provided for @notifKindLobbyStartedTitle.
  ///
  /// In en, this message translates to:
  /// **'New live lobbies'**
  String get notifKindLobbyStartedTitle;

  /// No description provided for @notifKindMentionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone @-mentioned you on the feed.'**
  String get notifKindMentionSubtitle;

  /// No description provided for @notifKindMentionTitle.
  ///
  /// In en, this message translates to:
  /// **'Mentions in posts and comments'**
  String get notifKindMentionTitle;

  /// No description provided for @notifKindPostCommentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone commented on a post you wrote.'**
  String get notifKindPostCommentSubtitle;

  /// No description provided for @notifKindPostCommentTitle.
  ///
  /// In en, this message translates to:
  /// **'Comments on your posts'**
  String get notifKindPostCommentTitle;

  /// No description provided for @notifKindPostLikeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone liked a post you wrote.'**
  String get notifKindPostLikeSubtitle;

  /// No description provided for @notifKindPostLikeTitle.
  ///
  /// In en, this message translates to:
  /// **'Likes on your posts'**
  String get notifKindPostLikeTitle;

  /// No description provided for @notifKindReelReactionReceivedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone reacted to a reel you posted (only the first reaction per person, not every tap).'**
  String get notifKindReelReactionReceivedSubtitle;

  /// No description provided for @notifKindReelReactionReceivedTitle.
  ///
  /// In en, this message translates to:
  /// **'Reactions on your reels'**
  String get notifKindReelReactionReceivedTitle;

  /// No description provided for @notifKindReelReadySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your reel finished processing and is now visible to friends.'**
  String get notifKindReelReadySubtitle;

  /// No description provided for @notifKindReelReadyTitle.
  ///
  /// In en, this message translates to:
  /// **'Reel is live'**
  String get notifKindReelReadyTitle;

  /// No description provided for @notifKindReelUploadingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A confirmation that your reel started uploading.'**
  String get notifKindReelUploadingSubtitle;

  /// No description provided for @notifKindReelUploadingTitle.
  ///
  /// In en, this message translates to:
  /// **'Reel upload kickoff'**
  String get notifKindReelUploadingTitle;

  /// No description provided for @notifKindReportActionedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A staff member or admin closed a report you filed.'**
  String get notifKindReportActionedSubtitle;

  /// No description provided for @notifKindReportActionedTitle.
  ///
  /// In en, this message translates to:
  /// **'Report follow-ups'**
  String get notifKindReportActionedTitle;

  /// No description provided for @notifKindRewindReadySubtitle.
  ///
  /// In en, this message translates to:
  /// **'A once-a-year recap of your activity on Luney, when the season opens.'**
  String get notifKindRewindReadySubtitle;

  /// No description provided for @notifKindRewindReadyTitle.
  ///
  /// In en, this message translates to:
  /// **'Luney Rewind'**
  String get notifKindRewindReadyTitle;

  /// No description provided for @notifKindShoutoutHeartedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone hearted a shoutout you sent (only the first heart per person, not every tap).'**
  String get notifKindShoutoutHeartedSubtitle;

  /// No description provided for @notifKindShoutoutHeartedTitle.
  ///
  /// In en, this message translates to:
  /// **'Hearts on shoutouts you wrote'**
  String get notifKindShoutoutHeartedTitle;

  /// No description provided for @notifKindShoutoutReceivedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone publicly thanked or hyped you up on the wall.'**
  String get notifKindShoutoutReceivedSubtitle;

  /// No description provided for @notifKindShoutoutReceivedTitle.
  ///
  /// In en, this message translates to:
  /// **'Shoutouts sent to you'**
  String get notifKindShoutoutReceivedTitle;

  /// No description provided for @notifKindTrustedCircleAcceptedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone you invited to your Trusted Circle accepted.'**
  String get notifKindTrustedCircleAcceptedSubtitle;

  /// No description provided for @notifKindTrustedCircleAcceptedTitle.
  ///
  /// In en, this message translates to:
  /// **'Trusted Circle accepts'**
  String get notifKindTrustedCircleAcceptedTitle;

  /// No description provided for @notifKindTrustedCircleRequestSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A friend wants to add you to their Trusted Circle.'**
  String get notifKindTrustedCircleRequestSubtitle;

  /// No description provided for @notifKindTrustedCircleRequestTitle.
  ///
  /// In en, this message translates to:
  /// **'Trusted Circle invites'**
  String get notifKindTrustedCircleRequestTitle;

  /// No description provided for @notifKindWeeklyPromptReplyReceivedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Someone replied to a response you posted under the Weekly Prompt.'**
  String get notifKindWeeklyPromptReplyReceivedSubtitle;

  /// No description provided for @notifKindWeeklyPromptReplyReceivedTitle.
  ///
  /// In en, this message translates to:
  /// **'Replies to your Weekly Prompt response'**
  String get notifKindWeeklyPromptReplyReceivedTitle;

  /// No description provided for @notifLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String notifLoadError(String error);

  /// No description provided for @notifLobbyStarted.
  ///
  /// In en, this message translates to:
  /// **'started a Live Lobby. Tap to join.'**
  String get notifLobbyStarted;

  /// No description provided for @notifMenuClearRead.
  ///
  /// In en, this message translates to:
  /// **'Clear read'**
  String get notifMenuClearRead;

  /// No description provided for @notifMenuMarkAllRead.
  ///
  /// In en, this message translates to:
  /// **'Mark all read'**
  String get notifMenuMarkAllRead;

  /// No description provided for @notifModContentRestored.
  ///
  /// In en, this message translates to:
  /// **'restored one of your posts or messages.'**
  String get notifModContentRestored;

  /// No description provided for @notifModDefault.
  ///
  /// In en, this message translates to:
  /// **'took a moderation action on your account.'**
  String get notifModDefault;

  /// No description provided for @notifModDeleteContent.
  ///
  /// In en, this message translates to:
  /// **'removed one of your posts or messages.'**
  String get notifModDeleteContent;

  /// No description provided for @notifModGroupSuspended.
  ///
  /// In en, this message translates to:
  /// **'suspended one of your groups.'**
  String get notifModGroupSuspended;

  /// No description provided for @notifModGroupSuspendedNamed.
  ///
  /// In en, this message translates to:
  /// **'suspended the group \"{name}\".'**
  String notifModGroupSuspendedNamed(String name);

  /// No description provided for @notifModGroupSuspLifted.
  ///
  /// In en, this message translates to:
  /// **'lifted a suspension on one of your groups.'**
  String get notifModGroupSuspLifted;

  /// No description provided for @notifModGroupSuspLiftedNamed.
  ///
  /// In en, this message translates to:
  /// **'lifted the suspension on \"{name}\".'**
  String notifModGroupSuspLiftedNamed(String name);

  /// No description provided for @notifModSuspend.
  ///
  /// In en, this message translates to:
  /// **'suspended your account.'**
  String get notifModSuspend;

  /// No description provided for @notifModWarn.
  ///
  /// In en, this message translates to:
  /// **'issued a warning on your account.'**
  String get notifModWarn;

  /// No description provided for @notifOwnerTransferredAway.
  ///
  /// In en, this message translates to:
  /// **'transferred ownership of your group {group} to {who}.'**
  String notifOwnerTransferredAway(String group, String who);

  /// No description provided for @notifOwnerTransferredToYou.
  ///
  /// In en, this message translates to:
  /// **'transferred ownership of {group} to you. Tap to open it.'**
  String notifOwnerTransferredToYou(String group);

  /// No description provided for @notifPanicAlert.
  ///
  /// In en, this message translates to:
  /// **'may need help. They activated Panic Mode and haven\'t responded for 5 minutes.'**
  String get notifPanicAlert;

  /// No description provided for @notifReelReaction.
  ///
  /// In en, this message translates to:
  /// **'reacted to your reel.'**
  String get notifReelReaction;

  /// No description provided for @notifReelReady.
  ///
  /// In en, this message translates to:
  /// **'is live. Friends can see it on the home rail now.'**
  String get notifReelReady;

  /// No description provided for @notifReelUploading.
  ///
  /// In en, this message translates to:
  /// **'is uploading. We\'ll let you know when it\'s live.'**
  String get notifReelUploading;

  /// No description provided for @notifReportDefault.
  ///
  /// In en, this message translates to:
  /// **'reviewed your report. Thanks!'**
  String get notifReportDefault;

  /// No description provided for @notifReportDismiss.
  ///
  /// In en, this message translates to:
  /// **'reviewed your report; no action was needed. Thanks for flagging it.'**
  String get notifReportDismiss;

  /// No description provided for @notifReportHardRemove.
  ///
  /// In en, this message translates to:
  /// **'reviewed your report and permanently removed the content. Thanks!'**
  String get notifReportHardRemove;

  /// No description provided for @notifReportSoftRemove.
  ///
  /// In en, this message translates to:
  /// **'reviewed your report and removed the content. Thanks!'**
  String get notifReportSoftRemove;

  /// No description provided for @notifRewindReady.
  ///
  /// In en, this message translates to:
  /// **'is ready. Tap to see your year on Luney.'**
  String get notifRewindReady;

  /// No description provided for @notifScreenshotPost.
  ///
  /// In en, this message translates to:
  /// **'took a screenshot of your post.'**
  String get notifScreenshotPost;

  /// No description provided for @notifScreenshotProfile.
  ///
  /// In en, this message translates to:
  /// **'took a screenshot of your profile picture.'**
  String get notifScreenshotProfile;

  /// No description provided for @notifSettingsErrApply.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t apply preference'**
  String get notifSettingsErrApply;

  /// No description provided for @notifSettingsErrSave.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save preference'**
  String get notifSettingsErrSave;

  /// No description provided for @notifSettingsInApp.
  ///
  /// In en, this message translates to:
  /// **'In-app'**
  String get notifSettingsInApp;

  /// No description provided for @notifSettingsInfo.
  ///
  /// In en, this message translates to:
  /// **'Push silences the phone notification. In-app keeps the item in your bell + unread badge so you can find it later. Per-group overrides live in each group\'s settings.'**
  String get notifSettingsInfo;

  /// No description provided for @notifSettingsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String notifSettingsLoadError(String error);

  /// No description provided for @notifSettingsMuteAllBody.
  ///
  /// In en, this message translates to:
  /// **'Turns Push and In-app off for every notification kind. Moderation alerts can\'t be silenced. Per-group overrides (if any) keep their current values; adjust those in each group\'s Notifications screen.'**
  String get notifSettingsMuteAllBody;

  /// No description provided for @notifSettingsMuteAllCta.
  ///
  /// In en, this message translates to:
  /// **'Mute all'**
  String get notifSettingsMuteAllCta;

  /// No description provided for @notifSettingsMuteAllSuccess.
  ///
  /// In en, this message translates to:
  /// **'Notifications muted.'**
  String get notifSettingsMuteAllSuccess;

  /// No description provided for @notifSettingsMuteAllTitle.
  ///
  /// In en, this message translates to:
  /// **'Mute all notifications?'**
  String get notifSettingsMuteAllTitle;

  /// No description provided for @notifSettingsPush.
  ///
  /// In en, this message translates to:
  /// **'Push'**
  String get notifSettingsPush;

  /// No description provided for @notifSettingsResetBody.
  ///
  /// In en, this message translates to:
  /// **'Removes every global override. Each kind goes back to its default (Push + In-app on). Per-group overrides keep their current values.'**
  String get notifSettingsResetBody;

  /// No description provided for @notifSettingsResetCta.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get notifSettingsResetCta;

  /// No description provided for @notifSettingsResetMenu.
  ///
  /// In en, this message translates to:
  /// **'Reset to defaults'**
  String get notifSettingsResetMenu;

  /// No description provided for @notifSettingsResetSuccess.
  ///
  /// In en, this message translates to:
  /// **'Reset to defaults.'**
  String get notifSettingsResetSuccess;

  /// No description provided for @notifSettingsResetTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset to defaults?'**
  String get notifSettingsResetTitle;

  /// No description provided for @notifSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifSettingsTitle;

  /// No description provided for @notifSettingsUpdatedRubric.
  ///
  /// In en, this message translates to:
  /// **'PREFERENCES UPDATED'**
  String get notifSettingsUpdatedRubric;

  /// No description provided for @notifShoutoutHearted.
  ///
  /// In en, this message translates to:
  /// **'hearted your shoutout.'**
  String get notifShoutoutHearted;

  /// No description provided for @notifShoutoutReceived.
  ///
  /// In en, this message translates to:
  /// **'sent you a shoutout 💐'**
  String get notifShoutoutReceived;

  /// No description provided for @notifTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifTitle;

  /// No description provided for @notifTrustedCircleAccepted.
  ///
  /// In en, this message translates to:
  /// **'accepted your Trusted Circle invite.'**
  String get notifTrustedCircleAccepted;

  /// No description provided for @notifTrustedCircleRequest.
  ///
  /// In en, this message translates to:
  /// **'wants to add you to their Trusted Circle. Tap to accept or decline.'**
  String get notifTrustedCircleRequest;

  /// No description provided for @notifUnknown.
  ///
  /// In en, this message translates to:
  /// **'sent you a notification. Tap to open it.'**
  String get notifUnknown;

  /// No description provided for @notifWeeklyPromptReply.
  ///
  /// In en, this message translates to:
  /// **'replied to your weekly prompt.'**
  String get notifWeeklyPromptReply;

  /// No description provided for @oauthContinueApple.
  ///
  /// In en, this message translates to:
  /// **'Continue with Apple'**
  String get oauthContinueApple;

  /// No description provided for @oauthContinueDiscord.
  ///
  /// In en, this message translates to:
  /// **'Continue with Discord'**
  String get oauthContinueDiscord;

  /// No description provided for @oauthContinueGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get oauthContinueGoogle;

  /// No description provided for @oauthErrApple.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t sign in with Apple'**
  String get oauthErrApple;

  /// No description provided for @oauthErrDiscord.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t sign in with Discord'**
  String get oauthErrDiscord;

  /// No description provided for @oauthErrGoogle.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t sign in with Google'**
  String get oauthErrGoogle;

  /// No description provided for @oauthLinkBodyPrefix.
  ///
  /// In en, this message translates to:
  /// **'You already have a Luney account on '**
  String get oauthLinkBodyPrefix;

  /// No description provided for @oauthLinkBodySuffix.
  ///
  /// In en, this message translates to:
  /// **'. Sign in with your existing password and we\'ll attach {provider} to that account.'**
  String oauthLinkBodySuffix(String provider);

  /// No description provided for @oauthLinkErr.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t link the account'**
  String get oauthLinkErr;

  /// No description provided for @oauthLinkPwHint.
  ///
  /// In en, this message translates to:
  /// **'Existing password'**
  String get oauthLinkPwHint;

  /// No description provided for @oauthLinkPwRequired.
  ///
  /// In en, this message translates to:
  /// **'Enter your existing password.'**
  String get oauthLinkPwRequired;

  /// No description provided for @oauthLinkSubmit.
  ///
  /// In en, this message translates to:
  /// **'Sign in & link'**
  String get oauthLinkSubmit;

  /// No description provided for @oauthLinkTitle.
  ///
  /// In en, this message translates to:
  /// **'Link to your existing account?'**
  String get oauthLinkTitle;

  /// No description provided for @onboardingBioHint.
  ///
  /// In en, this message translates to:
  /// **'A few sentences about you. You can edit this later.'**
  String get onboardingBioHint;

  /// No description provided for @onboardingBioLabel.
  ///
  /// In en, this message translates to:
  /// **'Bio (optional)'**
  String get onboardingBioLabel;

  /// No description provided for @onboardingContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get onboardingContinue;

  /// No description provided for @onboardingDisplayNameHint.
  ///
  /// In en, this message translates to:
  /// **'What should we call you?'**
  String get onboardingDisplayNameHint;

  /// No description provided for @onboardingDisplayNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Display name'**
  String get onboardingDisplayNameLabel;

  /// No description provided for @onboardingDisplayNameNotAllowed.
  ///
  /// In en, this message translates to:
  /// **'This display name isn\'t allowed.'**
  String get onboardingDisplayNameNotAllowed;

  /// No description provided for @onboardingDobBody.
  ///
  /// In en, this message translates to:
  /// **'Luney is 18+. We never show your birthday to anyone. It stays in your private profile data.'**
  String get onboardingDobBody;

  /// No description provided for @onboardingDobHelpText.
  ///
  /// In en, this message translates to:
  /// **'Your date of birth'**
  String get onboardingDobHelpText;

  /// No description provided for @onboardingDobTapToChoose.
  ///
  /// In en, this message translates to:
  /// **'Tap to choose'**
  String get onboardingDobTapToChoose;

  /// No description provided for @onboardingDobTitle.
  ///
  /// In en, this message translates to:
  /// **'When were you born?'**
  String get onboardingDobTitle;

  /// No description provided for @onboardingDobUnder18.
  ///
  /// In en, this message translates to:
  /// **'You must be 18 or older to use Luney.'**
  String get onboardingDobUnder18;

  /// No description provided for @onboardingFinish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get onboardingFinish;

  /// No description provided for @onboardingGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Get started →'**
  String get onboardingGetStarted;

  /// No description provided for @onboardingHandleHint.
  ///
  /// In en, this message translates to:
  /// **'letters, numbers, underscores · 3-24 chars'**
  String get onboardingHandleHint;

  /// No description provided for @onboardingHandleLabel.
  ///
  /// In en, this message translates to:
  /// **'Handle'**
  String get onboardingHandleLabel;

  /// No description provided for @onboardingHandleNotAllowed.
  ///
  /// In en, this message translates to:
  /// **'This handle isn\'t allowed.'**
  String get onboardingHandleNotAllowed;

  /// No description provided for @onboardingHandleTaken.
  ///
  /// In en, this message translates to:
  /// **'That handle is taken. Try another.'**
  String get onboardingHandleTaken;

  /// No description provided for @onboardingIdentitySub.
  ///
  /// In en, this message translates to:
  /// **'Pick any that resonate. You can change these later.'**
  String get onboardingIdentitySub;

  /// No description provided for @onboardingIdentityTitle.
  ///
  /// In en, this message translates to:
  /// **'Identity'**
  String get onboardingIdentityTitle;

  /// No description provided for @onboardingInterestsSub.
  ///
  /// In en, this message translates to:
  /// **'What are you into? Helps us suggest groups & people.'**
  String get onboardingInterestsSub;

  /// No description provided for @onboardingInterestsTitle.
  ///
  /// In en, this message translates to:
  /// **'Interests'**
  String get onboardingInterestsTitle;

  /// No description provided for @onboardingNameSub.
  ///
  /// In en, this message translates to:
  /// **'Pick a name the community will see and a handle for @mentions.'**
  String get onboardingNameSub;

  /// No description provided for @onboardingNameTitle.
  ///
  /// In en, this message translates to:
  /// **'Last step'**
  String get onboardingNameTitle;

  /// No description provided for @onboardingPronounsFieldLabel.
  ///
  /// In en, this message translates to:
  /// **'Your pronouns'**
  String get onboardingPronounsFieldLabel;

  /// No description provided for @onboardingPronounsOtherHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. xe/xem, fae/faer, name only'**
  String get onboardingPronounsOtherHint;

  /// No description provided for @onboardingPronounsSub.
  ///
  /// In en, this message translates to:
  /// **'We\'ll show these on your profile and in replies.'**
  String get onboardingPronounsSub;

  /// No description provided for @onboardingPronounsTitle.
  ///
  /// In en, this message translates to:
  /// **'Your pronouns'**
  String get onboardingPronounsTitle;

  /// No description provided for @onboardingSaveError.
  ///
  /// In en, this message translates to:
  /// **'Could not save: {error}'**
  String onboardingSaveError(String error);

  /// No description provided for @onboardingSaving.
  ///
  /// In en, this message translates to:
  /// **'Saving…'**
  String get onboardingSaving;

  /// No description provided for @onboardingWelcomeBody.
  ///
  /// In en, this message translates to:
  /// **'Quick setup. Pick what feels right, skip what doesn\'t. You can change all of this anytime.'**
  String get onboardingWelcomeBody;

  /// No description provided for @onboardingWelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'A gentler corner of\nthe internet for us 🌈'**
  String get onboardingWelcomeTitle;

  /// No description provided for @onbOptActivism.
  ///
  /// In en, this message translates to:
  /// **'activism'**
  String get onbOptActivism;

  /// No description provided for @onbOptAlly.
  ///
  /// In en, this message translates to:
  /// **'ally'**
  String get onbOptAlly;

  /// No description provided for @onbOptAnyPronouns.
  ///
  /// In en, this message translates to:
  /// **'any pronouns'**
  String get onbOptAnyPronouns;

  /// No description provided for @onbOptAromantic.
  ///
  /// In en, this message translates to:
  /// **'aromantic'**
  String get onbOptAromantic;

  /// No description provided for @onbOptArt.
  ///
  /// In en, this message translates to:
  /// **'art'**
  String get onbOptArt;

  /// No description provided for @onbOptAsexual.
  ///
  /// In en, this message translates to:
  /// **'asexual'**
  String get onbOptAsexual;

  /// No description provided for @onbOptAskMe.
  ///
  /// In en, this message translates to:
  /// **'ask me'**
  String get onbOptAskMe;

  /// No description provided for @onbOptBisexual.
  ///
  /// In en, this message translates to:
  /// **'bisexual'**
  String get onbOptBisexual;

  /// No description provided for @onbOptBoardGames.
  ///
  /// In en, this message translates to:
  /// **'board games'**
  String get onbOptBoardGames;

  /// No description provided for @onbOptBooks.
  ///
  /// In en, this message translates to:
  /// **'books'**
  String get onbOptBooks;

  /// No description provided for @onbOptCooking.
  ///
  /// In en, this message translates to:
  /// **'cooking'**
  String get onbOptCooking;

  /// No description provided for @onbOptCrafts.
  ///
  /// In en, this message translates to:
  /// **'crafts'**
  String get onbOptCrafts;

  /// No description provided for @onbOptDance.
  ///
  /// In en, this message translates to:
  /// **'dance'**
  String get onbOptDance;

  /// No description provided for @onbOptDrag.
  ///
  /// In en, this message translates to:
  /// **'drag'**
  String get onbOptDrag;

  /// No description provided for @onbOptFashion.
  ///
  /// In en, this message translates to:
  /// **'fashion'**
  String get onbOptFashion;

  /// No description provided for @onbOptFilm.
  ///
  /// In en, this message translates to:
  /// **'film'**
  String get onbOptFilm;

  /// No description provided for @onbOptFitness.
  ///
  /// In en, this message translates to:
  /// **'fitness'**
  String get onbOptFitness;

  /// No description provided for @onbOptFood.
  ///
  /// In en, this message translates to:
  /// **'food'**
  String get onbOptFood;

  /// No description provided for @onbOptGaming.
  ///
  /// In en, this message translates to:
  /// **'gaming'**
  String get onbOptGaming;

  /// No description provided for @onbOptGardening.
  ///
  /// In en, this message translates to:
  /// **'gardening'**
  String get onbOptGardening;

  /// No description provided for @onbOptGay.
  ///
  /// In en, this message translates to:
  /// **'gay'**
  String get onbOptGay;

  /// No description provided for @onbOptGenderfluid.
  ///
  /// In en, this message translates to:
  /// **'genderfluid'**
  String get onbOptGenderfluid;

  /// No description provided for @onbOptGenderqueer.
  ///
  /// In en, this message translates to:
  /// **'genderqueer'**
  String get onbOptGenderqueer;

  /// No description provided for @onbOptHeHim.
  ///
  /// In en, this message translates to:
  /// **'he/him'**
  String get onbOptHeHim;

  /// No description provided for @onbOptHeThey.
  ///
  /// In en, this message translates to:
  /// **'he/they'**
  String get onbOptHeThey;

  /// No description provided for @onbOptHiking.
  ///
  /// In en, this message translates to:
  /// **'hiking'**
  String get onbOptHiking;

  /// No description provided for @onbOptIntersex.
  ///
  /// In en, this message translates to:
  /// **'intersex'**
  String get onbOptIntersex;

  /// No description provided for @onbOptKnitting.
  ///
  /// In en, this message translates to:
  /// **'knitting'**
  String get onbOptKnitting;

  /// No description provided for @onbOptLesbian.
  ///
  /// In en, this message translates to:
  /// **'lesbian'**
  String get onbOptLesbian;

  /// No description provided for @onbOptMusic.
  ///
  /// In en, this message translates to:
  /// **'music'**
  String get onbOptMusic;

  /// No description provided for @onbOptNonbinary.
  ///
  /// In en, this message translates to:
  /// **'nonbinary'**
  String get onbOptNonbinary;

  /// No description provided for @onbOptNoPronouns.
  ///
  /// In en, this message translates to:
  /// **'no pronouns'**
  String get onbOptNoPronouns;

  /// No description provided for @onbOptOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get onbOptOther;

  /// No description provided for @onbOptPansexual.
  ///
  /// In en, this message translates to:
  /// **'pansexual'**
  String get onbOptPansexual;

  /// No description provided for @onbOptPhotography.
  ///
  /// In en, this message translates to:
  /// **'photography'**
  String get onbOptPhotography;

  /// No description provided for @onbOptPreferNotToSay.
  ///
  /// In en, this message translates to:
  /// **'prefer not to say'**
  String get onbOptPreferNotToSay;

  /// No description provided for @onbOptQueer.
  ///
  /// In en, this message translates to:
  /// **'queer'**
  String get onbOptQueer;

  /// No description provided for @onbOptQuestioning.
  ///
  /// In en, this message translates to:
  /// **'questioning'**
  String get onbOptQuestioning;

  /// No description provided for @onbOptSheHer.
  ///
  /// In en, this message translates to:
  /// **'she/her'**
  String get onbOptSheHer;

  /// No description provided for @onbOptSheThey.
  ///
  /// In en, this message translates to:
  /// **'she/they'**
  String get onbOptSheThey;

  /// No description provided for @onbOptSports.
  ///
  /// In en, this message translates to:
  /// **'sports'**
  String get onbOptSports;

  /// No description provided for @onbOptTech.
  ///
  /// In en, this message translates to:
  /// **'tech'**
  String get onbOptTech;

  /// No description provided for @onbOptTheatre.
  ///
  /// In en, this message translates to:
  /// **'theatre'**
  String get onbOptTheatre;

  /// No description provided for @onbOptTheyThem.
  ///
  /// In en, this message translates to:
  /// **'they/them'**
  String get onbOptTheyThem;

  /// No description provided for @onbOptTrans.
  ///
  /// In en, this message translates to:
  /// **'trans'**
  String get onbOptTrans;

  /// No description provided for @onbOptTravel.
  ///
  /// In en, this message translates to:
  /// **'travel'**
  String get onbOptTravel;

  /// No description provided for @onbOptTwoSpirit.
  ///
  /// In en, this message translates to:
  /// **'two-spirit'**
  String get onbOptTwoSpirit;

  /// No description provided for @onbOptWriting.
  ///
  /// In en, this message translates to:
  /// **'writing'**
  String get onbOptWriting;

  /// No description provided for @onbOptYoga.
  ///
  /// In en, this message translates to:
  /// **'yoga'**
  String get onbOptYoga;

  /// No description provided for @panicAlertActiveLabel.
  ///
  /// In en, this message translates to:
  /// **'PANIC ALERT ACTIVE'**
  String get panicAlertActiveLabel;

  /// No description provided for @panicAlertCancelCta.
  ///
  /// In en, this message translates to:
  /// **'Cancel the alert'**
  String get panicAlertCancelCta;

  /// No description provided for @panicAlertCancelledBody.
  ///
  /// In en, this message translates to:
  /// **'Your trusted circle won\'t be notified for this session. Activate panic again any time if you need to.'**
  String get panicAlertCancelledBody;

  /// No description provided for @panicAlertCancelledRubric.
  ///
  /// In en, this message translates to:
  /// **'CANCELLED'**
  String get panicAlertCancelledRubric;

  /// No description provided for @panicAlertCancelledTitle.
  ///
  /// In en, this message translates to:
  /// **'Panic alert cancelled'**
  String get panicAlertCancelledTitle;

  /// No description provided for @panicAlertCountdown.
  ///
  /// In en, this message translates to:
  /// **'Your trusted circle will be alerted in {time} unless you cancel it.'**
  String panicAlertCountdown(String time);

  /// No description provided for @panicAlertErrCancel.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t cancel the panic alert'**
  String get panicAlertErrCancel;

  /// No description provided for @panicAlertHeading.
  ///
  /// In en, this message translates to:
  /// **'Your trusted circle is about to be alerted'**
  String get panicAlertHeading;

  /// No description provided for @panicAlertKeepRunning.
  ///
  /// In en, this message translates to:
  /// **'Keep it running'**
  String get panicAlertKeepRunning;

  /// No description provided for @panicAlertOverdue.
  ///
  /// In en, this message translates to:
  /// **'The deadline has already passed. The cron may fan it out within the next minute.'**
  String get panicAlertOverdue;

  /// No description provided for @panicSettingsChangePin.
  ///
  /// In en, this message translates to:
  /// **'Change PIN'**
  String get panicSettingsChangePin;

  /// No description provided for @panicSettingsConfirmPinHint.
  ///
  /// In en, this message translates to:
  /// **'Confirm PIN'**
  String get panicSettingsConfirmPinHint;

  /// No description provided for @panicSettingsErrDigits.
  ///
  /// In en, this message translates to:
  /// **'Digits only.'**
  String get panicSettingsErrDigits;

  /// No description provided for @panicSettingsErrEmergency.
  ///
  /// In en, this message translates to:
  /// **'PIN can\'t be an emergency number.'**
  String get panicSettingsErrEmergency;

  /// No description provided for @panicSettingsErrLen.
  ///
  /// In en, this message translates to:
  /// **'PIN must be 4 to 8 digits.'**
  String get panicSettingsErrLen;

  /// No description provided for @panicSettingsErrMatch.
  ///
  /// In en, this message translates to:
  /// **'PINs don\'t match.'**
  String get panicSettingsErrMatch;

  /// No description provided for @panicSettingsHowBody.
  ///
  /// In en, this message translates to:
  /// **'Tap the Me tab a few times in a row → Luney swaps for a calculator. It really calculates. To come back, type your PIN and press =. Survives closing + reopening the app. Once Panic Mode is on, Luney stays hidden until you enter the PIN.'**
  String get panicSettingsHowBody;

  /// No description provided for @panicSettingsHowTitle.
  ///
  /// In en, this message translates to:
  /// **'How it works'**
  String get panicSettingsHowTitle;

  /// No description provided for @panicSettingsPinHint.
  ///
  /// In en, this message translates to:
  /// **'PIN'**
  String get panicSettingsPinHint;

  /// No description provided for @panicSettingsPinReqBody.
  ///
  /// In en, this message translates to:
  /// **'Without a PIN you can\'t exit Panic Mode once it\'s active. Tap the PIN row above to set one (4-8 digits), then come back here.'**
  String get panicSettingsPinReqBody;

  /// No description provided for @panicSettingsPinReqRubric.
  ///
  /// In en, this message translates to:
  /// **'PIN REQUIRED'**
  String get panicSettingsPinReqRubric;

  /// No description provided for @panicSettingsPinReqTitle.
  ///
  /// In en, this message translates to:
  /// **'Set a PIN first'**
  String get panicSettingsPinReqTitle;

  /// No description provided for @panicSettingsPinSaved.
  ///
  /// In en, this message translates to:
  /// **'PIN saved.'**
  String get panicSettingsPinSaved;

  /// No description provided for @panicSettingsPinSubtitleHas.
  ///
  /// In en, this message translates to:
  /// **'Type this number into the calculator + press = to exit.'**
  String get panicSettingsPinSubtitleHas;

  /// No description provided for @panicSettingsPinSubtitleNeed.
  ///
  /// In en, this message translates to:
  /// **'Required. Type this into the calculator + press = to exit.'**
  String get panicSettingsPinSubtitleNeed;

  /// No description provided for @panicSettingsSectionExitPin.
  ///
  /// In en, this message translates to:
  /// **'EXIT PIN'**
  String get panicSettingsSectionExitPin;

  /// No description provided for @panicSettingsSectionPractice.
  ///
  /// In en, this message translates to:
  /// **'PRACTICE'**
  String get panicSettingsSectionPractice;

  /// No description provided for @panicSettingsSectionTrigger.
  ///
  /// In en, this message translates to:
  /// **'TRIGGER'**
  String get panicSettingsSectionTrigger;

  /// No description provided for @panicSettingsSetPin.
  ///
  /// In en, this message translates to:
  /// **'Set PIN'**
  String get panicSettingsSetPin;

  /// No description provided for @panicSettingsSetPinBody.
  ///
  /// In en, this message translates to:
  /// **'4 to 8 digits. Type these into the calculator and press = to come back to Luney. 911 and 999 are reserved for the emergency-alert short-cut.'**
  String get panicSettingsSetPinBody;

  /// No description provided for @panicSettingsSetPinTitle.
  ///
  /// In en, this message translates to:
  /// **'Set exit PIN'**
  String get panicSettingsSetPinTitle;

  /// No description provided for @panicSettingsStateOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get panicSettingsStateOff;

  /// No description provided for @panicSettingsStateOn.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get panicSettingsStateOn;

  /// No description provided for @panicSettingsTestSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Activates Panic Mode. Type your PIN + = to come back.'**
  String get panicSettingsTestSubtitle;

  /// No description provided for @panicSettingsTestTitle.
  ///
  /// In en, this message translates to:
  /// **'Test it now'**
  String get panicSettingsTestTitle;

  /// No description provided for @panicSettingsThresholdHint.
  ///
  /// In en, this message translates to:
  /// **'Lower = quicker to trigger. Higher = harder to fire by accident.'**
  String get panicSettingsThresholdHint;

  /// No description provided for @panicSettingsThresholdLabel.
  ///
  /// In en, this message translates to:
  /// **'Taps on the Me tab to trigger'**
  String get panicSettingsThresholdLabel;

  /// No description provided for @panicSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Panic Mode'**
  String get panicSettingsTitle;

  /// No description provided for @postCardDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'This can\'t be undone.'**
  String get postCardDeleteBody;

  /// No description provided for @postCardDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this post?'**
  String get postCardDeleteTitle;

  /// No description provided for @postCardEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get postCardEdit;

  /// No description provided for @postCardEditHint.
  ///
  /// In en, this message translates to:
  /// **'What do you want to say?'**
  String get postCardEditHint;

  /// No description provided for @postCardEditPost.
  ///
  /// In en, this message translates to:
  /// **'Edit post'**
  String get postCardEditPost;

  /// No description provided for @postCardErrDelete.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete post'**
  String get postCardErrDelete;

  /// No description provided for @postCardErrLike.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t update like: {error}'**
  String postCardErrLike(String error);

  /// No description provided for @postCardErrSave.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save post'**
  String get postCardErrSave;

  /// No description provided for @postCardOpenProfile.
  ///
  /// In en, this message translates to:
  /// **'Open {name}\'s profile'**
  String postCardOpenProfile(String name);

  /// No description provided for @postCardOptions.
  ///
  /// In en, this message translates to:
  /// **'Post options'**
  String get postCardOptions;

  /// No description provided for @postCardPermBody.
  ///
  /// In en, this message translates to:
  /// **'Admin delete is gated on the moderate_content staff permission. Ask a super-admin to grant it to your role.'**
  String get postCardPermBody;

  /// No description provided for @postCardPermRubric.
  ///
  /// In en, this message translates to:
  /// **'MISSING PERMISSION'**
  String get postCardPermRubric;

  /// No description provided for @postCardPermTitle.
  ///
  /// In en, this message translates to:
  /// **'Need the moderate_content perm'**
  String get postCardPermTitle;

  /// No description provided for @postCardRemovedBanner.
  ///
  /// In en, this message translates to:
  /// **'Removed by Luney moderation'**
  String get postCardRemovedBanner;

  /// No description provided for @postCardRemovedBody.
  ///
  /// In en, this message translates to:
  /// **'This post is already taken down. Restore it from the web admin tool, not the mobile app.'**
  String get postCardRemovedBody;

  /// No description provided for @postCardRemovedRubric.
  ///
  /// In en, this message translates to:
  /// **'ALREADY REMOVED'**
  String get postCardRemovedRubric;

  /// No description provided for @postCardRemovedTitle.
  ///
  /// In en, this message translates to:
  /// **'Already removed by Luney moderation'**
  String get postCardRemovedTitle;

  /// No description provided for @postCardSpoilerOff.
  ///
  /// In en, this message translates to:
  /// **'Photo loads in full.'**
  String get postCardSpoilerOff;

  /// No description provided for @postCardSpoilerOn.
  ///
  /// In en, this message translates to:
  /// **'Photo will load behind a blur until viewers tap.'**
  String get postCardSpoilerOn;

  /// No description provided for @postDetailLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load post: {error}'**
  String postDetailLoadError(String error);

  /// No description provided for @postDetailTitle.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get postDetailTitle;

  /// No description provided for @postDetailUnavailable.
  ///
  /// In en, this message translates to:
  /// **'This post is no longer available.'**
  String get postDetailUnavailable;

  /// No description provided for @postTypeAdvice.
  ///
  /// In en, this message translates to:
  /// **'Advice'**
  String get postTypeAdvice;

  /// No description provided for @postTypeAllFilter.
  ///
  /// In en, this message translates to:
  /// **'All posts'**
  String get postTypeAllFilter;

  /// No description provided for @postTypeCommunity.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get postTypeCommunity;

  /// No description provided for @postTypeDating.
  ///
  /// In en, this message translates to:
  /// **'Dating'**
  String get postTypeDating;

  /// No description provided for @postTypeDiscussion.
  ///
  /// In en, this message translates to:
  /// **'Discuss'**
  String get postTypeDiscussion;

  /// No description provided for @postTypeEvent.
  ///
  /// In en, this message translates to:
  /// **'Event'**
  String get postTypeEvent;

  /// No description provided for @postTypeFriends.
  ///
  /// In en, this message translates to:
  /// **'Friends'**
  String get postTypeFriends;

  /// No description provided for @postTypeHookups.
  ///
  /// In en, this message translates to:
  /// **'Hookups'**
  String get postTypeHookups;

  /// No description provided for @postTypeIntro.
  ///
  /// In en, this message translates to:
  /// **'Intro'**
  String get postTypeIntro;

  /// No description provided for @postTypeLookingFor.
  ///
  /// In en, this message translates to:
  /// **'Looking for'**
  String get postTypeLookingFor;

  /// No description provided for @postTypeMissedConnection.
  ///
  /// In en, this message translates to:
  /// **'Missed connection'**
  String get postTypeMissedConnection;

  /// No description provided for @postTypeMusic.
  ///
  /// In en, this message translates to:
  /// **'Music'**
  String get postTypeMusic;

  /// No description provided for @postTypeNetwork.
  ///
  /// In en, this message translates to:
  /// **'Network'**
  String get postTypeNetwork;

  /// No description provided for @postTypeNewHere.
  ///
  /// In en, this message translates to:
  /// **'New here'**
  String get postTypeNewHere;

  /// No description provided for @postTypeRandom.
  ///
  /// In en, this message translates to:
  /// **'Random'**
  String get postTypeRandom;

  /// No description provided for @postTypeT4t.
  ///
  /// In en, this message translates to:
  /// **'T4T'**
  String get postTypeT4t;

  /// No description provided for @privacyAccountActivitySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Every Luney moderation action on your account: warnings, removals, lifts, outreach.'**
  String get privacyAccountActivitySubtitle;

  /// No description provided for @privacyAccountActivityTitle.
  ///
  /// In en, this message translates to:
  /// **'Account activity'**
  String get privacyAccountActivityTitle;

  /// No description provided for @privacyAccountReviewsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'See when Luney staff reviewed your account and in what scope.'**
  String get privacyAccountReviewsSubtitle;

  /// No description provided for @privacyAccountReviewsTitle.
  ///
  /// In en, this message translates to:
  /// **'Account reviews'**
  String get privacyAccountReviewsTitle;

  /// No description provided for @privacyAudienceEveryone.
  ///
  /// In en, this message translates to:
  /// **'Everyone'**
  String get privacyAudienceEveryone;

  /// No description provided for @privacyAudienceEveryoneDesc.
  ///
  /// In en, this message translates to:
  /// **'Anyone on Luney can comment'**
  String get privacyAudienceEveryoneDesc;

  /// No description provided for @privacyAudienceFof.
  ///
  /// In en, this message translates to:
  /// **'Friends of friends'**
  String get privacyAudienceFof;

  /// No description provided for @privacyAudienceFofDesc.
  ///
  /// In en, this message translates to:
  /// **'Your friends and their friends'**
  String get privacyAudienceFofDesc;

  /// No description provided for @privacyAudienceFriends.
  ///
  /// In en, this message translates to:
  /// **'Friends only'**
  String get privacyAudienceFriends;

  /// No description provided for @privacyAudienceFriendsDesc.
  ///
  /// In en, this message translates to:
  /// **'Only people you are friends with'**
  String get privacyAudienceFriendsDesc;

  /// No description provided for @privacyAudienceNoOne.
  ///
  /// In en, this message translates to:
  /// **'No one'**
  String get privacyAudienceNoOne;

  /// No description provided for @privacyAudienceNoOneDesc.
  ///
  /// In en, this message translates to:
  /// **'Comments are off on your posts'**
  String get privacyAudienceNoOneDesc;

  /// No description provided for @privacyClosetSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Hide activity from folks outside your Circle'**
  String get privacyClosetSubtitle;

  /// No description provided for @privacyClosetTitle.
  ///
  /// In en, this message translates to:
  /// **'Closet Mode'**
  String get privacyClosetTitle;

  /// No description provided for @privacyCommentAudienceSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'Who can comment on your posts'**
  String get privacyCommentAudienceSheetTitle;

  /// No description provided for @privacyDeleteConfirmAction.
  ///
  /// In en, this message translates to:
  /// **'Schedule deletion'**
  String get privacyDeleteConfirmAction;

  /// No description provided for @privacyDeleteConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'Your account will be removed in 30 days. Sign in again any time before then and you\'ll be asked to confirm. Answering no cancels the request and your account stays. After 30 days the deletion is permanent: profile, posts, comments, friendships, groups, DMs, and notifications all go. Audit logs survive with your user id redacted.'**
  String get privacyDeleteConfirmBody;

  /// No description provided for @privacyDeleteConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete your account?'**
  String get privacyDeleteConfirmTitle;

  /// No description provided for @privacyDeleteErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t schedule deletion'**
  String get privacyDeleteErrorOp;

  /// No description provided for @privacyDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get privacyDeleteTitle;

  /// No description provided for @privacyDeletionScheduledBody.
  ///
  /// In en, this message translates to:
  /// **'You have until then to change your mind. Sign in any time before {date} and you\'ll be asked to confirm; answering no cancels the deletion and your account stays.'**
  String privacyDeletionScheduledBody(String date);

  /// No description provided for @privacyDeletionScheduledRubric.
  ///
  /// In en, this message translates to:
  /// **'DELETION SCHEDULED'**
  String get privacyDeletionScheduledRubric;

  /// No description provided for @privacyDeletionScheduledTitle.
  ///
  /// In en, this message translates to:
  /// **'Scheduled for {date}'**
  String privacyDeletionScheduledTitle(String date);

  /// No description provided for @privacyDownloadTitle.
  ///
  /// In en, this message translates to:
  /// **'Download My Data'**
  String get privacyDownloadTitle;

  /// No description provided for @privacyExportAvailableIn.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =1{Available again in 1 day (on {date}).} other{Available again in {days} days (on {date}).}}'**
  String privacyExportAvailableIn(int days, String date);

  /// No description provided for @privacyExportAvailableToday.
  ///
  /// In en, this message translates to:
  /// **'Available again later today (on {date}).'**
  String privacyExportAvailableToday(String date);

  /// No description provided for @privacyExportCooldownBody.
  ///
  /// In en, this message translates to:
  /// **'Luney lets you pull a full data export once every 30 days to keep the load on the export query manageable. {dayLine}'**
  String privacyExportCooldownBody(String dayLine);

  /// No description provided for @privacyExportCooldownRubric.
  ///
  /// In en, this message translates to:
  /// **'EXPORT ON COOLDOWN'**
  String get privacyExportCooldownRubric;

  /// No description provided for @privacyExportCooldownTitle.
  ///
  /// In en, this message translates to:
  /// **'You already exported recently'**
  String get privacyExportCooldownTitle;

  /// No description provided for @privacyExportErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t export your data'**
  String get privacyExportErrorOp;

  /// No description provided for @privacyExportReady.
  ///
  /// In en, this message translates to:
  /// **'Once per 30 days · available now.'**
  String get privacyExportReady;

  /// No description provided for @privacyExportResetsIn.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =1{Resets in 1 day (on {date}).} other{Resets in {days} days (on {date}).}}'**
  String privacyExportResetsIn(int days, String date);

  /// No description provided for @privacyExportResetsToday.
  ///
  /// In en, this message translates to:
  /// **'Resets later today (on {date}).'**
  String privacyExportResetsToday(String date);

  /// No description provided for @privacyExportShareSubject.
  ///
  /// In en, this message translates to:
  /// **'Luney data export'**
  String get privacyExportShareSubject;

  /// No description provided for @privacyExportShareText.
  ///
  /// In en, this message translates to:
  /// **'Your Luney data export ({ts}).'**
  String privacyExportShareText(String ts);

  /// No description provided for @privacyFuzzySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show your location within ~5km instead of exact'**
  String get privacyFuzzySubtitle;

  /// No description provided for @privacyFuzzyTitle.
  ///
  /// In en, this message translates to:
  /// **'Fuzzy Location'**
  String get privacyFuzzyTitle;

  /// No description provided for @privacyReadReceiptsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Let people see when you\'ve read their DMs. Turn off and you won\'t see theirs either.'**
  String get privacyReadReceiptsSubtitle;

  /// No description provided for @privacyReadReceiptsTitle.
  ///
  /// In en, this message translates to:
  /// **'Read Receipts'**
  String get privacyReadReceiptsTitle;

  /// No description provided for @privacySectionDangerZone.
  ///
  /// In en, this message translates to:
  /// **'DANGER ZONE'**
  String get privacySectionDangerZone;

  /// No description provided for @privacySectionMessaging.
  ///
  /// In en, this message translates to:
  /// **'MESSAGING'**
  String get privacySectionMessaging;

  /// No description provided for @privacySectionSharing.
  ///
  /// In en, this message translates to:
  /// **'SHARING'**
  String get privacySectionSharing;

  /// No description provided for @privacySectionStaffAccess.
  ///
  /// In en, this message translates to:
  /// **'STAFF ACCESS'**
  String get privacySectionStaffAccess;

  /// No description provided for @privacySectionVisibility.
  ///
  /// In en, this message translates to:
  /// **'VISIBILITY'**
  String get privacySectionVisibility;

  /// No description provided for @privacySectionYourData.
  ///
  /// In en, this message translates to:
  /// **'YOUR DATA'**
  String get privacySectionYourData;

  /// No description provided for @privacyShareSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Lets others share your posts outside Luney. Applies to all your posts.'**
  String get privacyShareSubtitle;

  /// No description provided for @privacyShareTitle.
  ///
  /// In en, this message translates to:
  /// **'Allow Sharing My Posts'**
  String get privacyShareTitle;

  /// No description provided for @privacyStealthSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Hide from Map · no read receipts · invisible online'**
  String get privacyStealthSubtitle;

  /// No description provided for @privacyStealthTitle.
  ///
  /// In en, this message translates to:
  /// **'Stealth Mode'**
  String get privacyStealthTitle;

  /// No description provided for @privacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacyTitle;

  /// No description provided for @privacyUpdateErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t update setting'**
  String get privacyUpdateErrorOp;

  /// No description provided for @privacyWhoCanCommentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Default for your new posts. Each post can still turn comments off.'**
  String get privacyWhoCanCommentSubtitle;

  /// No description provided for @privacyWhoCanCommentTitle.
  ///
  /// In en, this message translates to:
  /// **'Who Can Comment'**
  String get privacyWhoCanCommentTitle;

  /// No description provided for @profileMenuBlock.
  ///
  /// In en, this message translates to:
  /// **'Block'**
  String get profileMenuBlock;

  /// No description provided for @profileMenuBlockBody.
  ///
  /// In en, this message translates to:
  /// **'They won\'t be able to see your posts or send you a friend request. Any existing friendship will be removed.'**
  String get profileMenuBlockBody;

  /// No description provided for @profileMenuBlockTitle.
  ///
  /// In en, this message translates to:
  /// **'Block @{handle}?'**
  String profileMenuBlockTitle(String handle);

  /// No description provided for @profileMenuErrBlock.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t block user'**
  String get profileMenuErrBlock;

  /// No description provided for @profileMenuErrUnblock.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t unblock user'**
  String get profileMenuErrUnblock;

  /// No description provided for @profileMenuReport.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get profileMenuReport;

  /// No description provided for @profileMenuUnblock.
  ///
  /// In en, this message translates to:
  /// **'Unblock'**
  String get profileMenuUnblock;

  /// No description provided for @profilePostsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Posts will show up here as {displayName} shares them with you.'**
  String profilePostsEmpty(String displayName);

  /// No description provided for @profilePostsHeader.
  ///
  /// In en, this message translates to:
  /// **'POSTS'**
  String get profilePostsHeader;

  /// No description provided for @profileReelsSectionHeader.
  ///
  /// In en, this message translates to:
  /// **'REELS'**
  String get profileReelsSectionHeader;

  /// No description provided for @profileReelsSectionOpenLabel.
  ///
  /// In en, this message translates to:
  /// **'Open reel'**
  String get profileReelsSectionOpenLabel;

  /// No description provided for @profileReelsSectionProcessingLabel.
  ///
  /// In en, this message translates to:
  /// **'Reel processing'**
  String get profileReelsSectionProcessingLabel;

  /// No description provided for @profileReelsSectionStatusFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get profileReelsSectionStatusFailed;

  /// No description provided for @profileReelsSectionStatusProcessing.
  ///
  /// In en, this message translates to:
  /// **'Processing…'**
  String get profileReelsSectionStatusProcessing;

  /// No description provided for @profileScreenBadgePrivate.
  ///
  /// In en, this message translates to:
  /// **'🔒 Private'**
  String get profileScreenBadgePrivate;

  /// No description provided for @profileScreenBadgeStealth.
  ///
  /// In en, this message translates to:
  /// **'🕶️ Stealth'**
  String get profileScreenBadgeStealth;

  /// No description provided for @profileScreenEditProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get profileScreenEditProfile;

  /// No description provided for @profileScreenErrOpenChat.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open chat'**
  String get profileScreenErrOpenChat;

  /// No description provided for @profileScreenFriendsCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 friend} other{{count} friends}}'**
  String profileScreenFriendsCount(int count);

  /// No description provided for @profileScreenFriendsNone.
  ///
  /// In en, this message translates to:
  /// **'- friends'**
  String get profileScreenFriendsNone;

  /// No description provided for @profileScreenIdentity.
  ///
  /// In en, this message translates to:
  /// **'IDENTITY'**
  String get profileScreenIdentity;

  /// No description provided for @profileScreenInterests.
  ///
  /// In en, this message translates to:
  /// **'INTERESTS'**
  String get profileScreenInterests;

  /// No description provided for @profileScreenLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String profileScreenLoadError(String error);

  /// No description provided for @profileScreenMessage.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get profileScreenMessage;

  /// No description provided for @profileScreenNotFound.
  ///
  /// In en, this message translates to:
  /// **'Profile not found'**
  String get profileScreenNotFound;

  /// No description provided for @profileScreenOpeningThread.
  ///
  /// In en, this message translates to:
  /// **'Opening message thread'**
  String get profileScreenOpeningThread;

  /// No description provided for @profileScreenSeeFriendsA11y.
  ///
  /// In en, this message translates to:
  /// **'See friends'**
  String get profileScreenSeeFriendsA11y;

  /// No description provided for @profileScreenSeeFriendsCountA11y.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{See 1 friend} other{See {count} friends}}'**
  String profileScreenSeeFriendsCountA11y(int count);

  /// No description provided for @profileScreenSeeMore.
  ///
  /// In en, this message translates to:
  /// **'See more'**
  String get profileScreenSeeMore;

  /// No description provided for @profileScreenSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get profileScreenSettings;

  /// No description provided for @profileScreenShowLess.
  ///
  /// In en, this message translates to:
  /// **'Show less'**
  String get profileScreenShowLess;

  /// No description provided for @profileScreenWithinKm.
  ///
  /// In en, this message translates to:
  /// **'📍 within 5km'**
  String get profileScreenWithinKm;

  /// No description provided for @profileSheetAddNote.
  ///
  /// In en, this message translates to:
  /// **'Add a note'**
  String get profileSheetAddNote;

  /// No description provided for @profileSheetAssignRoles.
  ///
  /// In en, this message translates to:
  /// **'Assign roles'**
  String get profileSheetAssignRoles;

  /// No description provided for @profileSheetAvatar.
  ///
  /// In en, this message translates to:
  /// **'Avatar'**
  String get profileSheetAvatar;

  /// No description provided for @profileSheetBan.
  ///
  /// In en, this message translates to:
  /// **'Ban'**
  String get profileSheetBan;

  /// No description provided for @profileSheetBanBody.
  ///
  /// In en, this message translates to:
  /// **'They\'ll be removed and unable to re-join, including via invite codes, until you unban them.'**
  String get profileSheetBanBody;

  /// No description provided for @profileSheetBanner.
  ///
  /// In en, this message translates to:
  /// **'Banner'**
  String get profileSheetBanner;

  /// No description provided for @profileSheetBanReasonHint.
  ///
  /// In en, this message translates to:
  /// **'Reason (optional, only visible to admins)'**
  String get profileSheetBanReasonHint;

  /// No description provided for @profileSheetBanTitle.
  ///
  /// In en, this message translates to:
  /// **'Ban @{handle}?'**
  String profileSheetBanTitle(String handle);

  /// No description provided for @profileSheetChoosePhoto.
  ///
  /// In en, this message translates to:
  /// **'Choose photo'**
  String get profileSheetChoosePhoto;

  /// No description provided for @profileSheetCropAvatar.
  ///
  /// In en, this message translates to:
  /// **'Crop avatar'**
  String get profileSheetCropAvatar;

  /// No description provided for @profileSheetCropBanner.
  ///
  /// In en, this message translates to:
  /// **'Crop banner'**
  String get profileSheetCropBanner;

  /// No description provided for @profileSheetCurrentlySuspendedPermanent.
  ///
  /// In en, this message translates to:
  /// **'Currently suspended ({kind} · permanent)'**
  String profileSheetCurrentlySuspendedPermanent(String kind);

  /// No description provided for @profileSheetCurrentlySuspendedUntil.
  ///
  /// In en, this message translates to:
  /// **'Currently suspended ({kind} · until {date})'**
  String profileSheetCurrentlySuspendedUntil(String kind, String date);

  /// No description provided for @profileSheetDeletionPastDue.
  ///
  /// In en, this message translates to:
  /// **'Past due. Hard delete will run on next sign-in or by the cron worker.'**
  String get profileSheetDeletionPastDue;

  /// No description provided for @profileSheetDeletionScheduled.
  ///
  /// In en, this message translates to:
  /// **'Scheduled for {date} · {count, plural, =1{1 day} other{{count} days}} left.'**
  String profileSheetDeletionScheduled(String date, int count);

  /// No description provided for @profileSheetDisplayName.
  ///
  /// In en, this message translates to:
  /// **'Display name'**
  String get profileSheetDisplayName;

  /// No description provided for @profileSheetDisplayNameValue.
  ///
  /// In en, this message translates to:
  /// **'Display name: {name}'**
  String profileSheetDisplayNameValue(String name);

  /// No description provided for @profileSheetDisplayNameValueHidden.
  ///
  /// In en, this message translates to:
  /// **'Display name: {name}  (hidden, VIP only)'**
  String profileSheetDisplayNameValueHidden(String name);

  /// No description provided for @profileSheetDmsOffMessage.
  ///
  /// In en, this message translates to:
  /// **'They\'ve turned off DMs from members of your shared groups. You can still interact in those groups\' chat.'**
  String get profileSheetDmsOffMessage;

  /// No description provided for @profileSheetDmsOffRubric.
  ///
  /// In en, this message translates to:
  /// **'DMS OFF'**
  String get profileSheetDmsOffRubric;

  /// No description provided for @profileSheetDmsOffTitle.
  ///
  /// In en, this message translates to:
  /// **'This user doesn\'t accept DMs'**
  String get profileSheetDmsOffTitle;

  /// No description provided for @profileSheetEditProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get profileSheetEditProfile;

  /// No description provided for @profileSheetErrBanMember.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t ban member'**
  String get profileSheetErrBanMember;

  /// No description provided for @profileSheetErrClearAvatar.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t clear avatar'**
  String get profileSheetErrClearAvatar;

  /// No description provided for @profileSheetErrClearBanner.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t clear banner'**
  String get profileSheetErrClearBanner;

  /// No description provided for @profileSheetErrLoadGroupProfile.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load this group\'s profile.\n{error}'**
  String profileSheetErrLoadGroupProfile(String error);

  /// No description provided for @profileSheetErrLoadRoles.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load roles: {error}'**
  String profileSheetErrLoadRoles(String error);

  /// No description provided for @profileSheetErrOpenChat.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open chat'**
  String get profileSheetErrOpenChat;

  /// No description provided for @profileSheetErrRemoveMember.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t remove member'**
  String get profileSheetErrRemoveMember;

  /// No description provided for @profileSheetErrSaveDisplayName.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save display name'**
  String get profileSheetErrSaveDisplayName;

  /// No description provided for @profileSheetErrSaveNameStyle.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save name style'**
  String get profileSheetErrSaveNameStyle;

  /// No description provided for @profileSheetErrSaveNote.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save note'**
  String get profileSheetErrSaveNote;

  /// No description provided for @profileSheetErrSetNickname.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t set nickname'**
  String get profileSheetErrSetNickname;

  /// No description provided for @profileSheetErrUpdateRole.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t update role'**
  String get profileSheetErrUpdateRole;

  /// No description provided for @profileSheetErrUploadAvatar.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t upload avatar'**
  String get profileSheetErrUploadAvatar;

  /// No description provided for @profileSheetErrUploadBanner.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t upload banner'**
  String get profileSheetErrUploadBanner;

  /// No description provided for @profileSheetFriendsSince.
  ///
  /// In en, this message translates to:
  /// **'Friends since {date}'**
  String profileSheetFriendsSince(String date);

  /// No description provided for @profileSheetGroupScopeNote.
  ///
  /// In en, this message translates to:
  /// **'Changes here only apply inside this group.'**
  String get profileSheetGroupScopeNote;

  /// No description provided for @profileSheetGroupScopeNoteNamed.
  ///
  /// In en, this message translates to:
  /// **'Changes here only apply inside {group}. Your global profile stays the same.'**
  String profileSheetGroupScopeNoteNamed(String group);

  /// No description provided for @profileSheetInGroup.
  ///
  /// In en, this message translates to:
  /// **'In {group}'**
  String profileSheetInGroup(String group);

  /// No description provided for @profileSheetInThisGroup.
  ///
  /// In en, this message translates to:
  /// **'In this group'**
  String get profileSheetInThisGroup;

  /// No description provided for @profileSheetJoined.
  ///
  /// In en, this message translates to:
  /// **'Joined {date}'**
  String profileSheetJoined(String date);

  /// No description provided for @profileSheetKick.
  ///
  /// In en, this message translates to:
  /// **'Kick'**
  String get profileSheetKick;

  /// No description provided for @profileSheetLift.
  ///
  /// In en, this message translates to:
  /// **'Lift'**
  String get profileSheetLift;

  /// No description provided for @profileSheetLocationFuzzy.
  ///
  /// In en, this message translates to:
  /// **'📍 within 5km'**
  String get profileSheetLocationFuzzy;

  /// No description provided for @profileSheetLuneyModeration.
  ///
  /// In en, this message translates to:
  /// **'Luney moderation'**
  String get profileSheetLuneyModeration;

  /// No description provided for @profileSheetMessage.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get profileSheetMessage;

  /// No description provided for @profileSheetMessageOff.
  ///
  /// In en, this message translates to:
  /// **'Message off'**
  String get profileSheetMessageOff;

  /// No description provided for @profileSheetMobileOnlyAvatarMsg.
  ///
  /// In en, this message translates to:
  /// **'Avatar editing uses the device camera roll, which the web app can\'t reach. Hop over to the iOS or Android app to change your avatar.'**
  String get profileSheetMobileOnlyAvatarMsg;

  /// No description provided for @profileSheetMobileOnlyBannerMsg.
  ///
  /// In en, this message translates to:
  /// **'Banner editing uses the device camera roll, which the web app can\'t reach. Hop over to the iOS or Android app to change your banner.'**
  String get profileSheetMobileOnlyBannerMsg;

  /// No description provided for @profileSheetMobileOnlyRubric.
  ///
  /// In en, this message translates to:
  /// **'MOBILE ONLY'**
  String get profileSheetMobileOnlyRubric;

  /// No description provided for @profileSheetMobileOnlyTitle.
  ///
  /// In en, this message translates to:
  /// **'Open the mobile app'**
  String get profileSheetMobileOnlyTitle;

  /// No description provided for @profileSheetMutualFriendsCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 Mutual Friend} other{{count} Mutual Friends}}'**
  String profileSheetMutualFriendsCount(int count);

  /// No description provided for @profileSheetMutualFriendsUnknown.
  ///
  /// In en, this message translates to:
  /// **'- Mutual Friends'**
  String get profileSheetMutualFriendsUnknown;

  /// No description provided for @profileSheetMyProfileHere.
  ///
  /// In en, this message translates to:
  /// **'MY PROFILE HERE'**
  String get profileSheetMyProfileHere;

  /// No description provided for @profileSheetMyProfileIn.
  ///
  /// In en, this message translates to:
  /// **'MY PROFILE IN {group}'**
  String profileSheetMyProfileIn(String group);

  /// No description provided for @profileSheetNameStyle.
  ///
  /// In en, this message translates to:
  /// **'Name style'**
  String get profileSheetNameStyle;

  /// No description provided for @profileSheetNicknameHintClear.
  ///
  /// In en, this message translates to:
  /// **'Leave blank to clear'**
  String get profileSheetNicknameHintClear;

  /// No description provided for @profileSheetNicknameHintGlobal.
  ///
  /// In en, this message translates to:
  /// **'Leave blank to use your global name'**
  String get profileSheetNicknameHintGlobal;

  /// No description provided for @profileSheetNoCustomRoles.
  ///
  /// In en, this message translates to:
  /// **'No custom roles yet. Create one in Group settings.'**
  String get profileSheetNoCustomRoles;

  /// No description provided for @profileSheetNoteHint.
  ///
  /// In en, this message translates to:
  /// **'Only you can see this.'**
  String get profileSheetNoteHint;

  /// No description provided for @profileSheetNotFound.
  ///
  /// In en, this message translates to:
  /// **'Profile not found'**
  String get profileSheetNotFound;

  /// No description provided for @profileSheetNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get profileSheetNotifications;

  /// No description provided for @profileSheetPendingDeletion.
  ///
  /// In en, this message translates to:
  /// **'Pending account deletion'**
  String get profileSheetPendingDeletion;

  /// No description provided for @profileSheetPillPrivate.
  ///
  /// In en, this message translates to:
  /// **'🔒 Private'**
  String get profileSheetPillPrivate;

  /// No description provided for @profileSheetPillStealth.
  ///
  /// In en, this message translates to:
  /// **'🕶️ Stealth'**
  String get profileSheetPillStealth;

  /// No description provided for @profileSheetRemoveAction.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get profileSheetRemoveAction;

  /// No description provided for @profileSheetRemoveBody.
  ///
  /// In en, this message translates to:
  /// **'They lose access to posts and chat. They can re-join if the group is public or they have an active invite.'**
  String get profileSheetRemoveBody;

  /// No description provided for @profileSheetRemoveTitle.
  ///
  /// In en, this message translates to:
  /// **'Remove @{handle}?'**
  String profileSheetRemoveTitle(String handle);

  /// No description provided for @profileSheetRoleAdmin.
  ///
  /// In en, this message translates to:
  /// **'ADMIN'**
  String get profileSheetRoleAdmin;

  /// No description provided for @profileSheetRoleMember.
  ///
  /// In en, this message translates to:
  /// **'MEMBER'**
  String get profileSheetRoleMember;

  /// No description provided for @profileSheetRoleMod.
  ///
  /// In en, this message translates to:
  /// **'MOD'**
  String get profileSheetRoleMod;

  /// No description provided for @profileSheetRoleOwner.
  ///
  /// In en, this message translates to:
  /// **'OWNER'**
  String get profileSheetRoleOwner;

  /// No description provided for @profileSheetRoles.
  ///
  /// In en, this message translates to:
  /// **'Roles'**
  String get profileSheetRoles;

  /// No description provided for @profileSheetSectionBio.
  ///
  /// In en, this message translates to:
  /// **'Bio'**
  String get profileSheetSectionBio;

  /// No description provided for @profileSheetSectionIdentity.
  ///
  /// In en, this message translates to:
  /// **'Identity'**
  String get profileSheetSectionIdentity;

  /// No description provided for @profileSheetSectionInterests.
  ///
  /// In en, this message translates to:
  /// **'Interests'**
  String get profileSheetSectionInterests;

  /// No description provided for @profileSheetSectionMemberSince.
  ///
  /// In en, this message translates to:
  /// **'Member Since'**
  String get profileSheetSectionMemberSince;

  /// No description provided for @profileSheetSectionNote.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get profileSheetSectionNote;

  /// No description provided for @profileSheetSeeMutualFriends.
  ///
  /// In en, this message translates to:
  /// **'See mutual friends'**
  String get profileSheetSeeMutualFriends;

  /// No description provided for @profileSheetSeeMutualFriendsCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{See 1 mutual friend} other{See {count} mutual friends}}'**
  String profileSheetSeeMutualFriendsCount(int count);

  /// No description provided for @profileSheetSetDisplayName.
  ///
  /// In en, this message translates to:
  /// **'Set display name'**
  String get profileSheetSetDisplayName;

  /// No description provided for @profileSheetStaffPill.
  ///
  /// In en, this message translates to:
  /// **'STAFF'**
  String get profileSheetStaffPill;

  /// No description provided for @profileSheetSuspend.
  ///
  /// In en, this message translates to:
  /// **'Suspend'**
  String get profileSheetSuspend;

  /// No description provided for @profileSheetUseNormalAvatar.
  ///
  /// In en, this message translates to:
  /// **'Use my normal avatar'**
  String get profileSheetUseNormalAvatar;

  /// No description provided for @profileSheetUseNormalBanner.
  ///
  /// In en, this message translates to:
  /// **'Use my normal banner'**
  String get profileSheetUseNormalBanner;

  /// No description provided for @profileSheetViewFullProfile.
  ///
  /// In en, this message translates to:
  /// **'View full profile'**
  String get profileSheetViewFullProfile;

  /// No description provided for @profileSheetViewLess.
  ///
  /// In en, this message translates to:
  /// **'View less'**
  String get profileSheetViewLess;

  /// No description provided for @profileSheetViewMore.
  ///
  /// In en, this message translates to:
  /// **'View more'**
  String get profileSheetViewMore;

  /// No description provided for @profileSheetVipAvatarBody.
  ///
  /// In en, this message translates to:
  /// **'Use a different photo in each community. Available on VIP, alongside per-group nicknames and unlimited GIF favourites.'**
  String get profileSheetVipAvatarBody;

  /// No description provided for @profileSheetVipAvatarTitle.
  ///
  /// In en, this message translates to:
  /// **'Per-group avatars are a VIP perk'**
  String get profileSheetVipAvatarTitle;

  /// No description provided for @profileSheetVipBannerBody.
  ///
  /// In en, this message translates to:
  /// **'Use a different header image in each community. Available on VIP, alongside per-group display names + avatars and unlimited GIF favourites.'**
  String get profileSheetVipBannerBody;

  /// No description provided for @profileSheetVipBannerTitle.
  ///
  /// In en, this message translates to:
  /// **'Per-group banners are a VIP perk'**
  String get profileSheetVipBannerTitle;

  /// No description provided for @profileSheetVipNameStyleBody.
  ///
  /// In en, this message translates to:
  /// **'Pick a font, an effect, and a colour. Available on VIP, alongside per-group nicknames + avatars and unlimited GIF favourites.'**
  String get profileSheetVipNameStyleBody;

  /// No description provided for @profileSheetVipNameStyleTitle.
  ///
  /// In en, this message translates to:
  /// **'Display name styling is a VIP perk'**
  String get profileSheetVipNameStyleTitle;

  /// No description provided for @profileSheetVipNicknameBody.
  ///
  /// In en, this message translates to:
  /// **'Show up with a different name in each community. Available on VIP, alongside unlimited GIF favourites and cross-group custom emojis.'**
  String get profileSheetVipNicknameBody;

  /// No description provided for @profileSheetVipNicknameTitle.
  ///
  /// In en, this message translates to:
  /// **'Per-group display names are a VIP perk'**
  String get profileSheetVipNicknameTitle;

  /// No description provided for @profileSheetWarn.
  ///
  /// In en, this message translates to:
  /// **'Warn'**
  String get profileSheetWarn;

  /// No description provided for @recordingModeBannerMessage.
  ///
  /// In en, this message translates to:
  /// **'Recording mode: screen protection is OFF on this device{until}.'**
  String recordingModeBannerMessage(String until);

  /// No description provided for @recordingModeBannerTapToStop.
  ///
  /// In en, this message translates to:
  /// **'TAP TO STOP'**
  String get recordingModeBannerTapToStop;

  /// No description provided for @recordingModeBannerUntil.
  ///
  /// In en, this message translates to:
  /// **' · until {time}'**
  String recordingModeBannerUntil(String time);

  /// No description provided for @reelActionDeleteSegment.
  ///
  /// In en, this message translates to:
  /// **'Delete segment'**
  String get reelActionDeleteSegment;

  /// No description provided for @reelActionDeleteSticker.
  ///
  /// In en, this message translates to:
  /// **'Delete sticker'**
  String get reelActionDeleteSticker;

  /// No description provided for @reelActionDeleteText.
  ///
  /// In en, this message translates to:
  /// **'Delete text'**
  String get reelActionDeleteText;

  /// No description provided for @reelActionEditFades.
  ///
  /// In en, this message translates to:
  /// **'Edit fades on timeline'**
  String get reelActionEditFades;

  /// No description provided for @reelActionEditText.
  ///
  /// In en, this message translates to:
  /// **'Edit text'**
  String get reelActionEditText;

  /// No description provided for @reelActionHideFades.
  ///
  /// In en, this message translates to:
  /// **'Hide fade controls'**
  String get reelActionHideFades;

  /// No description provided for @reelActionMoveDown.
  ///
  /// In en, this message translates to:
  /// **'Move down (towards back)'**
  String get reelActionMoveDown;

  /// No description provided for @reelActionMoveUp.
  ///
  /// In en, this message translates to:
  /// **'Move up (towards top)'**
  String get reelActionMoveUp;

  /// No description provided for @reelActionRemoveOriginalAudio.
  ///
  /// In en, this message translates to:
  /// **'Remove original audio'**
  String get reelActionRemoveOriginalAudio;

  /// No description provided for @reelActionRemoveTrack.
  ///
  /// In en, this message translates to:
  /// **'Remove track'**
  String get reelActionRemoveTrack;

  /// No description provided for @reelAspectRatioOriginal.
  ///
  /// In en, this message translates to:
  /// **'Original'**
  String get reelAspectRatioOriginal;

  /// No description provided for @reelAudioAddTitle.
  ///
  /// In en, this message translates to:
  /// **'Add audio'**
  String get reelAudioAddTitle;

  /// No description provided for @reelAudioDownloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading audio…'**
  String get reelAudioDownloading;

  /// No description provided for @reelAudioDownloadOp.
  ///
  /// In en, this message translates to:
  /// **'Downloading audio'**
  String get reelAudioDownloadOp;

  /// No description provided for @reelAudioErrEmpty.
  ///
  /// In en, this message translates to:
  /// **'Server returned an empty file.'**
  String get reelAudioErrEmpty;

  /// No description provided for @reelAudioErrNotAudio.
  ///
  /// In en, this message translates to:
  /// **'URL doesn\'t return audio (got {type}). Use a direct mp3 link.'**
  String reelAudioErrNotAudio(String type);

  /// No description provided for @reelAudioErrServerStatus.
  ///
  /// In en, this message translates to:
  /// **'Server returned {code}.'**
  String reelAudioErrServerStatus(int code);

  /// No description provided for @reelAudioErrTooBig.
  ///
  /// In en, this message translates to:
  /// **'File is {size} MB. Max is 50 MB.'**
  String reelAudioErrTooBig(String size);

  /// No description provided for @reelAudioLicenseBody.
  ///
  /// In en, this message translates to:
  /// **'You can layer your own mp3 over your reel. Before adding a track, confirm that you own this audio or are licensed to use it. Reels are public-feed content; copyrighted audio you don\'t have rights to may get the post pulled and could affect your account.'**
  String get reelAudioLicenseBody;

  /// No description provided for @reelAudioLicenseConfirm.
  ///
  /// In en, this message translates to:
  /// **'I confirm'**
  String get reelAudioLicenseConfirm;

  /// No description provided for @reelAudioLicenseTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm audio rights'**
  String get reelAudioLicenseTitle;

  /// No description provided for @reelAudioPasteUrl.
  ///
  /// In en, this message translates to:
  /// **'Paste a direct URL'**
  String get reelAudioPasteUrl;

  /// No description provided for @reelAudioPasteUrlSub.
  ///
  /// In en, this message translates to:
  /// **'HTTPS link to an mp3 file. YouTube / Spotify links won\'t work; needs a direct mp3 stream.'**
  String get reelAudioPasteUrlSub;

  /// No description provided for @reelAudioPickDevice.
  ///
  /// In en, this message translates to:
  /// **'Pick mp3 from device'**
  String get reelAudioPickDevice;

  /// No description provided for @reelAudioPickDeviceSub.
  ///
  /// In en, this message translates to:
  /// **'Choose an mp3 from your phone. Layered over the original audio.'**
  String get reelAudioPickDeviceSub;

  /// No description provided for @reelAudioUrlBody.
  ///
  /// In en, this message translates to:
  /// **'Direct HTTPS link to an mp3 file. We download it to your device, mix it into your reel, and discard the file after upload. The audio ends up baked into the video.'**
  String get reelAudioUrlBody;

  /// No description provided for @reelAudioUrlEmpty.
  ///
  /// In en, this message translates to:
  /// **'Paste a URL first.'**
  String get reelAudioUrlEmpty;

  /// No description provided for @reelAudioUrlHint.
  ///
  /// In en, this message translates to:
  /// **'https://example.com/track.mp3'**
  String get reelAudioUrlHint;

  /// No description provided for @reelAudioUrlScheme.
  ///
  /// In en, this message translates to:
  /// **'URL must start with https://'**
  String get reelAudioUrlScheme;

  /// No description provided for @reelAudioUrlTitle.
  ///
  /// In en, this message translates to:
  /// **'Paste audio URL'**
  String get reelAudioUrlTitle;

  /// No description provided for @reelAudioUrlUse.
  ///
  /// In en, this message translates to:
  /// **'Use this URL'**
  String get reelAudioUrlUse;

  /// No description provided for @reelDetailMissingMessage.
  ///
  /// In en, this message translates to:
  /// **'This reel isn\'t available. It may have been removed by the owner or you don\'t have permission to view it.'**
  String get reelDetailMissingMessage;

  /// No description provided for @reelDetailOpening.
  ///
  /// In en, this message translates to:
  /// **'Opening reel'**
  String get reelDetailOpening;

  /// No description provided for @reelDragHint.
  ///
  /// In en, this message translates to:
  /// **'tap to edit · drag to move · pinch to resize'**
  String get reelDragHint;

  /// No description provided for @reelEditScreenOpRebaking.
  ///
  /// In en, this message translates to:
  /// **'Re-baking reel overlays'**
  String get reelEditScreenOpRebaking;

  /// No description provided for @reelEditScreenOpReuploading.
  ///
  /// In en, this message translates to:
  /// **'Re-uploading reel'**
  String get reelEditScreenOpReuploading;

  /// No description provided for @reelEditScreenOpTrimming.
  ///
  /// In en, this message translates to:
  /// **'Trimming reel'**
  String get reelEditScreenOpTrimming;

  /// No description provided for @reelInspectorAddedMp3.
  ///
  /// In en, this message translates to:
  /// **'Added mp3'**
  String get reelInspectorAddedMp3;

  /// No description provided for @reelInspectorFadeIn.
  ///
  /// In en, this message translates to:
  /// **'Fade in'**
  String get reelInspectorFadeIn;

  /// No description provided for @reelInspectorFadeOut.
  ///
  /// In en, this message translates to:
  /// **'Fade out'**
  String get reelInspectorFadeOut;

  /// No description provided for @reelInspectorOriginalAudio.
  ///
  /// In en, this message translates to:
  /// **'Original audio'**
  String get reelInspectorOriginalAudio;

  /// No description provided for @reelInspectorVideo.
  ///
  /// In en, this message translates to:
  /// **'Video'**
  String get reelInspectorVideo;

  /// No description provided for @reelInspectorVolume.
  ///
  /// In en, this message translates to:
  /// **'Volume'**
  String get reelInspectorVolume;

  /// No description provided for @reelOpLoadingPreview.
  ///
  /// In en, this message translates to:
  /// **'Loading the preview'**
  String get reelOpLoadingPreview;

  /// No description provided for @reelOpReversePreview.
  ///
  /// In en, this message translates to:
  /// **'Generating reverse preview'**
  String get reelOpReversePreview;

  /// No description provided for @reelPanelAddMp3.
  ///
  /// In en, this message translates to:
  /// **'Add mp3'**
  String get reelPanelAddMp3;

  /// No description provided for @reelPanelAddOriginal.
  ///
  /// In en, this message translates to:
  /// **'Add original'**
  String get reelPanelAddOriginal;

  /// No description provided for @reelPanelSticker.
  ///
  /// In en, this message translates to:
  /// **'Sticker {count}/{max}'**
  String reelPanelSticker(int count, int max);

  /// No description provided for @reelPanelText.
  ///
  /// In en, this message translates to:
  /// **'Text {count}/{max}'**
  String reelPanelText(int count, int max);

  /// No description provided for @reelPlayerErrorSemantics.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load this reel. Tap for details.'**
  String get reelPlayerErrorSemantics;

  /// No description provided for @reelPlayerErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load this reel.'**
  String get reelPlayerErrorTitle;

  /// No description provided for @reelPlayerLoadingOp.
  ///
  /// In en, this message translates to:
  /// **'Loading reel'**
  String get reelPlayerLoadingOp;

  /// No description provided for @reelPlayerTapForDetails.
  ///
  /// In en, this message translates to:
  /// **'Tap for details'**
  String get reelPlayerTapForDetails;

  /// No description provided for @reelProgressBannerBaking.
  ///
  /// In en, this message translates to:
  /// **'Baking your reel…'**
  String get reelProgressBannerBaking;

  /// No description provided for @reelProgressBannerBakingPct.
  ///
  /// In en, this message translates to:
  /// **'Baking your reel… {pct}%'**
  String reelProgressBannerBakingPct(int pct);

  /// No description provided for @reelProgressBannerCancel.
  ///
  /// In en, this message translates to:
  /// **'CANCEL'**
  String get reelProgressBannerCancel;

  /// No description provided for @reelProgressBannerKeepBrowsing.
  ///
  /// In en, this message translates to:
  /// **'KEEP BROWSING'**
  String get reelProgressBannerKeepBrowsing;

  /// No description provided for @reelProgressBannerLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading your reel for editing…'**
  String get reelProgressBannerLoading;

  /// No description provided for @reelProgressBannerUploading.
  ///
  /// In en, this message translates to:
  /// **'Uploading your reel…'**
  String get reelProgressBannerUploading;

  /// No description provided for @reelProgressBannerUploadingPct.
  ///
  /// In en, this message translates to:
  /// **'Uploading your reel… {pct}%'**
  String reelProgressBannerUploadingPct(int pct);

  /// No description provided for @reelReversePreviewSpinner.
  ///
  /// In en, this message translates to:
  /// **'Generating reverse preview…'**
  String get reelReversePreviewSpinner;

  /// No description provided for @reelScrubHint.
  ///
  /// In en, this message translates to:
  /// **'drag to scrub'**
  String get reelScrubHint;

  /// No description provided for @reelScrubTime.
  ///
  /// In en, this message translates to:
  /// **'TIME'**
  String get reelScrubTime;

  /// No description provided for @reelSegLabel.
  ///
  /// In en, this message translates to:
  /// **'Seg {n}'**
  String reelSegLabel(int n);

  /// No description provided for @reelSegmentsLabel.
  ///
  /// In en, this message translates to:
  /// **'CLIPS'**
  String get reelSegmentsLabel;

  /// No description provided for @reelsHomeRailAddLabel.
  ///
  /// In en, this message translates to:
  /// **'Add your reel'**
  String get reelsHomeRailAddLabel;

  /// No description provided for @reelsHomeRailMe.
  ///
  /// In en, this message translates to:
  /// **'Me'**
  String get reelsHomeRailMe;

  /// No description provided for @reelsHomeRailYourReel.
  ///
  /// In en, this message translates to:
  /// **'Your reel'**
  String get reelsHomeRailYourReel;

  /// No description provided for @reelSplitAtPlayhead.
  ///
  /// In en, this message translates to:
  /// **'Split at playhead'**
  String get reelSplitAtPlayhead;

  /// No description provided for @reelStatsCaption.
  ///
  /// In en, this message translates to:
  /// **'CAPTION'**
  String get reelStatsCaption;

  /// No description provided for @reelStatsCommentsLabel.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{comment} other{comments}}'**
  String reelStatsCommentsLabel(int count);

  /// No description provided for @reelStatsContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get reelStatsContinue;

  /// No description provided for @reelStatsDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'It\'ll stop appearing on your profile and in friends\' home rails. This can\'t be undone.'**
  String get reelStatsDeleteBody;

  /// No description provided for @reelStatsDeleteReelBtn.
  ///
  /// In en, this message translates to:
  /// **'Delete reel'**
  String get reelStatsDeleteReelBtn;

  /// No description provided for @reelStatsDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete reel?'**
  String get reelStatsDeleteTitle;

  /// No description provided for @reelStatsDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get reelStatsDuration;

  /// No description provided for @reelStatsEditBody.
  ///
  /// In en, this message translates to:
  /// **'We\'ll download the original, let you re-trim it, then upload the new version. Once the new reel is ready, the old one will be removed.\n\nView count, hearts, and fires will reset. If you crossposted this reel to your feed, the post stays and updates to the new version automatically.'**
  String get reelStatsEditBody;

  /// No description provided for @reelStatsEditOverlays.
  ///
  /// In en, this message translates to:
  /// **'Edit overlays'**
  String get reelStatsEditOverlays;

  /// No description provided for @reelStatsEditReel.
  ///
  /// In en, this message translates to:
  /// **'Edit reel'**
  String get reelStatsEditReel;

  /// No description provided for @reelStatsEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit this reel?'**
  String get reelStatsEditTitle;

  /// No description provided for @reelStatsErrDelete.
  ///
  /// In en, this message translates to:
  /// **'Deleting reel'**
  String get reelStatsErrDelete;

  /// No description provided for @reelStatsErrSaveOverlays.
  ///
  /// In en, this message translates to:
  /// **'Saving overlays'**
  String get reelStatsErrSaveOverlays;

  /// No description provided for @reelStatsHeading.
  ///
  /// In en, this message translates to:
  /// **'REEL STATS'**
  String get reelStatsHeading;

  /// No description provided for @reelStatsLikesLabel.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{like} other{likes}}'**
  String reelStatsLikesLabel(int count);

  /// No description provided for @reelStatsOverlaysRemovedBody.
  ///
  /// In en, this message translates to:
  /// **'Your reel no longer has any text or stickers.'**
  String get reelStatsOverlaysRemovedBody;

  /// No description provided for @reelStatsOverlaysRemovedTitle.
  ///
  /// In en, this message translates to:
  /// **'Removed all overlays'**
  String get reelStatsOverlaysRemovedTitle;

  /// No description provided for @reelStatsOverlaysRubric.
  ///
  /// In en, this message translates to:
  /// **'OVERLAYS UPDATED'**
  String get reelStatsOverlaysRubric;

  /// No description provided for @reelStatsOverlaysSavedBody.
  ///
  /// In en, this message translates to:
  /// **'The new overlays show up the next time anyone watches this reel. No re-encode needed.'**
  String get reelStatsOverlaysSavedBody;

  /// No description provided for @reelStatsOverlaysSavedTitle.
  ///
  /// In en, this message translates to:
  /// **'Overlays saved'**
  String get reelStatsOverlaysSavedTitle;

  /// No description provided for @reelStatsPosted.
  ///
  /// In en, this message translates to:
  /// **'Posted'**
  String get reelStatsPosted;

  /// No description provided for @reelStatsReportPost.
  ///
  /// In en, this message translates to:
  /// **'post by {owner}'**
  String reelStatsReportPost(String owner);

  /// No description provided for @reelStatsReportReel.
  ///
  /// In en, this message translates to:
  /// **'reel by {owner}'**
  String reelStatsReportReel(String owner);

  /// No description provided for @reelStatsReportReelBtn.
  ///
  /// In en, this message translates to:
  /// **'Report reel'**
  String get reelStatsReportReelBtn;

  /// No description provided for @reelStatsThisReel.
  ///
  /// In en, this message translates to:
  /// **'this reel'**
  String get reelStatsThisReel;

  /// No description provided for @reelStatsViewsLabel.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{view} other{views}}'**
  String reelStatsViewsLabel(int count);

  /// No description provided for @reelStickerEmojiSection.
  ///
  /// In en, this message translates to:
  /// **'Emoji'**
  String get reelStickerEmojiSection;

  /// No description provided for @reelStickerGroupEmojis.
  ///
  /// In en, this message translates to:
  /// **'Group emojis'**
  String get reelStickerGroupEmojis;

  /// No description provided for @reelStickerGroupEmojisVip.
  ///
  /// In en, this message translates to:
  /// **'Group emojis (VIP)'**
  String get reelStickerGroupEmojisVip;

  /// No description provided for @reelStickerGroupFallback.
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get reelStickerGroupFallback;

  /// No description provided for @reelStickerPickTitle.
  ///
  /// In en, this message translates to:
  /// **'Pick a sticker'**
  String get reelStickerPickTitle;

  /// No description provided for @reelsViewerComments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get reelsViewerComments;

  /// No description provided for @reelsViewerEmpty.
  ///
  /// In en, this message translates to:
  /// **'No reels to play.'**
  String get reelsViewerEmpty;

  /// No description provided for @reelsViewerErrLike.
  ///
  /// In en, this message translates to:
  /// **'Liking reel'**
  String get reelsViewerErrLike;

  /// No description provided for @reelsViewerLike.
  ///
  /// In en, this message translates to:
  /// **'Like'**
  String get reelsViewerLike;

  /// No description provided for @reelsViewerOpenProfile.
  ///
  /// In en, this message translates to:
  /// **'Open {name}\'s profile'**
  String reelsViewerOpenProfile(String name);

  /// No description provided for @reelsViewerReport.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get reelsViewerReport;

  /// No description provided for @reelsViewerUnlike.
  ///
  /// In en, this message translates to:
  /// **'Unlike'**
  String get reelsViewerUnlike;

  /// No description provided for @reelTabAudio.
  ///
  /// In en, this message translates to:
  /// **'Audio'**
  String get reelTabAudio;

  /// No description provided for @reelTabOverlays.
  ///
  /// In en, this message translates to:
  /// **'Overlays'**
  String get reelTabOverlays;

  /// No description provided for @reelTabStyle.
  ///
  /// In en, this message translates to:
  /// **'Style'**
  String get reelTabStyle;

  /// No description provided for @reelTextAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get reelTextAdd;

  /// No description provided for @reelTextEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit overlay'**
  String get reelTextEditTitle;

  /// No description provided for @reelTextHint.
  ///
  /// In en, this message translates to:
  /// **'Type something…'**
  String get reelTextHint;

  /// No description provided for @reelTextLabelColor.
  ///
  /// In en, this message translates to:
  /// **'COLOR'**
  String get reelTextLabelColor;

  /// No description provided for @reelTextLabelSize.
  ///
  /// In en, this message translates to:
  /// **'SIZE'**
  String get reelTextLabelSize;

  /// No description provided for @reelTextNewTitle.
  ///
  /// In en, this message translates to:
  /// **'New text overlay'**
  String get reelTextNewTitle;

  /// No description provided for @reelTextSizeLarge.
  ///
  /// In en, this message translates to:
  /// **'Large'**
  String get reelTextSizeLarge;

  /// No description provided for @reelTextSizeMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get reelTextSizeMedium;

  /// No description provided for @reelTextSizeSmall.
  ///
  /// In en, this message translates to:
  /// **'Small'**
  String get reelTextSizeSmall;

  /// No description provided for @reelTimelineLoadingDuration.
  ///
  /// In en, this message translates to:
  /// **'Loading video duration…'**
  String get reelTimelineLoadingDuration;

  /// No description provided for @reelTimelineOrig.
  ///
  /// In en, this message translates to:
  /// **'ORIG'**
  String get reelTimelineOrig;

  /// No description provided for @reelTimelineVideoLabel.
  ///
  /// In en, this message translates to:
  /// **'VIDEO'**
  String get reelTimelineVideoLabel;

  /// No description provided for @reelTimelineVoice.
  ///
  /// In en, this message translates to:
  /// **'VOICE'**
  String get reelTimelineVoice;

  /// No description provided for @reelTopBarSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get reelTopBarSkip;

  /// No description provided for @reelTopBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Add overlays'**
  String get reelTopBarTitle;

  /// No description provided for @reelVideoEffectBlur.
  ///
  /// In en, this message translates to:
  /// **'Blur'**
  String get reelVideoEffectBlur;

  /// No description provided for @reelVideoEffectMirror.
  ///
  /// In en, this message translates to:
  /// **'Mirror'**
  String get reelVideoEffectMirror;

  /// No description provided for @reelVideoEffectNone.
  ///
  /// In en, this message translates to:
  /// **'No effect'**
  String get reelVideoEffectNone;

  /// No description provided for @reelVideoEffectReverse.
  ///
  /// In en, this message translates to:
  /// **'Reverse'**
  String get reelVideoEffectReverse;

  /// No description provided for @reelVideoEffectVignette.
  ///
  /// In en, this message translates to:
  /// **'Vignette'**
  String get reelVideoEffectVignette;

  /// No description provided for @reelVideoFilterBw.
  ///
  /// In en, this message translates to:
  /// **'B&W'**
  String get reelVideoFilterBw;

  /// No description provided for @reelVideoFilterCool.
  ///
  /// In en, this message translates to:
  /// **'Cool'**
  String get reelVideoFilterCool;

  /// No description provided for @reelVideoFilterNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get reelVideoFilterNone;

  /// No description provided for @reelVideoFilterSepia.
  ///
  /// In en, this message translates to:
  /// **'Sepia'**
  String get reelVideoFilterSepia;

  /// No description provided for @reelVideoFilterVintage.
  ///
  /// In en, this message translates to:
  /// **'Vintage'**
  String get reelVideoFilterVintage;

  /// No description provided for @reelVideoFilterVivid.
  ///
  /// In en, this message translates to:
  /// **'Vivid'**
  String get reelVideoFilterVivid;

  /// No description provided for @reelVideoFilterWarm.
  ///
  /// In en, this message translates to:
  /// **'Warm'**
  String get reelVideoFilterWarm;

  /// No description provided for @reelVoiceMicNeededBody.
  ///
  /// In en, this message translates to:
  /// **'Voice-over needs microphone access. Enable it in Settings, then tap Record again.'**
  String get reelVoiceMicNeededBody;

  /// No description provided for @reelVoiceMicNeededTitle.
  ///
  /// In en, this message translates to:
  /// **'Microphone access needed'**
  String get reelVoiceMicNeededTitle;

  /// No description provided for @reelVoiceOpenSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get reelVoiceOpenSettings;

  /// No description provided for @reelVoiceOverLabel.
  ///
  /// In en, this message translates to:
  /// **'Voice-over'**
  String get reelVoiceOverLabel;

  /// No description provided for @reelVoiceRecord.
  ///
  /// In en, this message translates to:
  /// **'Record voice-over'**
  String get reelVoiceRecord;

  /// No description provided for @reelVoiceRecorded.
  ///
  /// In en, this message translates to:
  /// **'Voice-over recorded'**
  String get reelVoiceRecorded;

  /// No description provided for @reelVoiceRecording.
  ///
  /// In en, this message translates to:
  /// **'Recording…'**
  String get reelVoiceRecording;

  /// No description provided for @reelVoiceReRecord.
  ///
  /// In en, this message translates to:
  /// **'Re-record'**
  String get reelVoiceReRecord;

  /// No description provided for @reelVoiceStartOp.
  ///
  /// In en, this message translates to:
  /// **'Starting voice-over recording'**
  String get reelVoiceStartOp;

  /// No description provided for @reelVoiceUse.
  ///
  /// In en, this message translates to:
  /// **'Use voice-over'**
  String get reelVoiceUse;

  /// No description provided for @reportDetailActionCrisisSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sends the author a warm \'thinking of you\' push with a list of queer-affirming crisis resources. Doesn\'t resolve the reports. Pick a resolution below.'**
  String get reportDetailActionCrisisSubtitle;

  /// No description provided for @reportDetailActionCrisisTitle.
  ///
  /// In en, this message translates to:
  /// **'Send crisis support'**
  String get reportDetailActionCrisisTitle;

  /// No description provided for @reportDetailActionDismissSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Mark every report on this target as resolved. Content is left in place. Pick this for false alarms.'**
  String get reportDetailActionDismissSubtitle;

  /// No description provided for @reportDetailActionDismissTitle.
  ///
  /// In en, this message translates to:
  /// **'Dismiss reports'**
  String get reportDetailActionDismissTitle;

  /// No description provided for @reportDetailActionHardSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Bypass the 7-day undo window and hard-delete now. Super-admin only. For clearly illegal content.'**
  String get reportDetailActionHardSubtitle;

  /// No description provided for @reportDetailActionHardTitle.
  ///
  /// In en, this message translates to:
  /// **'Remove permanently'**
  String get reportDetailActionHardTitle;

  /// No description provided for @reportDetailActionRemoveSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Hide it from members and resolve the reports. Restorable within 7 days; auto-purges after that.'**
  String get reportDetailActionRemoveSubtitle;

  /// No description provided for @reportDetailActionRemoveTitle.
  ///
  /// In en, this message translates to:
  /// **'Remove content'**
  String get reportDetailActionRemoveTitle;

  /// No description provided for @reportDetailByReporter.
  ///
  /// In en, this message translates to:
  /// **'by {name}'**
  String reportDetailByReporter(String name);

  /// No description provided for @reportDetailCrisisConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'We\'ll send the author a warm \'thinking of you\' push with a curated list of crisis resources. The push body is non-revealing; they (and anyone glancing at their screen) won\'t see what content prompted it.\n\nThis doesn\'t resolve the report. Pick a resolution after.'**
  String get reportDetailCrisisConfirmBody;

  /// No description provided for @reportDetailCrisisConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Send crisis support?'**
  String get reportDetailCrisisConfirmTitle;

  /// No description provided for @reportDetailCrisisSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get reportDetailCrisisSend;

  /// No description provided for @reportDetailCrisisSentBody.
  ///
  /// In en, this message translates to:
  /// **'They\'ll get a warm \"thinking of you\" push with a list of queer-affirming crisis resources. The push body is deliberately non-revealing about what triggered it.'**
  String get reportDetailCrisisSentBody;

  /// No description provided for @reportDetailCrisisSentRubric.
  ///
  /// In en, this message translates to:
  /// **'CRISIS SUPPORT SENT'**
  String get reportDetailCrisisSentRubric;

  /// No description provided for @reportDetailCrisisSentTitle.
  ///
  /// In en, this message translates to:
  /// **'Support sent'**
  String get reportDetailCrisisSentTitle;

  /// No description provided for @reportDetailErrResolve.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t resolve report'**
  String get reportDetailErrResolve;

  /// No description provided for @reportDetailErrSendSupport.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send support'**
  String get reportDetailErrSendSupport;

  /// No description provided for @reportDetailHardConfirmAction.
  ///
  /// In en, this message translates to:
  /// **'Permanently remove'**
  String get reportDetailHardConfirmAction;

  /// No description provided for @reportDetailHardConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'Hard delete bypasses the 7-day undo window. The row is gone immediately and cannot be restored. Reserved for clearly illegal content.'**
  String get reportDetailHardConfirmBody;

  /// No description provided for @reportDetailHardConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Permanently remove?'**
  String get reportDetailHardConfirmTitle;

  /// No description provided for @reportDetailLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String reportDetailLoadError(String error);

  /// No description provided for @reportDetailNoReports.
  ///
  /// In en, this message translates to:
  /// **'No open reports.'**
  String get reportDetailNoReports;

  /// No description provided for @reportDetailNotesHint.
  ///
  /// In en, this message translates to:
  /// **'Internal note: visible to staff/admins only.'**
  String get reportDetailNotesHint;

  /// No description provided for @reportDetailNotesLabel.
  ///
  /// In en, this message translates to:
  /// **'Resolution notes (optional)'**
  String get reportDetailNotesLabel;

  /// No description provided for @reportDetailReportsLine.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no reports were open} =1{closed 1 report} other{closed {count} reports}}'**
  String reportDetailReportsLine(int count);

  /// No description provided for @reportDetailRubricDismissed.
  ///
  /// In en, this message translates to:
  /// **'DISMISSED'**
  String get reportDetailRubricDismissed;

  /// No description provided for @reportDetailRubricRemoved.
  ///
  /// In en, this message translates to:
  /// **'REMOVED'**
  String get reportDetailRubricRemoved;

  /// No description provided for @reportDetailSoftConfirmAction.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get reportDetailSoftConfirmAction;

  /// No description provided for @reportDetailSoftConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'The content will be hidden from members and can be restored within 7 days. After that it is purged automatically.'**
  String get reportDetailSoftConfirmBody;

  /// No description provided for @reportDetailSoftConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Remove this content?'**
  String get reportDetailSoftConfirmTitle;

  /// No description provided for @reportDetailSuccessDismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismissed. {reports}.'**
  String reportDetailSuccessDismiss(String reports);

  /// No description provided for @reportDetailSuccessHardRemove.
  ///
  /// In en, this message translates to:
  /// **'Permanently removed. {reports}. No undo.'**
  String reportDetailSuccessHardRemove(String reports);

  /// No description provided for @reportDetailSuccessSoftRemove.
  ///
  /// In en, this message translates to:
  /// **'Removed. {reports}. Restore within 7 days from the reported message.'**
  String reportDetailSuccessSoftRemove(String reports);

  /// No description provided for @reportDetailTitleComment.
  ///
  /// In en, this message translates to:
  /// **'Reports about this comment'**
  String get reportDetailTitleComment;

  /// No description provided for @reportDetailTitleConfession.
  ///
  /// In en, this message translates to:
  /// **'Reports about this confession'**
  String get reportDetailTitleConfession;

  /// No description provided for @reportDetailTitleFeedback.
  ///
  /// In en, this message translates to:
  /// **'Reports about this suggestion'**
  String get reportDetailTitleFeedback;

  /// No description provided for @reportDetailTitleFeedbackComment.
  ///
  /// In en, this message translates to:
  /// **'Reports about this feedback comment'**
  String get reportDetailTitleFeedbackComment;

  /// No description provided for @reportDetailTitleIcebreakerAnswer.
  ///
  /// In en, this message translates to:
  /// **'Reports about this icebreaker answer'**
  String get reportDetailTitleIcebreakerAnswer;

  /// No description provided for @reportDetailTitleIcebreakerReply.
  ///
  /// In en, this message translates to:
  /// **'Reports about this icebreaker reply'**
  String get reportDetailTitleIcebreakerReply;

  /// No description provided for @reportDetailTitleLobby.
  ///
  /// In en, this message translates to:
  /// **'Reports about this Live Lobby'**
  String get reportDetailTitleLobby;

  /// No description provided for @reportDetailTitleMessage.
  ///
  /// In en, this message translates to:
  /// **'Reports about this message'**
  String get reportDetailTitleMessage;

  /// No description provided for @reportDetailTitlePost.
  ///
  /// In en, this message translates to:
  /// **'Reports about this post'**
  String get reportDetailTitlePost;

  /// No description provided for @reportDetailTitleReel.
  ///
  /// In en, this message translates to:
  /// **'Reports about this reel'**
  String get reportDetailTitleReel;

  /// No description provided for @reportDetailTitleRollCall.
  ///
  /// In en, this message translates to:
  /// **'Reports about this roll-call check-in'**
  String get reportDetailTitleRollCall;

  /// No description provided for @reportDetailTitleShoutout.
  ///
  /// In en, this message translates to:
  /// **'Reports about this shoutout'**
  String get reportDetailTitleShoutout;

  /// No description provided for @reportDetailTitleUser.
  ///
  /// In en, this message translates to:
  /// **'Reports about this user'**
  String get reportDetailTitleUser;

  /// No description provided for @reportDetailTitleWeeklyPromptReply.
  ///
  /// In en, this message translates to:
  /// **'Reports about this prompt reply'**
  String get reportDetailTitleWeeklyPromptReply;

  /// No description provided for @reportDetailTitleWeeklyPromptResponse.
  ///
  /// In en, this message translates to:
  /// **'Reports about this prompt response'**
  String get reportDetailTitleWeeklyPromptResponse;

  /// No description provided for @reportDetailUnknownReporter.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get reportDetailUnknownReporter;

  /// No description provided for @reportDetailViewBtn.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get reportDetailViewBtn;

  /// No description provided for @reportReasonHarassment.
  ///
  /// In en, this message translates to:
  /// **'Harassment or bullying'**
  String get reportReasonHarassment;

  /// No description provided for @reportReasonHateSpeech.
  ///
  /// In en, this message translates to:
  /// **'Hate speech'**
  String get reportReasonHateSpeech;

  /// No description provided for @reportReasonImpersonation.
  ///
  /// In en, this message translates to:
  /// **'Impersonation'**
  String get reportReasonImpersonation;

  /// No description provided for @reportReasonOther.
  ///
  /// In en, this message translates to:
  /// **'Something else'**
  String get reportReasonOther;

  /// No description provided for @reportReasonSelfHarm.
  ///
  /// In en, this message translates to:
  /// **'Self-harm or suicide'**
  String get reportReasonSelfHarm;

  /// No description provided for @reportReasonSexualContent.
  ///
  /// In en, this message translates to:
  /// **'Unwanted sexual content'**
  String get reportReasonSexualContent;

  /// No description provided for @reportReasonSpam.
  ///
  /// In en, this message translates to:
  /// **'Spam'**
  String get reportReasonSpam;

  /// No description provided for @reportSheetDetailsHint.
  ///
  /// In en, this message translates to:
  /// **'Add context for the moderator…'**
  String get reportSheetDetailsHint;

  /// No description provided for @reportSheetDetailsLabel.
  ///
  /// In en, this message translates to:
  /// **'Anything else? (optional)'**
  String get reportSheetDetailsLabel;

  /// No description provided for @reportSheetErrSubmit.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t submit report'**
  String get reportSheetErrSubmit;

  /// No description provided for @reportSheetRouteGroupAdmins.
  ///
  /// In en, this message translates to:
  /// **'Group admins will review this. If they don\'t respond within 48 hours, it escalates to Luney staff.'**
  String get reportSheetRouteGroupAdmins;

  /// No description provided for @reportSheetRouteLuneyStaff.
  ///
  /// In en, this message translates to:
  /// **'This goes straight to Luney staff for fast review.'**
  String get reportSheetRouteLuneyStaff;

  /// No description provided for @reportSheetSubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get reportSheetSubmit;

  /// No description provided for @reportSheetSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tell us what\'s going on. Our moderators will review.'**
  String get reportSheetSubtitle;

  /// No description provided for @reportSheetSuccessBody.
  ///
  /// In en, this message translates to:
  /// **'A Luney moderator will review this. You\'ll get a push when there\'s a resolution. If urgent or you spot the same behaviour elsewhere, report again with the new context.'**
  String get reportSheetSuccessBody;

  /// No description provided for @reportSheetSuccessRubric.
  ///
  /// In en, this message translates to:
  /// **'REPORT SUBMITTED'**
  String get reportSheetSuccessRubric;

  /// No description provided for @reportSheetSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'Thanks for telling us'**
  String get reportSheetSuccessTitle;

  /// No description provided for @reportSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'Report {target}'**
  String reportSheetTitle(String target);

  /// No description provided for @reportsInboxBadgeEscalated.
  ///
  /// In en, this message translates to:
  /// **'Escalated'**
  String get reportsInboxBadgeEscalated;

  /// No description provided for @reportsInboxBadgeSevere.
  ///
  /// In en, this message translates to:
  /// **'Severe'**
  String get reportsInboxBadgeSevere;

  /// No description provided for @reportsInboxEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Reports landing here will show up automatically.'**
  String get reportsInboxEmptyBody;

  /// No description provided for @reportsInboxEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'Nothing in the queue.'**
  String get reportsInboxEmptyTitle;

  /// No description provided for @reportsInboxJump.
  ///
  /// In en, this message translates to:
  /// **'Jump'**
  String get reportsInboxJump;

  /// No description provided for @reportsInboxKindComment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get reportsInboxKindComment;

  /// No description provided for @reportsInboxKindConfession.
  ///
  /// In en, this message translates to:
  /// **'Confession'**
  String get reportsInboxKindConfession;

  /// No description provided for @reportsInboxKindFeedback.
  ///
  /// In en, this message translates to:
  /// **'Suggestion'**
  String get reportsInboxKindFeedback;

  /// No description provided for @reportsInboxKindFeedbackComment.
  ///
  /// In en, this message translates to:
  /// **'Feedback comment'**
  String get reportsInboxKindFeedbackComment;

  /// No description provided for @reportsInboxKindGroupComment.
  ///
  /// In en, this message translates to:
  /// **'Group comment'**
  String get reportsInboxKindGroupComment;

  /// No description provided for @reportsInboxKindGroupMessage.
  ///
  /// In en, this message translates to:
  /// **'Group chat message'**
  String get reportsInboxKindGroupMessage;

  /// No description provided for @reportsInboxKindGroupPost.
  ///
  /// In en, this message translates to:
  /// **'Group post'**
  String get reportsInboxKindGroupPost;

  /// No description provided for @reportsInboxKindIcebreakerAnswer.
  ///
  /// In en, this message translates to:
  /// **'Icebreaker answer'**
  String get reportsInboxKindIcebreakerAnswer;

  /// No description provided for @reportsInboxKindIcebreakerReply.
  ///
  /// In en, this message translates to:
  /// **'Icebreaker reply'**
  String get reportsInboxKindIcebreakerReply;

  /// No description provided for @reportsInboxKindLobby.
  ///
  /// In en, this message translates to:
  /// **'Live Lobby'**
  String get reportsInboxKindLobby;

  /// No description provided for @reportsInboxKindPost.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get reportsInboxKindPost;

  /// No description provided for @reportsInboxKindReel.
  ///
  /// In en, this message translates to:
  /// **'Reel'**
  String get reportsInboxKindReel;

  /// No description provided for @reportsInboxKindRollCall.
  ///
  /// In en, this message translates to:
  /// **'Roll-call check-in'**
  String get reportsInboxKindRollCall;

  /// No description provided for @reportsInboxKindShoutout.
  ///
  /// In en, this message translates to:
  /// **'Shoutout'**
  String get reportsInboxKindShoutout;

  /// No description provided for @reportsInboxKindUser.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get reportsInboxKindUser;

  /// No description provided for @reportsInboxKindWeeklyPromptReply.
  ///
  /// In en, this message translates to:
  /// **'Weekly prompt reply'**
  String get reportsInboxKindWeeklyPromptReply;

  /// No description provided for @reportsInboxKindWeeklyPromptResponse.
  ///
  /// In en, this message translates to:
  /// **'Weekly prompt response'**
  String get reportsInboxKindWeeklyPromptResponse;

  /// No description provided for @reportsInboxLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String reportsInboxLoadError(String error);

  /// No description provided for @reportsInboxMoreReasons.
  ///
  /// In en, this message translates to:
  /// **'+{count} more'**
  String reportsInboxMoreReasons(int count);

  /// No description provided for @reportsInboxPreviewContentGone.
  ///
  /// In en, this message translates to:
  /// **'This content is no longer available.'**
  String get reportsInboxPreviewContentGone;

  /// No description provided for @reportsInboxPreviewError.
  ///
  /// In en, this message translates to:
  /// **'Could not load preview.'**
  String get reportsInboxPreviewError;

  /// No description provided for @reportsInboxPreviewImageFallback.
  ///
  /// In en, this message translates to:
  /// **'image'**
  String get reportsInboxPreviewImageFallback;

  /// No description provided for @reportsInboxPreviewLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading reported content…'**
  String get reportsInboxPreviewLoading;

  /// No description provided for @reportsInboxPreviewNoContentProfile.
  ///
  /// In en, this message translates to:
  /// **'No content. Profile-level report.'**
  String get reportsInboxPreviewNoContentProfile;

  /// No description provided for @reportsInboxPreviewNoText.
  ///
  /// In en, this message translates to:
  /// **'(no text)'**
  String get reportsInboxPreviewNoText;

  /// No description provided for @reportsInboxPreviewProfileGone.
  ///
  /// In en, this message translates to:
  /// **'Profile no longer exists.'**
  String get reportsInboxPreviewProfileGone;

  /// No description provided for @reportsInboxPreviewRemoved.
  ///
  /// In en, this message translates to:
  /// **'🛡️ Removed by Luney moderation'**
  String get reportsInboxPreviewRemoved;

  /// No description provided for @reportsInboxReportCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 report} other{{count} reports}}'**
  String reportsInboxReportCount(int count);

  /// No description provided for @resendLinkCooldown.
  ///
  /// In en, this message translates to:
  /// **'Resend in {seconds}s'**
  String resendLinkCooldown(int seconds);

  /// No description provided for @resendLinkCta.
  ///
  /// In en, this message translates to:
  /// **'Resend link'**
  String get resendLinkCta;

  /// No description provided for @resendLinkErr.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t resend link'**
  String get resendLinkErr;

  /// No description provided for @resendLinkSending.
  ///
  /// In en, this message translates to:
  /// **'Sending…'**
  String get resendLinkSending;

  /// No description provided for @resendLinkSentBody.
  ///
  /// In en, this message translates to:
  /// **'We sent a fresh link to {email}. The previous one still works too if you find it.'**
  String resendLinkSentBody(String email);

  /// No description provided for @resendLinkSentRubric.
  ///
  /// In en, this message translates to:
  /// **'LINK SENT'**
  String get resendLinkSentRubric;

  /// No description provided for @resendLinkSentTitle.
  ///
  /// In en, this message translates to:
  /// **'Check your inbox again'**
  String get resendLinkSentTitle;

  /// No description provided for @resetPasswordConfirmLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm new password'**
  String get resetPasswordConfirmLabel;

  /// No description provided for @resetPasswordErrMismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords don\'t match.'**
  String get resetPasswordErrMismatch;

  /// No description provided for @resetPasswordErrSave.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save the new password'**
  String get resetPasswordErrSave;

  /// No description provided for @resetPasswordErrTooShort.
  ///
  /// In en, this message translates to:
  /// **'Use at least 8 characters.'**
  String get resetPasswordErrTooShort;

  /// No description provided for @resetPasswordHeading.
  ///
  /// In en, this message translates to:
  /// **'Pick a new password'**
  String get resetPasswordHeading;

  /// No description provided for @resetPasswordNewLabel.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get resetPasswordNewLabel;

  /// No description provided for @resetPasswordSave.
  ///
  /// In en, this message translates to:
  /// **'Save and sign in'**
  String get resetPasswordSave;

  /// No description provided for @resetPasswordSaving.
  ///
  /// In en, this message translates to:
  /// **'Saving…'**
  String get resetPasswordSaving;

  /// No description provided for @resetPasswordSubtitle.
  ///
  /// In en, this message translates to:
  /// **'At least 8 characters. You will be signed in once it saves.'**
  String get resetPasswordSubtitle;

  /// No description provided for @resetPasswordSuccessBody.
  ///
  /// In en, this message translates to:
  /// **'Your new password is active. Use it next time you sign in on another device.'**
  String get resetPasswordSuccessBody;

  /// No description provided for @resetPasswordSuccessRubric.
  ///
  /// In en, this message translates to:
  /// **'PASSWORD UPDATED'**
  String get resetPasswordSuccessRubric;

  /// No description provided for @resetPasswordSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'You are signed in'**
  String get resetPasswordSuccessTitle;

  /// No description provided for @reviewPoliciesAcceptErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save acceptance'**
  String get reviewPoliciesAcceptErrorOp;

  /// No description provided for @reviewPoliciesAgreeBoth.
  ///
  /// In en, this message translates to:
  /// **'I agree to both'**
  String get reviewPoliciesAgreeBoth;

  /// No description provided for @reviewPoliciesAgreeOne.
  ///
  /// In en, this message translates to:
  /// **'I agree'**
  String get reviewPoliciesAgreeOne;

  /// No description provided for @reviewPoliciesDocVersionRead.
  ///
  /// In en, this message translates to:
  /// **'Version {version} · read ✓'**
  String reviewPoliciesDocVersionRead(String version);

  /// No description provided for @reviewPoliciesDocVersionUnread.
  ///
  /// In en, this message translates to:
  /// **'Version {version} · tap to read'**
  String reviewPoliciesDocVersionUnread(String version);

  /// No description provided for @reviewPoliciesIntro.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Please review and accept the document below before continuing.} other{Please review and accept both documents below before continuing.}}'**
  String reviewPoliciesIntro(int count);

  /// No description provided for @reviewPoliciesLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String reviewPoliciesLoadError(String error);

  /// No description provided for @reviewPoliciesOpenFirstBoth.
  ///
  /// In en, this message translates to:
  /// **'Open both documents first.'**
  String get reviewPoliciesOpenFirstBoth;

  /// No description provided for @reviewPoliciesOpenFirstOne.
  ///
  /// In en, this message translates to:
  /// **'Open the document above first.'**
  String get reviewPoliciesOpenFirstOne;

  /// No description provided for @reviewPoliciesReadFirstBoth.
  ///
  /// In en, this message translates to:
  /// **'Read both to continue'**
  String get reviewPoliciesReadFirstBoth;

  /// No description provided for @reviewPoliciesReadFirstOne.
  ///
  /// In en, this message translates to:
  /// **'Tap above to read first'**
  String get reviewPoliciesReadFirstOne;

  /// No description provided for @reviewPoliciesSignOutBody.
  ///
  /// In en, this message translates to:
  /// **'You can sign back in anytime. Using Luney requires agreeing to the documents.'**
  String get reviewPoliciesSignOutBody;

  /// No description provided for @reviewPoliciesSignOutConfirm.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get reviewPoliciesSignOutConfirm;

  /// No description provided for @reviewPoliciesSignOutErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t sign out'**
  String get reviewPoliciesSignOutErrorOp;

  /// No description provided for @reviewPoliciesSignOutInstead.
  ///
  /// In en, this message translates to:
  /// **'Sign out instead'**
  String get reviewPoliciesSignOutInstead;

  /// No description provided for @reviewPoliciesSignOutTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign out?'**
  String get reviewPoliciesSignOutTitle;

  /// No description provided for @reviewPoliciesTitle.
  ///
  /// In en, this message translates to:
  /// **'A quick update'**
  String get reviewPoliciesTitle;

  /// No description provided for @rewindClosingLabel.
  ///
  /// In en, this message translates to:
  /// **'THAT\'S A WRAP'**
  String get rewindClosingLabel;

  /// No description provided for @rewindClosingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap the share button to post any\nslide as an Instagram Story.'**
  String get rewindClosingSubtitle;

  /// No description provided for @rewindClosingTitle.
  ///
  /// In en, this message translates to:
  /// **'Thanks for being here.'**
  String get rewindClosingTitle;

  /// No description provided for @rewindDmsCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{DM. (We see you, lurker.)} other{DMs sent. You\'ve been talking.}}'**
  String rewindDmsCount(int count);

  /// No description provided for @rewindDmsLabel.
  ///
  /// In en, this message translates to:
  /// **'MESSAGES SENT'**
  String get rewindDmsLabel;

  /// No description provided for @rewindErrShare.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t share your Rewind slide'**
  String get rewindErrShare;

  /// No description provided for @rewindFirstPostBody.
  ///
  /// In en, this message translates to:
  /// **'you broke the silence?\nThat was your first post this year.'**
  String get rewindFirstPostBody;

  /// No description provided for @rewindFirstPostDate.
  ///
  /// In en, this message translates to:
  /// **'{month} {day}'**
  String rewindFirstPostDate(String month, int day);

  /// No description provided for @rewindFirstPostLabel.
  ///
  /// In en, this message translates to:
  /// **'YOUR FIRST POST THIS YEAR'**
  String get rewindFirstPostLabel;

  /// No description provided for @rewindFirstPostTitle.
  ///
  /// In en, this message translates to:
  /// **'Remember when'**
  String get rewindFirstPostTitle;

  /// No description provided for @rewindFriendFallback.
  ///
  /// In en, this message translates to:
  /// **'friend'**
  String get rewindFriendFallback;

  /// No description provided for @rewindFriendMessages.
  ///
  /// In en, this message translates to:
  /// **'{count} messages'**
  String rewindFriendMessages(String count);

  /// No description provided for @rewindFriendNameFallback.
  ///
  /// In en, this message translates to:
  /// **'A friend'**
  String get rewindFriendNameFallback;

  /// No description provided for @rewindGroupFallback.
  ///
  /// In en, this message translates to:
  /// **'Your group'**
  String get rewindGroupFallback;

  /// No description provided for @rewindGroupMessages.
  ///
  /// In en, this message translates to:
  /// **'{count} messages from you.'**
  String rewindGroupMessages(String count);

  /// No description provided for @rewindGroupsCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{new group joined.} other{new groups joined.}}'**
  String rewindGroupsCount(int count);

  /// No description provided for @rewindGroupsLabel.
  ///
  /// In en, this message translates to:
  /// **'YOUR COMMUNITIES'**
  String get rewindGroupsLabel;

  /// No description provided for @rewindJoinedDays.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{day on Luney.} other{days on Luney so far.\nWe\'re glad you\'re here.}}'**
  String rewindJoinedDays(int count);

  /// No description provided for @rewindJoinedLabel.
  ///
  /// In en, this message translates to:
  /// **'YOUR LUNEY ANNIVERSARY'**
  String get rewindJoinedLabel;

  /// No description provided for @rewindLobbiesCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{lobby hosted. The mic was on.} other{lobbies hosted. The mic was on.}}'**
  String rewindLobbiesCount(int count);

  /// No description provided for @rewindLobbiesLabel.
  ///
  /// In en, this message translates to:
  /// **'LOBBIES YOU HOSTED'**
  String get rewindLobbiesLabel;

  /// No description provided for @rewindMostActiveLabel.
  ///
  /// In en, this message translates to:
  /// **'YOUR MOST ACTIVE GROUP'**
  String get rewindMostActiveLabel;

  /// No description provided for @rewindPreparing.
  ///
  /// In en, this message translates to:
  /// **'Preparing your {year} Rewind…'**
  String rewindPreparing(int year);

  /// No description provided for @rewindPreparingBody.
  ///
  /// In en, this message translates to:
  /// **'Hang tight, we\'re still baking.'**
  String get rewindPreparingBody;

  /// No description provided for @rewindPromoDismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get rewindPromoDismiss;

  /// No description provided for @rewindPromoPreparingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'We\'re baking it now. Check back in a few minutes.'**
  String get rewindPromoPreparingSubtitle;

  /// No description provided for @rewindPromoPreparingTitle.
  ///
  /// In en, this message translates to:
  /// **'Your {year} Rewind is on the way'**
  String rewindPromoPreparingTitle(int year);

  /// No description provided for @rewindPromoReadySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap to see your year on Luney.'**
  String get rewindPromoReadySubtitle;

  /// No description provided for @rewindPromoReadyTitle.
  ///
  /// In en, this message translates to:
  /// **'Your {year} Rewind is here ✨'**
  String rewindPromoReadyTitle(int year);

  /// No description provided for @rewindReelsPostedCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{reel posted.} other{reels posted.}}'**
  String rewindReelsPostedCount(int count);

  /// No description provided for @rewindReelsPostedLabel.
  ///
  /// In en, this message translates to:
  /// **'YOUR REEL ERA'**
  String get rewindReelsPostedLabel;

  /// No description provided for @rewindReelsWatchedCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{reel watched.} other{reels watched this year.}}'**
  String rewindReelsWatchedCount(int count);

  /// No description provided for @rewindReelsWatchedLabel.
  ///
  /// In en, this message translates to:
  /// **'REELS YOU WATCHED'**
  String get rewindReelsWatchedLabel;

  /// No description provided for @rewindSettingsTileSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Open + share your year on Luney'**
  String get rewindSettingsTileSubtitle;

  /// No description provided for @rewindSettingsTileTitle.
  ///
  /// In en, this message translates to:
  /// **'Your {year} Rewind'**
  String rewindSettingsTileTitle(int year);

  /// No description provided for @rewindShareSubject.
  ///
  /// In en, this message translates to:
  /// **'My Luney Rewind {year}'**
  String rewindShareSubject(int year);

  /// No description provided for @rewindShareText.
  ///
  /// In en, this message translates to:
  /// **'My year on Luney 💖'**
  String get rewindShareText;

  /// No description provided for @rewindShareTooltip.
  ///
  /// In en, this message translates to:
  /// **'Share this slide'**
  String get rewindShareTooltip;

  /// No description provided for @rewindSlideLoading.
  ///
  /// In en, this message translates to:
  /// **'Slide is still loading. Tap share again.'**
  String get rewindSlideLoading;

  /// No description provided for @rewindTopFriendsLabel.
  ///
  /// In en, this message translates to:
  /// **'YOUR TOP FRIENDS'**
  String get rewindTopFriendsLabel;

  /// No description provided for @rewindTopFriendsTitle.
  ///
  /// In en, this message translates to:
  /// **'The people you talked to most.'**
  String get rewindTopFriendsTitle;

  /// No description provided for @rewindTopHashtagLabel.
  ///
  /// In en, this message translates to:
  /// **'TOP HASHTAG'**
  String get rewindTopHashtagLabel;

  /// No description provided for @rewindUnavailableBody.
  ///
  /// In en, this message translates to:
  /// **'Check back when the next season opens.'**
  String get rewindUnavailableBody;

  /// No description provided for @rewindUnavailableTitle.
  ///
  /// In en, this message translates to:
  /// **'Luney Rewind isn\'t open right now.'**
  String get rewindUnavailableTitle;

  /// No description provided for @rewindWelcomeLabel.
  ///
  /// In en, this message translates to:
  /// **'YOUR YEAR ON LUNEY'**
  String get rewindWelcomeLabel;

  /// No description provided for @rewindWelcomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tap or swipe to keep going.'**
  String get rewindWelcomeSubtitle;

  /// No description provided for @rewindWelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Hey {name},\nlet\'s look back.'**
  String rewindWelcomeTitle(String name);

  /// No description provided for @rollCallCardCheckInOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t check in'**
  String get rollCallCardCheckInOp;

  /// No description provided for @rollCallCardCheckInWithEmoji.
  ///
  /// In en, this message translates to:
  /// **'Check in with emoji {emoji}'**
  String rollCallCardCheckInWithEmoji(String emoji);

  /// No description provided for @rollCallCardHeader.
  ///
  /// In en, this message translates to:
  /// **'ROLL CALL'**
  String get rollCallCardHeader;

  /// No description provided for @rollCallCardReportTarget.
  ///
  /// In en, this message translates to:
  /// **'this check-in'**
  String get rollCallCardReportTarget;

  /// No description provided for @rollCallCardToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get rollCallCardToday;

  /// No description provided for @rollCallCardTodayCount.
  ///
  /// In en, this message translates to:
  /// **'Today · {count} here'**
  String rollCallCardTodayCount(int count);

  /// No description provided for @rollCallCardYou.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get rollCallCardYou;

  /// No description provided for @routerChildSafetyTitle.
  ///
  /// In en, this message translates to:
  /// **'Child Safety'**
  String get routerChildSafetyTitle;

  /// No description provided for @routerErrorNoMatch.
  ///
  /// In en, this message translates to:
  /// **'No matching route'**
  String get routerErrorNoMatch;

  /// No description provided for @routerErrorOpeningPage.
  ///
  /// In en, this message translates to:
  /// **'Opening page'**
  String get routerErrorOpeningPage;

  /// No description provided for @routerWhatsNewTitle.
  ///
  /// In en, this message translates to:
  /// **'What\'s New'**
  String get routerWhatsNewTitle;

  /// No description provided for @safetyScreenAccountRestrictions.
  ///
  /// In en, this message translates to:
  /// **'Account restrictions'**
  String get safetyScreenAccountRestrictions;

  /// No description provided for @safetyScreenBlockedUsers.
  ///
  /// In en, this message translates to:
  /// **'Blocked Users'**
  String get safetyScreenBlockedUsers;

  /// No description provided for @safetyScreenCrisisResources.
  ///
  /// In en, this message translates to:
  /// **'Crisis support resources'**
  String get safetyScreenCrisisResources;

  /// No description provided for @safetyScreenDateCheckin.
  ///
  /// In en, this message translates to:
  /// **'Date Check-in'**
  String get safetyScreenDateCheckin;

  /// No description provided for @safetyScreenPanicMode.
  ///
  /// In en, this message translates to:
  /// **'Panic Mode'**
  String get safetyScreenPanicMode;

  /// No description provided for @safetyScreenSectionAccount.
  ///
  /// In en, this message translates to:
  /// **'YOUR ACCOUNT'**
  String get safetyScreenSectionAccount;

  /// No description provided for @safetyScreenSectionCheckOn.
  ///
  /// In en, this message translates to:
  /// **'PEOPLE WHO CAN CHECK ON YOU'**
  String get safetyScreenSectionCheckOn;

  /// No description provided for @safetyScreenSectionPeople.
  ///
  /// In en, this message translates to:
  /// **'PEOPLE'**
  String get safetyScreenSectionPeople;

  /// No description provided for @safetyScreenSectionPhoneGrabbed.
  ///
  /// In en, this message translates to:
  /// **'IF YOUR PHONE GETS GRABBED'**
  String get safetyScreenSectionPhoneGrabbed;

  /// No description provided for @safetyScreenSectionTalkTo.
  ///
  /// In en, this message translates to:
  /// **'IF YOU NEED SOMEONE TO TALK TO'**
  String get safetyScreenSectionTalkTo;

  /// No description provided for @safetyScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Safety'**
  String get safetyScreenTitle;

  /// No description provided for @safetyScreenTrustedCircle.
  ///
  /// In en, this message translates to:
  /// **'Trusted Circle'**
  String get safetyScreenTrustedCircle;

  /// No description provided for @screenCaptureGuardBody.
  ///
  /// In en, this message translates to:
  /// **'Luney hides your content while the screen is being recorded or mirrored. Stop the recording to return to the app. The people in any open chat have been told a recording started.'**
  String get screenCaptureGuardBody;

  /// No description provided for @screenCaptureGuardTitle.
  ///
  /// In en, this message translates to:
  /// **'Screen recording detected'**
  String get screenCaptureGuardTitle;

  /// No description provided for @screenshotNotifierPostMessage.
  ///
  /// In en, this message translates to:
  /// **'Heads up: Luney told the post\'s author you took a screenshot. The notification doesn\'t include the screenshot itself, just that one was taken.'**
  String get screenshotNotifierPostMessage;

  /// No description provided for @screenshotNotifierPostTitle.
  ///
  /// In en, this message translates to:
  /// **'The post owner was notified'**
  String get screenshotNotifierPostTitle;

  /// No description provided for @screenshotNotifierProfileMessage.
  ///
  /// In en, this message translates to:
  /// **'Heads up: Luney told the profile owner you took a screenshot. The notification doesn\'t include the screenshot itself, just that one was taken.'**
  String get screenshotNotifierProfileMessage;

  /// No description provided for @screenshotNotifierProfileTitle.
  ///
  /// In en, this message translates to:
  /// **'The profile owner was notified'**
  String get screenshotNotifierProfileTitle;

  /// No description provided for @screenshotNotifierReelMessage.
  ///
  /// In en, this message translates to:
  /// **'Heads up: Luney told the reel\'s creator you took a screenshot. The notification doesn\'t include the screenshot itself, just that one was taken.'**
  String get screenshotNotifierReelMessage;

  /// No description provided for @screenshotNotifierReelTitle.
  ///
  /// In en, this message translates to:
  /// **'The reel owner was notified'**
  String get screenshotNotifierReelTitle;

  /// No description provided for @screenshotNotifierRubric.
  ///
  /// In en, this message translates to:
  /// **'SCREENSHOT TAKEN'**
  String get screenshotNotifierRubric;

  /// No description provided for @searchClear.
  ///
  /// In en, this message translates to:
  /// **'Clear search'**
  String get searchClear;

  /// No description provided for @searchFailed.
  ///
  /// In en, this message translates to:
  /// **'Search failed: {error}'**
  String searchFailed(String error);

  /// No description provided for @searchHashtagSubtitle.
  ///
  /// In en, this message translates to:
  /// **'See posts and reels with this tag'**
  String get searchHashtagSubtitle;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search people or #hashtags…'**
  String get searchHint;

  /// No description provided for @searchMinChars.
  ///
  /// In en, this message translates to:
  /// **'Type at least 2 characters to search.'**
  String get searchMinChars;

  /// No description provided for @searchNoMatches.
  ///
  /// In en, this message translates to:
  /// **'No matches.'**
  String get searchNoMatches;

  /// No description provided for @securityChange.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get securityChange;

  /// No description provided for @securityChangePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get securityChangePassword;

  /// No description provided for @securityConnectionsLinked.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 third-party provider linked.} other{{count} third-party providers linked.}}'**
  String securityConnectionsLinked(int count);

  /// No description provided for @securityConnectionsNone.
  ///
  /// In en, this message translates to:
  /// **'Link Apple, Google, or Discord to sign in faster.'**
  String get securityConnectionsNone;

  /// No description provided for @securityEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get securityEmailLabel;

  /// No description provided for @securityEmailSentMsg.
  ///
  /// In en, this message translates to:
  /// **'Tap the link in the email to confirm the change. Your current email stays active until you click the link.'**
  String get securityEmailSentMsg;

  /// No description provided for @securityEmailSentRubric.
  ///
  /// In en, this message translates to:
  /// **'CHECK YOUR INBOX'**
  String get securityEmailSentRubric;

  /// No description provided for @securityEmailSentTitle.
  ///
  /// In en, this message translates to:
  /// **'Verification email sent'**
  String get securityEmailSentTitle;

  /// No description provided for @securityLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String securityLoadError(String error);

  /// No description provided for @securityNoEmail.
  ///
  /// In en, this message translates to:
  /// **'No email on file.'**
  String get securityNoEmail;

  /// No description provided for @securityPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Email + Password'**
  String get securityPasswordLabel;

  /// No description provided for @securityPasswordLinked.
  ///
  /// In en, this message translates to:
  /// **'Linked. Tap to change your password.'**
  String get securityPasswordLinked;

  /// No description provided for @securityPasswordUnset.
  ///
  /// In en, this message translates to:
  /// **'No password set yet. Tap to set one as a fallback.'**
  String get securityPasswordUnset;

  /// No description provided for @securityPwSetMsg.
  ///
  /// In en, this message translates to:
  /// **'Your account now has a password as a fallback sign-in. The OAuth links you already have still work too.'**
  String get securityPwSetMsg;

  /// No description provided for @securityPwSetRubric.
  ///
  /// In en, this message translates to:
  /// **'PASSWORD SET'**
  String get securityPwSetRubric;

  /// No description provided for @securityPwSetTitle.
  ///
  /// In en, this message translates to:
  /// **'Password set'**
  String get securityPwSetTitle;

  /// No description provided for @securityPwUpdatedMsg.
  ///
  /// In en, this message translates to:
  /// **'Your account now uses the new password.'**
  String get securityPwUpdatedMsg;

  /// No description provided for @securityPwUpdatedRubric.
  ///
  /// In en, this message translates to:
  /// **'PASSWORD UPDATED'**
  String get securityPwUpdatedRubric;

  /// No description provided for @securityPwUpdatedTitle.
  ///
  /// In en, this message translates to:
  /// **'Password updated'**
  String get securityPwUpdatedTitle;

  /// No description provided for @securitySectionAccount.
  ///
  /// In en, this message translates to:
  /// **'ACCOUNT'**
  String get securitySectionAccount;

  /// No description provided for @securitySectionSignIn.
  ///
  /// In en, this message translates to:
  /// **'SIGN-IN METHODS'**
  String get securitySectionSignIn;

  /// No description provided for @securitySetPassword.
  ///
  /// In en, this message translates to:
  /// **'Set Password'**
  String get securitySetPassword;

  /// No description provided for @securityTitle.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get securityTitle;

  /// No description provided for @securityWidgetsLink.
  ///
  /// In en, this message translates to:
  /// **'Link'**
  String get securityWidgetsLink;

  /// No description provided for @securityWidgetsLinked.
  ///
  /// In en, this message translates to:
  /// **'LINKED'**
  String get securityWidgetsLinked;

  /// No description provided for @securityWidgetsUnlink.
  ///
  /// In en, this message translates to:
  /// **'Unlink'**
  String get securityWidgetsUnlink;

  /// No description provided for @sendAnniversaryCardErrSend.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send anniversary card'**
  String get sendAnniversaryCardErrSend;

  /// No description provided for @sendAnniversaryCardNoteHint.
  ///
  /// In en, this message translates to:
  /// **'Add a note (optional)'**
  String get sendAnniversaryCardNoteHint;

  /// No description provided for @sendAnniversaryCardPreviewError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load preview'**
  String get sendAnniversaryCardPreviewError;

  /// No description provided for @sendAnniversaryCardSendCta.
  ///
  /// In en, this message translates to:
  /// **'Send card'**
  String get sendAnniversaryCardSendCta;

  /// No description provided for @sendAnniversaryCardSentBody.
  ///
  /// In en, this message translates to:
  /// **'They\'ll get a push + a full-screen card view they can open any time. The card stays a keepsake for both of you.'**
  String get sendAnniversaryCardSentBody;

  /// No description provided for @sendAnniversaryCardSentRubric.
  ///
  /// In en, this message translates to:
  /// **'CARD SENT'**
  String get sendAnniversaryCardSentRubric;

  /// No description provided for @sendAnniversaryCardSentTitle.
  ///
  /// In en, this message translates to:
  /// **'Card sent 💌'**
  String get sendAnniversaryCardSentTitle;

  /// No description provided for @sendAnniversaryCardTemplateA11y.
  ///
  /// In en, this message translates to:
  /// **'Template: {label}'**
  String sendAnniversaryCardTemplateA11y(String label);

  /// No description provided for @sendAnniversaryCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Send a friendiversary card'**
  String get sendAnniversaryCardTitle;

  /// No description provided for @settingsAboutLuney.
  ///
  /// In en, this message translates to:
  /// **'About Luney'**
  String get settingsAboutLuney;

  /// No description provided for @settingsAccountViolations.
  ///
  /// In en, this message translates to:
  /// **'Account Violations'**
  String get settingsAccountViolations;

  /// No description provided for @settingsEditProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get settingsEditProfile;

  /// No description provided for @settingsFeedback.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get settingsFeedback;

  /// No description provided for @settingsFriendRequests.
  ///
  /// In en, this message translates to:
  /// **'Friend Requests'**
  String get settingsFriendRequests;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @settingsNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsNotifications;

  /// No description provided for @settingsOnAdminDuty.
  ///
  /// In en, this message translates to:
  /// **'On Admin Duty'**
  String get settingsOnAdminDuty;

  /// No description provided for @settingsOnAdminDutyDesc.
  ///
  /// In en, this message translates to:
  /// **'Reveals admin actions on long-press.'**
  String get settingsOnAdminDutyDesc;

  /// Header for the staff permissions diagnostic; count = how many perms loaded.
  ///
  /// In en, this message translates to:
  /// **'Loaded ({count})'**
  String settingsPermsLoaded(int count);

  /// No description provided for @settingsPermsNone.
  ///
  /// In en, this message translates to:
  /// **'No permissions loaded.'**
  String get settingsPermsNone;

  /// No description provided for @settingsPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get settingsPrivacy;

  /// No description provided for @settingsRecordingMode.
  ///
  /// In en, this message translates to:
  /// **'Recording Mode'**
  String get settingsRecordingMode;

  /// No description provided for @settingsRecordingModeError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t change recording mode'**
  String get settingsRecordingModeError;

  /// No description provided for @settingsRecordingModeOff.
  ///
  /// In en, this message translates to:
  /// **'Temporarily lift the screenshot / recording block on this device for moderation evidence (60 min).'**
  String get settingsRecordingModeOff;

  /// No description provided for @settingsRecordingModeOn.
  ///
  /// In en, this message translates to:
  /// **'Screen protection is OFF on this device. Auto-ends after 60 min; turn off when done.'**
  String get settingsRecordingModeOn;

  /// No description provided for @settingsSafety.
  ///
  /// In en, this message translates to:
  /// **'Safety'**
  String get settingsSafety;

  /// No description provided for @settingsSectionAbout.
  ///
  /// In en, this message translates to:
  /// **'ABOUT'**
  String get settingsSectionAbout;

  /// No description provided for @settingsSectionAccount.
  ///
  /// In en, this message translates to:
  /// **'ACCOUNT'**
  String get settingsSectionAccount;

  /// No description provided for @settingsSectionAppearance.
  ///
  /// In en, this message translates to:
  /// **'APPEARANCE'**
  String get settingsSectionAppearance;

  /// No description provided for @settingsSectionDuty.
  ///
  /// In en, this message translates to:
  /// **'DUTY'**
  String get settingsSectionDuty;

  /// No description provided for @settingsSectionLanguage.
  ///
  /// In en, this message translates to:
  /// **'LANGUAGE'**
  String get settingsSectionLanguage;

  /// No description provided for @settingsSectionPermissions.
  ///
  /// In en, this message translates to:
  /// **'PERMISSIONS'**
  String get settingsSectionPermissions;

  /// No description provided for @settingsSectionQueues.
  ///
  /// In en, this message translates to:
  /// **'QUEUES'**
  String get settingsSectionQueues;

  /// No description provided for @settingsSectionSupport.
  ///
  /// In en, this message translates to:
  /// **'SUPPORT'**
  String get settingsSectionSupport;

  /// No description provided for @settingsSecurity.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get settingsSecurity;

  /// No description provided for @settingsSignOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get settingsSignOut;

  /// No description provided for @settingsStaffInbox.
  ///
  /// In en, this message translates to:
  /// **'Staff Inbox'**
  String get settingsStaffInbox;

  /// No description provided for @settingsStaffLounge.
  ///
  /// In en, this message translates to:
  /// **'Staff Lounge'**
  String get settingsStaffLounge;

  /// No description provided for @settingsSupportTickets.
  ///
  /// In en, this message translates to:
  /// **'Support Tickets'**
  String get settingsSupportTickets;

  /// Tab label for the non-staff settings list.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTabSettings;

  /// No description provided for @settingsTabStaff.
  ///
  /// In en, this message translates to:
  /// **'Staff'**
  String get settingsTabStaff;

  /// No description provided for @settingsTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsTheme;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsVipMembership.
  ///
  /// In en, this message translates to:
  /// **'VIP Membership'**
  String get settingsVipMembership;

  /// No description provided for @shareableContentPost.
  ///
  /// In en, this message translates to:
  /// **'post'**
  String get shareableContentPost;

  /// No description provided for @shareableContentReel.
  ///
  /// In en, this message translates to:
  /// **'reel'**
  String get shareableContentReel;

  /// No description provided for @shareablePostBody.
  ///
  /// In en, this message translates to:
  /// **'{excerpt}\n\nvia @{handle} on Luney\n{url}'**
  String shareablePostBody(String excerpt, String handle, String url);

  /// No description provided for @shareablePostSubject.
  ///
  /// In en, this message translates to:
  /// **'Luney post by @{handle}'**
  String shareablePostSubject(String handle);

  /// No description provided for @shareableReelBody.
  ///
  /// In en, this message translates to:
  /// **'{caption}Reel by {owner} on Luney\n{url}'**
  String shareableReelBody(String caption, String owner, String url);

  /// No description provided for @shareableReelOwnerFallback.
  ///
  /// In en, this message translates to:
  /// **'a friend'**
  String get shareableReelOwnerFallback;

  /// No description provided for @shareableReelSubject.
  ///
  /// In en, this message translates to:
  /// **'Reel by {owner} on Luney'**
  String shareableReelSubject(String owner);

  /// No description provided for @sharedContentEmbedAFriend.
  ///
  /// In en, this message translates to:
  /// **'a friend'**
  String get sharedContentEmbedAFriend;

  /// No description provided for @sharedContentEmbedKindPost.
  ///
  /// In en, this message translates to:
  /// **'POST'**
  String get sharedContentEmbedKindPost;

  /// No description provided for @sharedContentEmbedKindReel.
  ///
  /// In en, this message translates to:
  /// **'REEL'**
  String get sharedContentEmbedKindReel;

  /// No description provided for @sharedContentEmbedPhotoPost.
  ///
  /// In en, this message translates to:
  /// **'Photo post'**
  String get sharedContentEmbedPhotoPost;

  /// No description provided for @sharedContentEmbedPost.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get sharedContentEmbedPost;

  /// No description provided for @sharedContentEmbedReel.
  ///
  /// In en, this message translates to:
  /// **'Reel'**
  String get sharedContentEmbedReel;

  /// No description provided for @sharedContentEmbedUnavailable.
  ///
  /// In en, this message translates to:
  /// **'This post is no longer available.'**
  String get sharedContentEmbedUnavailable;

  /// No description provided for @shareSheetClose.
  ///
  /// In en, this message translates to:
  /// **'Close share sheet'**
  String get shareSheetClose;

  /// No description provided for @shareSheetCopyLink.
  ///
  /// In en, this message translates to:
  /// **'Copy link'**
  String get shareSheetCopyLink;

  /// No description provided for @shareSheetDisabled.
  ///
  /// In en, this message translates to:
  /// **'The creator turned off external sharing for this.'**
  String get shareSheetDisabled;

  /// No description provided for @shareSheetErrExternal.
  ///
  /// In en, this message translates to:
  /// **'Opening external share'**
  String get shareSheetErrExternal;

  /// No description provided for @shareSheetErrPostGroup.
  ///
  /// In en, this message translates to:
  /// **'Posting {kind} to group'**
  String shareSheetErrPostGroup(String kind);

  /// No description provided for @shareSheetErrSendChat.
  ///
  /// In en, this message translates to:
  /// **'Sending {kind} to chat'**
  String shareSheetErrSendChat(String kind);

  /// No description provided for @shareSheetFriendFallback.
  ///
  /// In en, this message translates to:
  /// **'friend'**
  String get shareSheetFriendFallback;

  /// No description provided for @shareSheetGroupsError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load your groups.'**
  String get shareSheetGroupsError;

  /// No description provided for @shareSheetLinkCopied.
  ///
  /// In en, this message translates to:
  /// **'Link copied.'**
  String get shareSheetLinkCopied;

  /// No description provided for @shareSheetNoChats.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any chats yet. Start one from a friend\'s profile.'**
  String get shareSheetNoChats;

  /// No description provided for @shareSheetNoGroups.
  ///
  /// In en, this message translates to:
  /// **'You\'re not in any groups yet.'**
  String get shareSheetNoGroups;

  /// No description provided for @shareSheetNoHandlerBody.
  ///
  /// In en, this message translates to:
  /// **'Your device doesn\'t have an app installed that can handle this link. Try a different share destination.'**
  String get shareSheetNoHandlerBody;

  /// No description provided for @shareSheetNoHandlerRubric.
  ///
  /// In en, this message translates to:
  /// **'NO HANDLER'**
  String get shareSheetNoHandlerRubric;

  /// No description provided for @shareSheetNoHandlerTitle.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open the share link'**
  String get shareSheetNoHandlerTitle;

  /// No description provided for @shareSheetPostedBody.
  ///
  /// In en, this message translates to:
  /// **'Members can see it on the Posts tab now.'**
  String get shareSheetPostedBody;

  /// No description provided for @shareSheetPostedRubric.
  ///
  /// In en, this message translates to:
  /// **'POSTED'**
  String get shareSheetPostedRubric;

  /// No description provided for @shareSheetPostedTitle.
  ///
  /// In en, this message translates to:
  /// **'Posted to {group}'**
  String shareSheetPostedTitle(String group);

  /// No description provided for @shareSheetSectionChat.
  ///
  /// In en, this message translates to:
  /// **'Send to chat'**
  String get shareSheetSectionChat;

  /// No description provided for @shareSheetSectionGroup.
  ///
  /// In en, this message translates to:
  /// **'Send to group'**
  String get shareSheetSectionGroup;

  /// No description provided for @shareSheetSectionMore.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get shareSheetSectionMore;

  /// No description provided for @shareSheetSentBody.
  ///
  /// In en, this message translates to:
  /// **'They\'ll see it in chat next time they open the thread.'**
  String get shareSheetSentBody;

  /// No description provided for @shareSheetSentRubric.
  ///
  /// In en, this message translates to:
  /// **'SENT'**
  String get shareSheetSentRubric;

  /// No description provided for @shareSheetSentTitle.
  ///
  /// In en, this message translates to:
  /// **'Sent to @{handle}'**
  String shareSheetSentTitle(String handle);

  /// No description provided for @shareSheetShareVia.
  ///
  /// In en, this message translates to:
  /// **'Share via…'**
  String get shareSheetShareVia;

  /// No description provided for @shareSheetTitle.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get shareSheetTitle;

  /// No description provided for @shoutoutsCardErrorLabel.
  ///
  /// In en, this message translates to:
  /// **'Shoutouts'**
  String get shoutoutsCardErrorLabel;

  /// No description provided for @shoutoutsCardHeader.
  ///
  /// In en, this message translates to:
  /// **'SHOUTOUT WALL'**
  String get shoutoutsCardHeader;

  /// No description provided for @shoutoutsCardHeart.
  ///
  /// In en, this message translates to:
  /// **'Heart shoutout'**
  String get shoutoutsCardHeart;

  /// No description provided for @shoutoutsCardReportTarget.
  ///
  /// In en, this message translates to:
  /// **'this shoutout'**
  String get shoutoutsCardReportTarget;

  /// No description provided for @shoutoutsCardUnheart.
  ///
  /// In en, this message translates to:
  /// **'Unheart shoutout'**
  String get shoutoutsCardUnheart;

  /// No description provided for @signInCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'Create an account'**
  String get signInCreateAccount;

  /// No description provided for @signInEmailHint.
  ///
  /// In en, this message translates to:
  /// **'you@domain.com'**
  String get signInEmailHint;

  /// No description provided for @signInEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get signInEmailLabel;

  /// No description provided for @signInErrSignIn.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t sign in'**
  String get signInErrSignIn;

  /// No description provided for @signInForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get signInForgotPassword;

  /// No description provided for @signInHeading.
  ///
  /// In en, this message translates to:
  /// **'Sign in to continue'**
  String get signInHeading;

  /// No description provided for @signInMagicLink.
  ///
  /// In en, this message translates to:
  /// **'Email me a magic link instead'**
  String get signInMagicLink;

  /// No description provided for @signInNewHere.
  ///
  /// In en, this message translates to:
  /// **'New here? '**
  String get signInNewHere;

  /// No description provided for @signInOr.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get signInOr;

  /// No description provided for @signInPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get signInPasswordHint;

  /// No description provided for @signInPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get signInPasswordLabel;

  /// No description provided for @signInRememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get signInRememberMe;

  /// No description provided for @signInRememberOffA11y.
  ///
  /// In en, this message translates to:
  /// **'Remember me, off'**
  String get signInRememberOffA11y;

  /// No description provided for @signInRememberOnA11y.
  ///
  /// In en, this message translates to:
  /// **'Remember me, on'**
  String get signInRememberOnA11y;

  /// No description provided for @signInSignIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signInSignIn;

  /// No description provided for @signInSigningIn.
  ///
  /// In en, this message translates to:
  /// **'Signing in…'**
  String get signInSigningIn;

  /// No description provided for @signUpAlreadyHaveOne.
  ///
  /// In en, this message translates to:
  /// **'Already have one? '**
  String get signUpAlreadyHaveOne;

  /// No description provided for @signUpBackToSignIn.
  ///
  /// In en, this message translates to:
  /// **'Back to sign in'**
  String get signUpBackToSignIn;

  /// No description provided for @signUpConfirmPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Type it again'**
  String get signUpConfirmPasswordHint;

  /// No description provided for @signUpConfirmPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get signUpConfirmPasswordLabel;

  /// No description provided for @signUpCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get signUpCreateAccount;

  /// No description provided for @signUpCreatingAccount.
  ///
  /// In en, this message translates to:
  /// **'Creating account…'**
  String get signUpCreatingAccount;

  /// No description provided for @signUpDobA11yNotSet.
  ///
  /// In en, this message translates to:
  /// **'Date of birth, not set. Double tap to choose.'**
  String get signUpDobA11yNotSet;

  /// No description provided for @signUpDobA11ySet.
  ///
  /// In en, this message translates to:
  /// **'Date of birth, {date}. Double tap to change.'**
  String signUpDobA11ySet(String date);

  /// No description provided for @signUpDobHelpText.
  ///
  /// In en, this message translates to:
  /// **'Your date of birth'**
  String get signUpDobHelpText;

  /// No description provided for @signUpDobLabel.
  ///
  /// In en, this message translates to:
  /// **'DATE OF BIRTH'**
  String get signUpDobLabel;

  /// No description provided for @signUpDobNote.
  ///
  /// In en, this message translates to:
  /// **'Luney is 18+ only.'**
  String get signUpDobNote;

  /// No description provided for @signUpDobTapToChoose.
  ///
  /// In en, this message translates to:
  /// **'Tap to choose'**
  String get signUpDobTapToChoose;

  /// No description provided for @signUpEmailHint.
  ///
  /// In en, this message translates to:
  /// **'you@domain.com'**
  String get signUpEmailHint;

  /// No description provided for @signUpEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get signUpEmailLabel;

  /// No description provided for @signUpErrCreate.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t create your account'**
  String get signUpErrCreate;

  /// No description provided for @signUpErrPasswordMismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords don\'t match.'**
  String get signUpErrPasswordMismatch;

  /// No description provided for @signUpErrPasswordTooShort.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters.'**
  String get signUpErrPasswordTooShort;

  /// No description provided for @signUpErrPolicies.
  ///
  /// In en, this message translates to:
  /// **'Please review and agree to the Terms of Service and Privacy Policy.'**
  String get signUpErrPolicies;

  /// No description provided for @signUpErrUnder18.
  ///
  /// In en, this message translates to:
  /// **'You must be 18 or older to use Luney.'**
  String get signUpErrUnder18;

  /// No description provided for @signUpHeading.
  ///
  /// In en, this message translates to:
  /// **'Create your account'**
  String get signUpHeading;

  /// No description provided for @signUpOr.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get signUpOr;

  /// No description provided for @signUpPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Min 8 characters'**
  String get signUpPasswordHint;

  /// No description provided for @signUpPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get signUpPasswordLabel;

  /// No description provided for @signUpPolicyAgreePrefix.
  ///
  /// In en, this message translates to:
  /// **'I agree to the '**
  String get signUpPolicyAgreePrefix;

  /// No description provided for @signUpPolicyAnd.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get signUpPolicyAnd;

  /// No description provided for @signUpPolicyPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get signUpPolicyPrivacy;

  /// No description provided for @signUpPolicySuffix.
  ///
  /// In en, this message translates to:
  /// **'.'**
  String get signUpPolicySuffix;

  /// No description provided for @signUpPolicyTos.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get signUpPolicyTos;

  /// No description provided for @signUpSignInLink.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signUpSignInLink;

  /// No description provided for @signUpVerifyDidntGet.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t get it? Check spam, or:'**
  String get signUpVerifyDidntGet;

  /// No description provided for @signUpVerifySentTo.
  ///
  /// In en, this message translates to:
  /// **'We sent a verification link to'**
  String get signUpVerifySentTo;

  /// No description provided for @signUpVerifyTitle.
  ///
  /// In en, this message translates to:
  /// **'Check your inbox'**
  String get signUpVerifyTitle;

  /// No description provided for @slashAccountNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'I couldn\'t find @{handle}. Double-check the handle and try again.'**
  String slashAccountNotFoundMessage(String handle);

  /// No description provided for @slashAccountNotFoundTitle.
  ///
  /// In en, this message translates to:
  /// **'Account not found'**
  String get slashAccountNotFoundTitle;

  /// No description provided for @slashBanModsOnly.
  ///
  /// In en, this message translates to:
  /// **'Only admins and mods can ban members from this group.'**
  String get slashBanModsOnly;

  /// No description provided for @slashBannedMessage.
  ///
  /// In en, this message translates to:
  /// **'They\'ve been removed from the group and can\'t rejoin. Use /unban @{handle} to lift the ban.'**
  String slashBannedMessage(String handle);

  /// No description provided for @slashBannedTitle.
  ///
  /// In en, this message translates to:
  /// **'@{handle} was banned'**
  String slashBannedTitle(String handle);

  /// No description provided for @slashBanOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t ban @{handle}'**
  String slashBanOp(String handle);

  /// No description provided for @slashCmdDescBan.
  ///
  /// In en, this message translates to:
  /// **'Remove + block rejoin.'**
  String get slashCmdDescBan;

  /// No description provided for @slashCmdDescHelp.
  ///
  /// In en, this message translates to:
  /// **'Show available commands (only you see it).'**
  String get slashCmdDescHelp;

  /// No description provided for @slashCmdDescKick.
  ///
  /// In en, this message translates to:
  /// **'Remove a member. They can rejoin.'**
  String get slashCmdDescKick;

  /// No description provided for @slashCmdDescMute.
  ///
  /// In en, this message translates to:
  /// **'Silence chat for a window (default 1h, max 30d).'**
  String get slashCmdDescMute;

  /// No description provided for @slashCmdDescRules.
  ///
  /// In en, this message translates to:
  /// **'Post the group rules to everyone.'**
  String get slashCmdDescRules;

  /// No description provided for @slashCmdDescUnban.
  ///
  /// In en, this message translates to:
  /// **'Lift a ban.'**
  String get slashCmdDescUnban;

  /// No description provided for @slashCmdDescUnmute.
  ///
  /// In en, this message translates to:
  /// **'Clear an active mute.'**
  String get slashCmdDescUnmute;

  /// No description provided for @slashDurationNeededMessage.
  ///
  /// In en, this message translates to:
  /// **'Mute duration must be positive. Try 5m, 1h, or 1d after the handle.'**
  String get slashDurationNeededMessage;

  /// No description provided for @slashDurationNeededTitle.
  ///
  /// In en, this message translates to:
  /// **'Duration needed'**
  String get slashDurationNeededTitle;

  /// No description provided for @slashHelpSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Type a slash at the start of a message.'**
  String get slashHelpSubtitle;

  /// No description provided for @slashHelpTitle.
  ///
  /// In en, this message translates to:
  /// **'Chat commands'**
  String get slashHelpTitle;

  /// No description provided for @slashKickedMessage.
  ///
  /// In en, this message translates to:
  /// **'They can still rejoin the group if it\'s public. Use /ban if you need to block them from coming back.'**
  String get slashKickedMessage;

  /// No description provided for @slashKickedTitle.
  ///
  /// In en, this message translates to:
  /// **'@{handle} was kicked'**
  String slashKickedTitle(String handle);

  /// No description provided for @slashKickModsOnly.
  ///
  /// In en, this message translates to:
  /// **'Only admins and mods can kick members from this group.'**
  String get slashKickModsOnly;

  /// No description provided for @slashKickOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t kick @{handle}'**
  String slashKickOp(String handle);

  /// No description provided for @slashMemberNotFoundMessage.
  ///
  /// In en, this message translates to:
  /// **'I couldn\'t find @{handle} in this group. Double-check the handle and try again.'**
  String slashMemberNotFoundMessage(String handle);

  /// No description provided for @slashMemberNotFoundTitle.
  ///
  /// In en, this message translates to:
  /// **'Member not found'**
  String get slashMemberNotFoundTitle;

  /// No description provided for @slashMissingTargetMessage.
  ///
  /// In en, this message translates to:
  /// **'Add a @handle after the command. For example, /kick @alice or /mute @alice 1h spamming.'**
  String get slashMissingTargetMessage;

  /// No description provided for @slashMissingTargetTitle.
  ///
  /// In en, this message translates to:
  /// **'Tell me who'**
  String get slashMissingTargetTitle;

  /// No description provided for @slashModsOnlyTitle.
  ///
  /// In en, this message translates to:
  /// **'Mods only'**
  String get slashModsOnlyTitle;

  /// No description provided for @slashMutedMessage.
  ///
  /// In en, this message translates to:
  /// **'They\'re silenced in chat for {duration}. They\'ll still see messages but can\'t post until the mute lifts. Use /unmute @{handle} to lift it early.'**
  String slashMutedMessage(String duration, String handle);

  /// No description provided for @slashMutedTitle.
  ///
  /// In en, this message translates to:
  /// **'@{handle} muted'**
  String slashMutedTitle(String handle);

  /// No description provided for @slashMuteModsOnly.
  ///
  /// In en, this message translates to:
  /// **'Only admins and mods can mute members.'**
  String get slashMuteModsOnly;

  /// No description provided for @slashMuteOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t mute @{handle}'**
  String slashMuteOp(String handle);

  /// No description provided for @slashReasonActionBan.
  ///
  /// In en, this message translates to:
  /// **'Ban'**
  String get slashReasonActionBan;

  /// No description provided for @slashReasonActionKick.
  ///
  /// In en, this message translates to:
  /// **'Kick'**
  String get slashReasonActionKick;

  /// No description provided for @slashReasonActionMute.
  ///
  /// In en, this message translates to:
  /// **'Mute'**
  String get slashReasonActionMute;

  /// No description provided for @slashReasonConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm {action}'**
  String slashReasonConfirm(String action);

  /// No description provided for @slashReasonHint.
  ///
  /// In en, this message translates to:
  /// **'Reason (required)'**
  String get slashReasonHint;

  /// No description provided for @slashReasonRequiredError.
  ///
  /// In en, this message translates to:
  /// **'Reason is required for this action.'**
  String get slashReasonRequiredError;

  /// No description provided for @slashReasonSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A reason is recorded with the action so other staff can see the context later.'**
  String get slashReasonSubtitle;

  /// No description provided for @slashReasonTitle.
  ///
  /// In en, this message translates to:
  /// **'{action} @{handle}'**
  String slashReasonTitle(String action, String handle);

  /// No description provided for @slashRulesHeader.
  ///
  /// In en, this message translates to:
  /// **'Group rules'**
  String get slashRulesHeader;

  /// No description provided for @slashRulesNoneAdminMessage.
  ///
  /// In en, this message translates to:
  /// **'Open Group Settings -> Info and tap \"Add rule\" to write the first one. The rules show on the Details tab + drop into chat whenever someone runs /rules.'**
  String get slashRulesNoneAdminMessage;

  /// No description provided for @slashRulesNoneMemberMessage.
  ///
  /// In en, this message translates to:
  /// **'Ping an admin to set the group rules. Once they\'re written, /rules drops them into chat for everyone to see.'**
  String get slashRulesNoneMemberMessage;

  /// No description provided for @slashRulesNoneTitle.
  ///
  /// In en, this message translates to:
  /// **'No rules set yet'**
  String get slashRulesNoneTitle;

  /// No description provided for @slashRulesPostOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t post rules'**
  String get slashRulesPostOp;

  /// No description provided for @slashUnbanModsOnly.
  ///
  /// In en, this message translates to:
  /// **'Only admins and mods can unban members.'**
  String get slashUnbanModsOnly;

  /// No description provided for @slashUnbannedMessage.
  ///
  /// In en, this message translates to:
  /// **'They can rejoin the group again if they want to.'**
  String get slashUnbannedMessage;

  /// No description provided for @slashUnbannedTitle.
  ///
  /// In en, this message translates to:
  /// **'@{handle} is unbanned'**
  String slashUnbannedTitle(String handle);

  /// No description provided for @slashUnbanOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t unban @{handle}'**
  String slashUnbanOp(String handle);

  /// No description provided for @slashUnknownMessage.
  ///
  /// In en, this message translates to:
  /// **'\"/{verb}\" isn\'t a command I know. Type /help to see the full list.'**
  String slashUnknownMessage(String verb);

  /// No description provided for @slashUnknownTitle.
  ///
  /// In en, this message translates to:
  /// **'Unknown command'**
  String get slashUnknownTitle;

  /// No description provided for @slashUnmutedMessage.
  ///
  /// In en, this message translates to:
  /// **'They can post in chat again. The mute audit row stays in the moderation log.'**
  String get slashUnmutedMessage;

  /// No description provided for @slashUnmutedTitle.
  ///
  /// In en, this message translates to:
  /// **'@{handle} is unmuted'**
  String slashUnmutedTitle(String handle);

  /// No description provided for @slashUnmuteModsOnly.
  ///
  /// In en, this message translates to:
  /// **'Only admins and mods can unmute members.'**
  String get slashUnmuteModsOnly;

  /// No description provided for @slashUnmuteOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t unmute @{handle}'**
  String slashUnmuteOp(String handle);

  /// No description provided for @spoilerImageTapToReveal.
  ///
  /// In en, this message translates to:
  /// **'Spoiler · tap to reveal'**
  String get spoilerImageTapToReveal;

  /// No description provided for @spoilerToggleOff.
  ///
  /// In en, this message translates to:
  /// **'Mark as spoiler'**
  String get spoilerToggleOff;

  /// No description provided for @spoilerToggleOn.
  ///
  /// In en, this message translates to:
  /// **'Spoiler'**
  String get spoilerToggleOn;

  /// No description provided for @staffActionExtras1Day.
  ///
  /// In en, this message translates to:
  /// **'1 day'**
  String get staffActionExtras1Day;

  /// No description provided for @staffActionExtras30Days.
  ///
  /// In en, this message translates to:
  /// **'30 days'**
  String get staffActionExtras30Days;

  /// No description provided for @staffActionExtras7Days.
  ///
  /// In en, this message translates to:
  /// **'7 days'**
  String get staffActionExtras7Days;

  /// No description provided for @staffActionExtras90Days.
  ///
  /// In en, this message translates to:
  /// **'90 days'**
  String get staffActionExtras90Days;

  /// No description provided for @staffActionExtrasAdd30Days.
  ///
  /// In en, this message translates to:
  /// **'+ 30 days'**
  String get staffActionExtrasAdd30Days;

  /// No description provided for @staffActionExtrasAdd7Days.
  ///
  /// In en, this message translates to:
  /// **'+ 7 days'**
  String get staffActionExtrasAdd7Days;

  /// No description provided for @staffActionExtrasAdd90Days.
  ///
  /// In en, this message translates to:
  /// **'+ 90 days'**
  String get staffActionExtrasAdd90Days;

  /// No description provided for @staffActionExtrasAddDay.
  ///
  /// In en, this message translates to:
  /// **'+ 1 day'**
  String get staffActionExtrasAddDay;

  /// No description provided for @staffActionExtrasDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get staffActionExtrasDuration;

  /// No description provided for @staffActionExtrasErrApply.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t apply staff action'**
  String get staffActionExtrasErrApply;

  /// No description provided for @staffActionExtrasExtendCta.
  ///
  /// In en, this message translates to:
  /// **'Extend'**
  String get staffActionExtrasExtendCta;

  /// No description provided for @staffActionExtrasExtendNoteHint.
  ///
  /// In en, this message translates to:
  /// **'Why the extension was issued.'**
  String get staffActionExtrasExtendNoteHint;

  /// No description provided for @staffActionExtrasExtendTitle.
  ///
  /// In en, this message translates to:
  /// **'Extend suspension'**
  String get staffActionExtrasExtendTitle;

  /// No description provided for @staffActionExtrasInternalNote.
  ///
  /// In en, this message translates to:
  /// **'Internal note (staff only)'**
  String get staffActionExtrasInternalNote;

  /// No description provided for @staffActionExtrasKindFrozen.
  ///
  /// In en, this message translates to:
  /// **'Frozen'**
  String get staffActionExtrasKindFrozen;

  /// No description provided for @staffActionExtrasKindFrozenBlurb.
  ///
  /// In en, this message translates to:
  /// **'Members cannot read OR write. They see the suspension banner only.'**
  String get staffActionExtrasKindFrozenBlurb;

  /// No description provided for @staffActionExtrasKindViewOnly.
  ///
  /// In en, this message translates to:
  /// **'View-only'**
  String get staffActionExtrasKindViewOnly;

  /// No description provided for @staffActionExtrasKindViewOnlyBlurb.
  ///
  /// In en, this message translates to:
  /// **'Members can read but cannot post / comment / message / react.'**
  String get staffActionExtrasKindViewOnlyBlurb;

  /// No description provided for @staffActionExtrasLiftCta.
  ///
  /// In en, this message translates to:
  /// **'Lift'**
  String get staffActionExtrasLiftCta;

  /// No description provided for @staffActionExtrasLiftGroupTitle.
  ///
  /// In en, this message translates to:
  /// **'Lift suspension on {group}'**
  String staffActionExtrasLiftGroupTitle(String group);

  /// No description provided for @staffActionExtrasLiftInternalHint.
  ///
  /// In en, this message translates to:
  /// **'Optional context for other moderators.'**
  String get staffActionExtrasLiftInternalHint;

  /// No description provided for @staffActionExtrasMemberFacingHint.
  ///
  /// In en, this message translates to:
  /// **'Shown to every group member as the suspension reason.'**
  String get staffActionExtrasMemberFacingHint;

  /// No description provided for @staffActionExtrasMemberFacingNote.
  ///
  /// In en, this message translates to:
  /// **'Member-facing note'**
  String get staffActionExtrasMemberFacingNote;

  /// No description provided for @staffActionExtrasMemberNoteRequired.
  ///
  /// In en, this message translates to:
  /// **'Member-facing note is required.'**
  String get staffActionExtrasMemberNoteRequired;

  /// No description provided for @staffActionExtrasNewDuration.
  ///
  /// In en, this message translates to:
  /// **'New duration (added to current)'**
  String get staffActionExtrasNewDuration;

  /// No description provided for @staffActionExtrasPermanent.
  ///
  /// In en, this message translates to:
  /// **'Permanent'**
  String get staffActionExtrasPermanent;

  /// No description provided for @staffActionExtrasResolutionNote.
  ///
  /// In en, this message translates to:
  /// **'Resolution note (sent to user)'**
  String get staffActionExtrasResolutionNote;

  /// No description provided for @staffActionExtrasResolveBody.
  ///
  /// In en, this message translates to:
  /// **'Closes the conversation. The user will see your resolution note as a final staff message; this does NOT lift / restore the underlying action. Do that separately.'**
  String get staffActionExtrasResolveBody;

  /// No description provided for @staffActionExtrasResolveCta.
  ///
  /// In en, this message translates to:
  /// **'Resolve'**
  String get staffActionExtrasResolveCta;

  /// No description provided for @staffActionExtrasResolveNoteHint.
  ///
  /// In en, this message translates to:
  /// **'Optional final message to the user.'**
  String get staffActionExtrasResolveNoteHint;

  /// No description provided for @staffActionExtrasResolveTitle.
  ///
  /// In en, this message translates to:
  /// **'Resolve ticket'**
  String get staffActionExtrasResolveTitle;

  /// No description provided for @staffActionExtrasSuspendGroupCta.
  ///
  /// In en, this message translates to:
  /// **'Suspend group'**
  String get staffActionExtrasSuspendGroupCta;

  /// No description provided for @staffActionExtrasSuspendGroupTitle.
  ///
  /// In en, this message translates to:
  /// **'Suspend {group}'**
  String staffActionExtrasSuspendGroupTitle(String group);

  /// No description provided for @staffActionExtrasSuspendInternalHint.
  ///
  /// In en, this message translates to:
  /// **'What you want other moderators to know.'**
  String get staffActionExtrasSuspendInternalHint;

  /// No description provided for @staffActionExtrasSuspensionKind.
  ///
  /// In en, this message translates to:
  /// **'Suspension kind'**
  String get staffActionExtrasSuspensionKind;

  /// No description provided for @staffInboxEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'No open tickets need staff attention right now.'**
  String get staffInboxEmptyBody;

  /// No description provided for @staffInboxEmptyFilteredBody.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Switch the filter to \"All\" to see the 1 ticket hidden by this filter.} other{Switch the filter to \"All\" to see the {count} tickets hidden by this filter.}}'**
  String staffInboxEmptyFilteredBody(int count);

  /// No description provided for @staffInboxEmptyFilteredTitle.
  ///
  /// In en, this message translates to:
  /// **'No {filter} tickets in the queue.'**
  String staffInboxEmptyFilteredTitle(String filter);

  /// No description provided for @staffInboxEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'Inbox is empty.'**
  String get staffInboxEmptyTitle;

  /// No description provided for @staffInboxLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String staffInboxLoadError(String error);

  /// No description provided for @staffInboxNoPermBody.
  ///
  /// In en, this message translates to:
  /// **'You need at least one support permission (triage_reports, warn_users, suspend_users, moderate_content) to view the inbox.'**
  String get staffInboxNoPermBody;

  /// No description provided for @staffInboxNoPermTitle.
  ///
  /// In en, this message translates to:
  /// **'Staff only'**
  String get staffInboxNoPermTitle;

  /// No description provided for @staffInboxReportsEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'New reports filed against feed posts, comments, users, and DMs land here. Group-scoped reports show up too once they\'ve been sitting for 48 hours without a group admin acting on them.'**
  String get staffInboxReportsEmptyBody;

  /// No description provided for @staffInboxReportsEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No open reports.'**
  String get staffInboxReportsEmptyTitle;

  /// No description provided for @staffInboxTabReports.
  ///
  /// In en, this message translates to:
  /// **'Reports'**
  String get staffInboxTabReports;

  /// No description provided for @staffInboxTabTickets.
  ///
  /// In en, this message translates to:
  /// **'Tickets'**
  String get staffInboxTabTickets;

  /// No description provided for @staffInboxTitle.
  ///
  /// In en, this message translates to:
  /// **'Staff Inbox'**
  String get staffInboxTitle;

  /// No description provided for @supportTicketKindAppeal.
  ///
  /// In en, this message translates to:
  /// **'Appeal'**
  String get supportTicketKindAppeal;

  /// No description provided for @supportTicketKindGroupAppeal.
  ///
  /// In en, this message translates to:
  /// **'Group appeal'**
  String get supportTicketKindGroupAppeal;

  /// No description provided for @supportTicketKindSupport.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get supportTicketKindSupport;

  /// No description provided for @supportTicketStatusActionNeeded.
  ///
  /// In en, this message translates to:
  /// **'Action needed'**
  String get supportTicketStatusActionNeeded;

  /// No description provided for @supportTicketStatusClosed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get supportTicketStatusClosed;

  /// No description provided for @supportTicketStatusResolved.
  ///
  /// In en, this message translates to:
  /// **'Resolved'**
  String get supportTicketStatusResolved;

  /// No description provided for @supportTicketStatusWaiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting on Luney'**
  String get supportTicketStatusWaiting;

  /// No description provided for @suspensionErrorAccountSuspended.
  ///
  /// In en, this message translates to:
  /// **'Your account is suspended. See Settings → Support → Account violations for details.'**
  String get suspensionErrorAccountSuspended;

  /// No description provided for @suspensionErrorGroupSuspended.
  ///
  /// In en, this message translates to:
  /// **'This group is suspended by Luney moderation. Read-only mode.'**
  String get suspensionErrorGroupSuspended;

  /// No description provided for @suspensionKindAppWide.
  ///
  /// In en, this message translates to:
  /// **'App-wide lockout'**
  String get suspensionKindAppWide;

  /// No description provided for @suspensionKindViewOnly.
  ///
  /// In en, this message translates to:
  /// **'View-only'**
  String get suspensionKindViewOnly;

  /// No description provided for @themeNameMidnight.
  ///
  /// In en, this message translates to:
  /// **'Midnight'**
  String get themeNameMidnight;

  /// No description provided for @themeNameOcean.
  ///
  /// In en, this message translates to:
  /// **'Ocean'**
  String get themeNameOcean;

  /// No description provided for @themeNamePrism.
  ///
  /// In en, this message translates to:
  /// **'Prism'**
  String get themeNamePrism;

  /// No description provided for @themeNameSunrise.
  ///
  /// In en, this message translates to:
  /// **'Sunrise'**
  String get themeNameSunrise;

  /// No description provided for @ticketDetailActionContentRemoved.
  ///
  /// In en, this message translates to:
  /// **'Content removed'**
  String get ticketDetailActionContentRemoved;

  /// No description provided for @ticketDetailActionExtend.
  ///
  /// In en, this message translates to:
  /// **'Extend'**
  String get ticketDetailActionExtend;

  /// No description provided for @ticketDetailActionLift.
  ///
  /// In en, this message translates to:
  /// **'Lift'**
  String get ticketDetailActionLift;

  /// No description provided for @ticketDetailActionResolve.
  ///
  /// In en, this message translates to:
  /// **'Resolve'**
  String get ticketDetailActionResolve;

  /// No description provided for @ticketDetailActionRestore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get ticketDetailActionRestore;

  /// No description provided for @ticketDetailActionSuspension.
  ///
  /// In en, this message translates to:
  /// **'Suspension'**
  String get ticketDetailActionSuspension;

  /// No description provided for @ticketDetailActionWarning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get ticketDetailActionWarning;

  /// No description provided for @ticketDetailAttachImage.
  ///
  /// In en, this message translates to:
  /// **'Attach image'**
  String get ticketDetailAttachImage;

  /// No description provided for @ticketDetailCloseAction.
  ///
  /// In en, this message translates to:
  /// **'Close ticket'**
  String get ticketDetailCloseAction;

  /// No description provided for @ticketDetailCloseBody.
  ///
  /// In en, this message translates to:
  /// **'You won\'t be able to reply after this. Luney moderation can still update it for the record.'**
  String get ticketDetailCloseBody;

  /// No description provided for @ticketDetailClosed.
  ///
  /// In en, this message translates to:
  /// **'This ticket is closed.'**
  String get ticketDetailClosed;

  /// No description provided for @ticketDetailCloseTitle.
  ///
  /// In en, this message translates to:
  /// **'Close this ticket?'**
  String get ticketDetailCloseTitle;

  /// No description provided for @ticketDetailCopyLink.
  ///
  /// In en, this message translates to:
  /// **'Copy link'**
  String get ticketDetailCopyLink;

  /// No description provided for @ticketDetailErrClose.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t close ticket'**
  String get ticketDetailErrClose;

  /// No description provided for @ticketDetailErrReact.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t react: {error}'**
  String ticketDetailErrReact(String error);

  /// No description provided for @ticketDetailErrSendReply.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send reply'**
  String get ticketDetailErrSendReply;

  /// No description provided for @ticketDetailFromModeration.
  ///
  /// In en, this message translates to:
  /// **'From Luney moderation'**
  String get ticketDetailFromModeration;

  /// No description provided for @ticketDetailGroupFallback.
  ///
  /// In en, this message translates to:
  /// **'group'**
  String get ticketDetailGroupFallback;

  /// No description provided for @ticketDetailGroupSuspension.
  ///
  /// In en, this message translates to:
  /// **'Group suspension'**
  String get ticketDetailGroupSuspension;

  /// No description provided for @ticketDetailGroupSuspPermanent.
  ///
  /// In en, this message translates to:
  /// **' · {kind} · permanent'**
  String ticketDetailGroupSuspPermanent(String kind);

  /// No description provided for @ticketDetailGroupSuspUntil.
  ///
  /// In en, this message translates to:
  /// **' · {kind} · until {until}'**
  String ticketDetailGroupSuspUntil(String kind, String until);

  /// No description provided for @ticketDetailImageGone.
  ///
  /// In en, this message translates to:
  /// **'Image no longer available.'**
  String get ticketDetailImageGone;

  /// No description provided for @ticketDetailImageUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Image unavailable'**
  String get ticketDetailImageUnavailable;

  /// No description provided for @ticketDetailInternalNote.
  ///
  /// In en, this message translates to:
  /// **'INTERNAL NOTE (staff only)'**
  String get ticketDetailInternalNote;

  /// No description provided for @ticketDetailKindViewOnly.
  ///
  /// In en, this message translates to:
  /// **'View-only'**
  String get ticketDetailKindViewOnly;

  /// No description provided for @ticketDetailLinkCopied.
  ///
  /// In en, this message translates to:
  /// **'{label} link copied to clipboard.'**
  String ticketDetailLinkCopied(String label);

  /// No description provided for @ticketDetailLinkGeneric.
  ///
  /// In en, this message translates to:
  /// **'Ticket link'**
  String get ticketDetailLinkGeneric;

  /// No description provided for @ticketDetailLinkNumbered.
  ///
  /// In en, this message translates to:
  /// **'Ticket #{number}'**
  String ticketDetailLinkNumbered(String number);

  /// No description provided for @ticketDetailLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String ticketDetailLoadError(String error);

  /// No description provided for @ticketDetailModerationTeam.
  ///
  /// In en, this message translates to:
  /// **'Luney moderation team'**
  String get ticketDetailModerationTeam;

  /// No description provided for @ticketDetailOriginallyPosted.
  ///
  /// In en, this message translates to:
  /// **'Originally posted {when}'**
  String ticketDetailOriginallyPosted(String when);

  /// No description provided for @ticketDetailRemovedContent.
  ///
  /// In en, this message translates to:
  /// **'Removed content'**
  String get ticketDetailRemovedContent;

  /// No description provided for @ticketDetailReplyHint.
  ///
  /// In en, this message translates to:
  /// **'Reply to Luney moderation…'**
  String get ticketDetailReplyHint;

  /// No description provided for @ticketDetailSnapshotPurged.
  ///
  /// In en, this message translates to:
  /// **'Content already purged. Snapshot unavailable.'**
  String get ticketDetailSnapshotPurged;

  /// No description provided for @ticketDetailSomeone.
  ///
  /// In en, this message translates to:
  /// **'Someone'**
  String get ticketDetailSomeone;

  /// No description provided for @ticketDetailSuspPermanent.
  ///
  /// In en, this message translates to:
  /// **'{kind} · permanent'**
  String ticketDetailSuspPermanent(String kind);

  /// No description provided for @ticketDetailSuspUntil.
  ///
  /// In en, this message translates to:
  /// **'{kind} · until {until}'**
  String ticketDetailSuspUntil(String kind, String until);

  /// No description provided for @ticketDetailTitleFallback.
  ///
  /// In en, this message translates to:
  /// **'Ticket'**
  String get ticketDetailTitleFallback;

  /// No description provided for @ticketDetailYou.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get ticketDetailYou;

  /// No description provided for @ticketEmbedCardLabel.
  ///
  /// In en, this message translates to:
  /// **'Ticket · {kind}'**
  String ticketEmbedCardLabel(String kind);

  /// No description provided for @ticketEmbedCardLabelNumbered.
  ///
  /// In en, this message translates to:
  /// **'Ticket #{number} · {kind}'**
  String ticketEmbedCardLabelNumbered(int number, String kind);

  /// No description provided for @ticketsEmptyBody.
  ///
  /// In en, this message translates to:
  /// **'Open one with the + above, or appeals on moderation actions will show up here automatically.'**
  String get ticketsEmptyBody;

  /// No description provided for @ticketsEmptyFilteredBody.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Switch the filter to \"All\" to see your 1 other ticket.} other{Switch the filter to \"All\" to see your {count} other tickets.}}'**
  String ticketsEmptyFilteredBody(int count);

  /// No description provided for @ticketsEmptyFilteredTitle.
  ///
  /// In en, this message translates to:
  /// **'No {filter} tickets.'**
  String ticketsEmptyFilteredTitle(String filter);

  /// No description provided for @ticketsEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'No tickets yet.'**
  String get ticketsEmptyTitle;

  /// No description provided for @ticketsLoadError.
  ///
  /// In en, this message translates to:
  /// **'Could not load: {error}'**
  String ticketsLoadError(String error);

  /// No description provided for @ticketsNewTooltip.
  ///
  /// In en, this message translates to:
  /// **'New ticket'**
  String get ticketsNewTooltip;

  /// No description provided for @ticketStatusFilterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get ticketStatusFilterAll;

  /// No description provided for @ticketStatusFilterClosed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get ticketStatusFilterClosed;

  /// No description provided for @ticketStatusFilterOpen.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get ticketStatusFilterOpen;

  /// No description provided for @ticketsTitle.
  ///
  /// In en, this message translates to:
  /// **'Support Tickets'**
  String get ticketsTitle;

  /// No description provided for @ticketsUpdated.
  ///
  /// In en, this message translates to:
  /// **'updated {time}'**
  String ticketsUpdated(String time);

  /// No description provided for @trustedCircleAccept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get trustedCircleAccept;

  /// No description provided for @trustedCircleAcceptSemantic.
  ///
  /// In en, this message translates to:
  /// **'Accept circle invite'**
  String get trustedCircleAcceptSemantic;

  /// No description provided for @trustedCircleAddContact.
  ///
  /// In en, this message translates to:
  /// **'Add a trusted contact'**
  String get trustedCircleAddContact;

  /// No description provided for @trustedCircleAllFriendsAdded.
  ///
  /// In en, this message translates to:
  /// **'Every friend is already in your Circle (or has a pending request).'**
  String get trustedCircleAllFriendsAdded;

  /// No description provided for @trustedCircleDecline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get trustedCircleDecline;

  /// No description provided for @trustedCircleDeclineSemantic.
  ///
  /// In en, this message translates to:
  /// **'Decline circle invite'**
  String get trustedCircleDeclineSemantic;

  /// No description provided for @trustedCircleEmptyContactFor.
  ///
  /// In en, this message translates to:
  /// **'No one has you in their Circle yet. When friends add you and you accept, you\'ll see them here.'**
  String get trustedCircleEmptyContactFor;

  /// No description provided for @trustedCircleEmptyRequests.
  ///
  /// In en, this message translates to:
  /// **'No pending requests. People who add you will show up here so you can accept or decline.'**
  String get trustedCircleEmptyRequests;

  /// No description provided for @trustedCircleEmptyYours.
  ///
  /// In en, this message translates to:
  /// **'No trusted contacts yet. Add up to 5 friends. They\'ll be alerted if you activate Panic Mode and don\'t check back in within 5 minutes.'**
  String get trustedCircleEmptyYours;

  /// No description provided for @trustedCircleFull.
  ///
  /// In en, this message translates to:
  /// **'Circle full (5/5). Revoke someone above to add a new contact.'**
  String get trustedCircleFull;

  /// No description provided for @trustedCircleHowItWorks.
  ///
  /// In en, this message translates to:
  /// **'How it works'**
  String get trustedCircleHowItWorks;

  /// No description provided for @trustedCircleHowItWorksBody.
  ///
  /// In en, this message translates to:
  /// **'Pick up to 5 friends. They\'re alerted if you activate Panic Mode and don\'t exit within 5 minutes, so someone knows to check on you. They have to accept first; either side can leave anytime.'**
  String get trustedCircleHowItWorksBody;

  /// No description provided for @trustedCircleLeave.
  ///
  /// In en, this message translates to:
  /// **'Leave'**
  String get trustedCircleLeave;

  /// No description provided for @trustedCircleNoFriends.
  ///
  /// In en, this message translates to:
  /// **'You need to add some Luney friends first. Trusted Circle is friends-only.'**
  String get trustedCircleNoFriends;

  /// No description provided for @trustedCirclePending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get trustedCirclePending;

  /// No description provided for @trustedCirclePickFriend.
  ///
  /// In en, this message translates to:
  /// **'Pick a friend'**
  String get trustedCirclePickFriend;

  /// No description provided for @trustedCircleRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get trustedCircleRemove;

  /// No description provided for @trustedCircleRequestSentBody.
  ///
  /// In en, this message translates to:
  /// **'They\'ll get a push asking to join your Trusted Circle. Once they accept, they\'ll appear here and be on standby for Panic Mode + Date Check-in alerts.'**
  String get trustedCircleRequestSentBody;

  /// No description provided for @trustedCircleRequestSentRubric.
  ///
  /// In en, this message translates to:
  /// **'REQUEST SENT'**
  String get trustedCircleRequestSentRubric;

  /// No description provided for @trustedCircleRequestSentTitle.
  ///
  /// In en, this message translates to:
  /// **'Trusted Circle invite sent'**
  String get trustedCircleRequestSentTitle;

  /// No description provided for @trustedCircleSectionContactFor.
  ///
  /// In en, this message translates to:
  /// **'YOU\'RE A CONTACT FOR'**
  String get trustedCircleSectionContactFor;

  /// No description provided for @trustedCircleSectionRequests.
  ///
  /// In en, this message translates to:
  /// **'REQUESTS WAITING ON YOU'**
  String get trustedCircleSectionRequests;

  /// No description provided for @trustedCircleSectionYours.
  ///
  /// In en, this message translates to:
  /// **'YOUR CIRCLE'**
  String get trustedCircleSectionYours;

  /// No description provided for @trustedCircleSendRequestError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send request'**
  String get trustedCircleSendRequestError;

  /// No description provided for @trustedCircleSlotsLeft.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 left} other{{count} left}}'**
  String trustedCircleSlotsLeft(int count);

  /// No description provided for @trustedCircleTitle.
  ///
  /// In en, this message translates to:
  /// **'Trusted Circle'**
  String get trustedCircleTitle;

  /// No description provided for @trustedCircleWantsYou.
  ///
  /// In en, this message translates to:
  /// **'@{handle} wants you in their Circle'**
  String trustedCircleWantsYou(String handle);

  /// No description provided for @typingIndicatorMany.
  ///
  /// In en, this message translates to:
  /// **'Several people are typing…'**
  String get typingIndicatorMany;

  /// No description provided for @typingIndicatorOne.
  ///
  /// In en, this message translates to:
  /// **'{name} is typing…'**
  String typingIndicatorOne(String name);

  /// No description provided for @typingIndicatorTwo.
  ///
  /// In en, this message translates to:
  /// **'{name1} and {name2} are typing…'**
  String typingIndicatorTwo(String name1, String name2);

  /// No description provided for @vipBadge.
  ///
  /// In en, this message translates to:
  /// **'VIP'**
  String get vipBadge;

  /// No description provided for @vipFinePrintAutoRenew.
  ///
  /// In en, this message translates to:
  /// **'Subscriptions auto-renew unless cancelled at least 24 hours before the end of the current period. Manage or cancel any time in your {store} subscription settings.'**
  String vipFinePrintAutoRenew(String store);

  /// No description provided for @vipFinePrintPayment.
  ///
  /// In en, this message translates to:
  /// **'Payment is charged to your {store} account. Free trial (when offered) ends 24 hours before renewal unless cancelled.'**
  String vipFinePrintPayment(String store);

  /// No description provided for @vipFreeTrial.
  ///
  /// In en, this message translates to:
  /// **'Free trial'**
  String get vipFreeTrial;

  /// No description provided for @vipHeaderSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Unlock animated avatars, larger uploads, unlimited GIF favourites, custom display-name styles, and more.'**
  String get vipHeaderSubtitle;

  /// No description provided for @vipHeaderSubtitleActive.
  ///
  /// In en, this message translates to:
  /// **'Thank you for supporting Luney.'**
  String get vipHeaderSubtitleActive;

  /// No description provided for @vipHeaderTitleActive.
  ///
  /// In en, this message translates to:
  /// **'You\'re a VIP ✨'**
  String get vipHeaderTitleActive;

  /// No description provided for @vipLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load your VIP status. Pull to retry.'**
  String get vipLoadError;

  /// No description provided for @vipManageAppStore.
  ///
  /// In en, this message translates to:
  /// **'Manage in App Store'**
  String get vipManageAppStore;

  /// No description provided for @vipManageError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open subscription management'**
  String get vipManageError;

  /// No description provided for @vipManagePlayStore.
  ///
  /// In en, this message translates to:
  /// **'Manage in Play Store'**
  String get vipManagePlayStore;

  /// No description provided for @vipNeverExpires.
  ///
  /// In en, this message translates to:
  /// **'Never expires.'**
  String get vipNeverExpires;

  /// No description provided for @vipNoActiveBody.
  ///
  /// In en, this message translates to:
  /// **'We didn\'t find a current VIP subscription on this Apple ID / Google account. If you bought VIP on a different account, sign in to the store with that one and tap Restore again.'**
  String get vipNoActiveBody;

  /// No description provided for @vipNoActiveRubric.
  ///
  /// In en, this message translates to:
  /// **'NO ACTIVE VIP'**
  String get vipNoActiveRubric;

  /// No description provided for @vipNoActiveTitle.
  ///
  /// In en, this message translates to:
  /// **'No active VIP found'**
  String get vipNoActiveTitle;

  /// No description provided for @vipNoPlans.
  ///
  /// In en, this message translates to:
  /// **'No VIP plans are available right now. Try again later.'**
  String get vipNoPlans;

  /// No description provided for @vipOfferingsErrorBody.
  ///
  /// In en, this message translates to:
  /// **'Check your network connection and try again.'**
  String get vipOfferingsErrorBody;

  /// No description provided for @vipOfferingsErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load subscription options.'**
  String get vipOfferingsErrorTitle;

  /// No description provided for @vipPerk1Body.
  ///
  /// In en, this message translates to:
  /// **'GIFs animate in profile + chat instead of flattening to a still.'**
  String get vipPerk1Body;

  /// No description provided for @vipPerk1Title.
  ///
  /// In en, this message translates to:
  /// **'Animated avatars + banners'**
  String get vipPerk1Title;

  /// No description provided for @vipPerk2Body.
  ///
  /// In en, this message translates to:
  /// **'Up to 50 MB instead of 15 MB across photos, music, attachments.'**
  String get vipPerk2Body;

  /// No description provided for @vipPerk2Title.
  ///
  /// In en, this message translates to:
  /// **'Larger uploads'**
  String get vipPerk2Title;

  /// No description provided for @vipPerk3Body.
  ///
  /// In en, this message translates to:
  /// **'Free caps at 10 saved GIFs. VIP is uncapped.'**
  String get vipPerk3Body;

  /// No description provided for @vipPerk3Title.
  ///
  /// In en, this message translates to:
  /// **'Unlimited GIF favourites'**
  String get vipPerk3Title;

  /// No description provided for @vipPerk4Body.
  ///
  /// In en, this message translates to:
  /// **'Custom font, colour, and effects (gradient, neon, drop shadow).'**
  String get vipPerk4Body;

  /// No description provided for @vipPerk4Title.
  ///
  /// In en, this message translates to:
  /// **'Display name styles'**
  String get vipPerk4Title;

  /// No description provided for @vipPerk5Body.
  ///
  /// In en, this message translates to:
  /// **'Different identity per group, Discord-style.'**
  String get vipPerk5Body;

  /// No description provided for @vipPerk5Title.
  ///
  /// In en, this message translates to:
  /// **'Per-group nicknames + avatars'**
  String get vipPerk5Title;

  /// No description provided for @vipPerk6Body.
  ///
  /// In en, this message translates to:
  /// **'A separate header banner for each group you are in.'**
  String get vipPerk6Body;

  /// No description provided for @vipPerk6Title.
  ///
  /// In en, this message translates to:
  /// **'Per-group banners'**
  String get vipPerk6Title;

  /// No description provided for @vipPerk7Body.
  ///
  /// In en, this message translates to:
  /// **'Use any of your groups\' emojis in any other group you\'re in.'**
  String get vipPerk7Body;

  /// No description provided for @vipPerk7Title.
  ///
  /// In en, this message translates to:
  /// **'Cross-group custom emojis'**
  String get vipPerk7Title;

  /// No description provided for @vipPerksHeader.
  ///
  /// In en, this message translates to:
  /// **'WHAT VIP UNLOCKS'**
  String get vipPerksHeader;

  /// No description provided for @vipPerMonth.
  ///
  /// In en, this message translates to:
  /// **'/ month'**
  String get vipPerMonth;

  /// No description provided for @vipPerYear.
  ///
  /// In en, this message translates to:
  /// **'/ year'**
  String get vipPerYear;

  /// No description provided for @vipPlanAnnual.
  ///
  /// In en, this message translates to:
  /// **'Annual'**
  String get vipPlanAnnual;

  /// No description provided for @vipPlanMonthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get vipPlanMonthly;

  /// No description provided for @vipPlatformOnly.
  ///
  /// In en, this message translates to:
  /// **'VIP can only be purchased from the iOS or Android app.'**
  String get vipPlatformOnly;

  /// Price + billing period, e.g. "$4.99 / month". price is the store-localized price string.
  ///
  /// In en, this message translates to:
  /// **'{price} {period}'**
  String vipPriceLine(String price, String period);

  /// No description provided for @vipPurchaseError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t complete the purchase'**
  String get vipPurchaseError;

  /// No description provided for @vipPurchaseUnavailableBody.
  ///
  /// In en, this message translates to:
  /// **'The store didn\'t respond in time. Try again in a moment; if it keeps happening, restart the app and head back to Settings -> VIP.'**
  String get vipPurchaseUnavailableBody;

  /// No description provided for @vipPurchaseUnavailableRubric.
  ///
  /// In en, this message translates to:
  /// **'VIP UNAVAILABLE'**
  String get vipPurchaseUnavailableRubric;

  /// No description provided for @vipPurchaseUnavailableTitle.
  ///
  /// In en, this message translates to:
  /// **'Purchase is unavailable right now'**
  String get vipPurchaseUnavailableTitle;

  /// No description provided for @vipRestore.
  ///
  /// In en, this message translates to:
  /// **'Restore Purchases'**
  String get vipRestore;

  /// No description provided for @vipRestoredBody.
  ///
  /// In en, this message translates to:
  /// **'Your perks reappear as soon as the store confirms with us. Welcome back.'**
  String get vipRestoredBody;

  /// No description provided for @vipRestoredRubric.
  ///
  /// In en, this message translates to:
  /// **'VIP RESTORED'**
  String get vipRestoredRubric;

  /// No description provided for @vipRestoredTitle.
  ///
  /// In en, this message translates to:
  /// **'VIP restored 👑'**
  String get vipRestoredTitle;

  /// No description provided for @vipRestoreError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t restore purchases'**
  String get vipRestoreError;

  /// No description provided for @vipRestoreUnavailableBody.
  ///
  /// In en, this message translates to:
  /// **'The store didn\'t respond in time. Try again in a moment; if it keeps happening, restart the app and try from Settings -> VIP again.'**
  String get vipRestoreUnavailableBody;

  /// No description provided for @vipRestoreUnavailableRubric.
  ///
  /// In en, this message translates to:
  /// **'RESTORE UNAVAILABLE'**
  String get vipRestoreUnavailableRubric;

  /// No description provided for @vipRestoreUnavailableTitle.
  ///
  /// In en, this message translates to:
  /// **'Restore is unavailable right now'**
  String get vipRestoreUnavailableTitle;

  /// No description provided for @vipStatusCancelledEnds.
  ///
  /// In en, this message translates to:
  /// **'Cancelled. Ends on {date}.'**
  String vipStatusCancelledEnds(String date);

  /// No description provided for @vipStatusGift.
  ///
  /// In en, this message translates to:
  /// **'VIP gift'**
  String get vipStatusGift;

  /// No description provided for @vipStatusGrantedByLuney.
  ///
  /// In en, this message translates to:
  /// **'Granted by Luney'**
  String get vipStatusGrantedByLuney;

  /// No description provided for @vipStatusRenews.
  ///
  /// In en, this message translates to:
  /// **'Renews on {date}.'**
  String vipStatusRenews(String date);

  /// VIP source line; store = the store name (e.g. Apple, Google Play).
  ///
  /// In en, this message translates to:
  /// **'Subscribed via {store}'**
  String vipStatusSubscribedVia(String store);

  /// No description provided for @vipStatusUntil.
  ///
  /// In en, this message translates to:
  /// **'Until {date}.'**
  String vipStatusUntil(String date);

  /// No description provided for @vipTempUnavailableTitle.
  ///
  /// In en, this message translates to:
  /// **'VIP purchase is temporarily unavailable.'**
  String get vipTempUnavailableTitle;

  /// No description provided for @vipTitle.
  ///
  /// In en, this message translates to:
  /// **'Luney VIP'**
  String get vipTitle;

  /// No description provided for @vipTryLater.
  ///
  /// In en, this message translates to:
  /// **'Please try again later.'**
  String get vipTryLater;

  /// No description provided for @vipWelcomeBody.
  ///
  /// In en, this message translates to:
  /// **'Your perks unlock as soon as the store confirms with us (usually a few seconds). Animated avatars, larger uploads, unlimited GIF favourites, display-name styles, per-group identity, and cross-group custom emoji are all yours.'**
  String get vipWelcomeBody;

  /// No description provided for @vipWelcomeRubric.
  ///
  /// In en, this message translates to:
  /// **'WELCOME TO VIP'**
  String get vipWelcomeRubric;

  /// No description provided for @vipWelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to VIP 👑'**
  String get vipWelcomeTitle;

  /// No description provided for @visibilityFoFDesc.
  ///
  /// In en, this message translates to:
  /// **'Friends, plus theirs'**
  String get visibilityFoFDesc;

  /// No description provided for @visibilityFoFLabel.
  ///
  /// In en, this message translates to:
  /// **'Friends of friends'**
  String get visibilityFoFLabel;

  /// No description provided for @visibilityFriendsDesc.
  ///
  /// In en, this message translates to:
  /// **'Only your friends'**
  String get visibilityFriendsDesc;

  /// No description provided for @visibilityFriendsLabel.
  ///
  /// In en, this message translates to:
  /// **'Friends'**
  String get visibilityFriendsLabel;

  /// No description provided for @visibilityInnerCircleDesc.
  ///
  /// In en, this message translates to:
  /// **'A close subset of your friends'**
  String get visibilityInnerCircleDesc;

  /// No description provided for @visibilityInnerCircleLabel.
  ///
  /// In en, this message translates to:
  /// **'Inner circle'**
  String get visibilityInnerCircleLabel;

  /// No description provided for @visibilityPickerTitle.
  ///
  /// In en, this message translates to:
  /// **'Who can see this?'**
  String get visibilityPickerTitle;

  /// No description provided for @visibilityPrivateDesc.
  ///
  /// In en, this message translates to:
  /// **'Just you can see this'**
  String get visibilityPrivateDesc;

  /// No description provided for @visibilityPrivateLabel.
  ///
  /// In en, this message translates to:
  /// **'Only me'**
  String get visibilityPrivateLabel;

  /// No description provided for @visibilityPublicDesc.
  ///
  /// In en, this message translates to:
  /// **'Anyone on Luney'**
  String get visibilityPublicDesc;

  /// No description provided for @visibilityPublicLabel.
  ///
  /// In en, this message translates to:
  /// **'Public'**
  String get visibilityPublicLabel;

  /// No description provided for @weeklyPromptCardErrorLabel.
  ///
  /// In en, this message translates to:
  /// **'Weekly Prompt'**
  String get weeklyPromptCardErrorLabel;

  /// No description provided for @weeklyPromptCardErrShare.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t share your response'**
  String get weeklyPromptCardErrShare;

  /// No description provided for @weeklyPromptCardHeader.
  ///
  /// In en, this message translates to:
  /// **'WEEKLY PROMPT · {day}'**
  String weeklyPromptCardHeader(String day);

  /// No description provided for @weeklyPromptCardHideResponses.
  ///
  /// In en, this message translates to:
  /// **'Hide responses'**
  String get weeklyPromptCardHideResponses;

  /// No description provided for @weeklyPromptCardHint.
  ///
  /// In en, this message translates to:
  /// **'your thing…'**
  String get weeklyPromptCardHint;

  /// No description provided for @weeklyPromptCardLoadError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load responses.'**
  String get weeklyPromptCardLoadError;

  /// No description provided for @weeklyPromptCardNoReplies.
  ///
  /// In en, this message translates to:
  /// **'No replies yet. Be the first.'**
  String get weeklyPromptCardNoReplies;

  /// No description provided for @weeklyPromptCardReplyCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 reply} other{{comma} replies}}'**
  String weeklyPromptCardReplyCount(int count, String comma);

  /// No description provided for @weeklyPromptCardReportTarget.
  ///
  /// In en, this message translates to:
  /// **'this response'**
  String get weeklyPromptCardReportTarget;

  /// No description provided for @weeklyPromptCardSeeResponses.
  ///
  /// In en, this message translates to:
  /// **'See responses'**
  String get weeklyPromptCardSeeResponses;

  /// No description provided for @weeklyPromptCardThanks.
  ///
  /// In en, this message translates to:
  /// **'Thanks for sharing. Your reply is in the gallery.'**
  String get weeklyPromptCardThanks;

  /// No description provided for @weeklyPromptThreadAddEmoji.
  ///
  /// In en, this message translates to:
  /// **'Add emoji'**
  String get weeklyPromptThreadAddEmoji;

  /// No description provided for @weeklyPromptThreadAddReactionA11y.
  ///
  /// In en, this message translates to:
  /// **'Add a reaction'**
  String get weeklyPromptThreadAddReactionA11y;

  /// No description provided for @weeklyPromptThreadCancelReplyA11y.
  ///
  /// In en, this message translates to:
  /// **'Cancel reply'**
  String get weeklyPromptThreadCancelReplyA11y;

  /// No description provided for @weeklyPromptThreadCap.
  ///
  /// In en, this message translates to:
  /// **'Showing the first 400 replies.'**
  String get weeklyPromptThreadCap;

  /// No description provided for @weeklyPromptThreadComposeChild.
  ///
  /// In en, this message translates to:
  /// **'Write a reply…'**
  String get weeklyPromptThreadComposeChild;

  /// No description provided for @weeklyPromptThreadComposeRoot.
  ///
  /// In en, this message translates to:
  /// **'Reply to this response…'**
  String get weeklyPromptThreadComposeRoot;

  /// No description provided for @weeklyPromptThreadDeleteBody.
  ///
  /// In en, this message translates to:
  /// **'This removes your reply from the thread. You can\'t undo this.'**
  String get weeklyPromptThreadDeleteBody;

  /// No description provided for @weeklyPromptThreadDeleteErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t delete reply'**
  String get weeklyPromptThreadDeleteErrorOp;

  /// No description provided for @weeklyPromptThreadDeleteMyReplyA11y.
  ///
  /// In en, this message translates to:
  /// **'Delete my reply'**
  String get weeklyPromptThreadDeleteMyReplyA11y;

  /// No description provided for @weeklyPromptThreadDeleteTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete reply?'**
  String get weeklyPromptThreadDeleteTitle;

  /// No description provided for @weeklyPromptThreadGoBack.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get weeklyPromptThreadGoBack;

  /// No description provided for @weeklyPromptThreadNoReplies.
  ///
  /// In en, this message translates to:
  /// **'No replies yet, be the first.'**
  String get weeklyPromptThreadNoReplies;

  /// No description provided for @weeklyPromptThreadReactionErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t update your reaction'**
  String get weeklyPromptThreadReactionErrorOp;

  /// No description provided for @weeklyPromptThreadReplies.
  ///
  /// In en, this message translates to:
  /// **'REPLIES'**
  String get weeklyPromptThreadReplies;

  /// No description provided for @weeklyPromptThreadRepliesError.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load replies: {error}'**
  String weeklyPromptThreadRepliesError(String error);

  /// No description provided for @weeklyPromptThreadReply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get weeklyPromptThreadReply;

  /// No description provided for @weeklyPromptThreadReplyErrorOp.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t post your reply'**
  String get weeklyPromptThreadReplyErrorOp;

  /// No description provided for @weeklyPromptThreadReplyingTo.
  ///
  /// In en, this message translates to:
  /// **'Replying to {name}'**
  String weeklyPromptThreadReplyingTo(String name);

  /// No description provided for @weeklyPromptThreadReportLabel.
  ///
  /// In en, this message translates to:
  /// **'this reply'**
  String get weeklyPromptThreadReportLabel;

  /// No description provided for @weeklyPromptThreadSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get weeklyPromptThreadSend;

  /// No description provided for @weeklyPromptThreadSendA11y.
  ///
  /// In en, this message translates to:
  /// **'Send reply'**
  String get weeklyPromptThreadSendA11y;

  /// No description provided for @weeklyPromptThreadShowMore.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Show 1 more reply} other{Show {count} more replies}}'**
  String weeklyPromptThreadShowMore(int count);

  /// No description provided for @weeklyPromptThreadUnavailableBody.
  ///
  /// In en, this message translates to:
  /// **'It may have been deleted, or its author is no longer visible.'**
  String get weeklyPromptThreadUnavailableBody;

  /// No description provided for @weeklyPromptThreadUnavailableTitle.
  ///
  /// In en, this message translates to:
  /// **'This response isn\'t available anymore.'**
  String get weeklyPromptThreadUnavailableTitle;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
