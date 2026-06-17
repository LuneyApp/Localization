// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get aboutChildSafety => 'Child Safety Standards';

  @override
  String aboutCommit(String hash) {
    return 'Commit $hash';
  }

  @override
  String get aboutDebugForceResyncDone =>
      'Session rotated and caches cleared. Lists will refetch as you open them.';

  @override
  String get aboutDebugForceResyncLabel => 'Force resync (rotate session)';

  @override
  String get aboutDebugResetFirstRunDone =>
      'Cleared. Kill the app from the OS app-switcher and relaunch, the Welcome sheet and What\'s New sheet will fire again on next cold start.';

  @override
  String get aboutDebugResetFirstRunLabel => 'Reset first-run sheets';

  @override
  String get aboutPrivacy => 'Privacy Policy';

  @override
  String get aboutRateApp => 'Rate Luney';

  @override
  String get aboutSectionRead => 'READ';

  @override
  String get aboutTerms => 'Terms of Service';

  @override
  String get aboutTitle => 'About';

  @override
  String aboutVersion(String version, String build) {
    return 'Version $version (build $build)';
  }

  @override
  String get aboutVersionUnavailable => 'Version info unavailable';

  @override
  String get aboutWhatsNew => 'What\'s New';

  @override
  String get accountHistoryAcknowledged => '(acknowledged)';

  @override
  String accountHistoryChipDays(int days) {
    return 'Last $days days';
  }

  @override
  String get accountHistoryChipYear => 'Last year';

  @override
  String get accountHistoryCrisisNoResources =>
      'A member of the safety team reached out.';

  @override
  String accountHistoryCrisisResources(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'We shared $count resources with you.',
      one: 'We shared 1 resource with you.',
    );
    return '$_temp0';
  }

  @override
  String get accountHistoryEmptyBody =>
      'We\'ll list any account actions Luney staff take on your account.';

  @override
  String get accountHistoryEmptyTitle => 'Nothing to show here.';

  @override
  String get accountHistoryKindContentRemoved => 'Content removed';

  @override
  String get accountHistoryKindContentRestored => 'Content restored';

  @override
  String get accountHistoryKindCrisisAlert => 'Safety outreach';

  @override
  String get accountHistoryKindSuspended => 'Account suspended';

  @override
  String get accountHistoryKindSuspensionLifted => 'Suspension lifted';

  @override
  String get accountHistoryKindUnknown => 'Account event';

  @override
  String get accountHistoryKindWarned => 'Warning issued';

  @override
  String get accountHistoryLoadError =>
      'Couldn\'t load your account activity. Pull to retry.';

  @override
  String get accountHistoryModTeam => 'Luney moderation team';

  @override
  String get accountHistoryNoDetails => 'No additional details provided.';

  @override
  String accountHistorySuspendedLifts(String date) {
    return 'Lifts $date.';
  }

  @override
  String get accountHistorySuspendedPermanent => 'Permanent until lifted.';

  @override
  String accountHistoryTarget(String target) {
    return 'Target: $target';
  }

  @override
  String get accountHistoryTitle => 'Account activity';

  @override
  String get accountHistoryViewResources => 'View resources';

  @override
  String accountHistoryWindowCopy(int days) {
    return 'The last $days days of moderation actions on your account.';
  }

  @override
  String get accountLockedExpired =>
      'Suspension expired. Restart the app to continue.';

  @override
  String get accountLockedLoadError => 'Could not load suspension details.';

  @override
  String get accountLockedNoDetails => 'No additional details provided.';

  @override
  String get accountLockedNoExpiration => 'No expiration set.';

  @override
  String get accountLockedOpenAppeal => 'Open appeal ticket';

  @override
  String get accountLockedRefresh => 'Refresh';

  @override
  String get accountLockedSignOut => 'Sign out';

  @override
  String get accountLockedSubtitle =>
      'Your account has been suspended by Luney moderation.';

  @override
  String get accountLockedTitle => 'Account locked';

  @override
  String accountLockedUntil(String date) {
    return 'Locked until $date.';
  }

  @override
  String get accountRestrictionsEmptyBody =>
      'If staff ever restricts your access to a specific feature, it\'ll show up here with the reason and (if it\'s time-limited) when it ends.';

  @override
  String get accountRestrictionsEmptyTitle =>
      'No restrictions on your account.';

  @override
  String get accountRestrictionsIntro =>
      'These are the features your account is currently restricted from. If you think a restriction is wrong, you can appeal it via the support ticket attached to the moderation action.';

  @override
  String accountRestrictionsLifts(String time) {
    return 'Lifts $time';
  }

  @override
  String accountRestrictionsLoadError(String error) {
    return 'We couldn\'t load your account restrictions right now. Try again in a moment. ($error)';
  }

  @override
  String get accountRestrictionsPermanent => 'PERMANENT';

  @override
  String get accountRestrictionsTitle => 'Account restrictions';

  @override
  String accountRestrictionsUntil(String date) {
    return 'UNTIL $date';
  }

  @override
  String accountReviewsAttachmentViews(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count attachment views',
      one: '1 attachment view',
    );
    return '$_temp0';
  }

  @override
  String accountReviewsBetween(String start, String end) {
    return 'Between $start and $end, Luney staff reviewed your account.';
  }

  @override
  String accountReviewsDmFetches(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count DM thread fetches',
      one: '1 DM thread fetch',
    );
    return '$_temp0';
  }

  @override
  String get accountReviewsEmptyBody =>
      'If a Luney staff member reviewed your account, you\'ll see it here once the review is complete.';

  @override
  String get accountReviewsEmptyTitle => 'No staff has accessed your account.';

  @override
  String accountReviewsGroupReads(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count group-message reads',
      one: '1 group-message read',
    );
    return '$_temp0';
  }

  @override
  String get accountReviewsHelp =>
      'Reviews are part of Luney\'s safety operations. They happen when a report or investigation requires staff to see context beyond what shows up in a single reported message. Every action taken during a review is logged in our internal audit trail. For more information about a specific review, contact privacy@luneyapp.com. Formal data-access requests are processed within 30 days per our Privacy Policy.';

  @override
  String accountReviewsLoadError(String error) {
    return 'We couldn\'t load your account reviews right now. Try again in a moment. ($error)';
  }

  @override
  String get accountReviewsTitle => 'Account reviews';

  @override
  String get accountViolationsActionDeleteContent => 'Content removed';

  @override
  String get accountViolationsActionSuspend => 'Suspension';

  @override
  String get accountViolationsActionWarn => 'Warning';

  @override
  String get accountViolationsEmptyBody =>
      'We\'ll surface anything the moderation team issues here.';

  @override
  String get accountViolationsEmptyTitle => 'No violations on your account.';

  @override
  String accountViolationsEntriesOnRecord(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entries on record',
      one: '1 entry on record',
    );
    return '$_temp0';
  }

  @override
  String accountViolationsIssuedBy(String ts) {
    return 'Issued $ts by Luney moderation team';
  }

  @override
  String accountViolationsLifted(String ts) {
    return 'Lifted $ts';
  }

  @override
  String accountViolationsLoadError(String error) {
    return 'We couldn\'t load your account violations right now. Try again in a moment. ($error)';
  }

  @override
  String get accountViolationsNoDetails => 'No additional details provided.';

  @override
  String get accountViolationsNoExpiration => 'No expiration set';

  @override
  String get accountViolationsOpenAppeal => 'Open appeal ticket';

  @override
  String accountViolationsPurged(String ts) {
    return 'Permanently removed $ts';
  }

  @override
  String accountViolationsPurgeScheduled(String ts) {
    return 'Permanent removal scheduled for $ts';
  }

  @override
  String get accountViolationsResolvedBadge => 'RESOLVED';

  @override
  String accountViolationsRestored(String ts) {
    return 'Restored $ts';
  }

  @override
  String get accountViolationsStandingGood => 'Account in good standing';

  @override
  String get accountViolationsStandingMultiple => 'Multiple violations on file';

  @override
  String get accountViolationsStandingSuspended => 'Currently suspended';

  @override
  String accountViolationsSuspensionPermanent(String kind) {
    return '$kind · permanent';
  }

  @override
  String accountViolationsSuspensionUntil(String kind, String ts) {
    return '$kind · until $ts';
  }

  @override
  String get accountViolationsTitle => 'Account Violations';

  @override
  String accountViolationsUntil(String ts) {
    return 'Until $ts';
  }

  @override
  String get achievementsListOtherTitle => 'Achievements';

  @override
  String get achievementsListOwnTitle => 'Your achievements';

  @override
  String get achievementTierBronze => 'Bronze';

  @override
  String get achievementTierGold => 'Gold';

  @override
  String get achievementTierPlatinum => 'Platinum';

  @override
  String get achievementTierSilver => 'Silver';

  @override
  String get achievementTierSpecial => 'Special';

  @override
  String get actionBack => 'Back';

  @override
  String get actionCancel => 'Cancel';

  @override
  String get actionClose => 'Close';

  @override
  String get actionCopy => 'Copy';

  @override
  String get actionDelete => 'Delete';

  @override
  String get actionDone => 'Done';

  @override
  String get actionGotIt => 'Got it';

  @override
  String get actionOk => 'OK';

  @override
  String get actionRefresh => 'Refresh';

  @override
  String get actionRemove => 'Remove';

  @override
  String get actionRetry => 'Retry';

  @override
  String get actionSave => 'Save';

  @override
  String get actionShare => 'Share';

  @override
  String get adminAction1Day => '1 day';

  @override
  String get adminAction30Days => '30 days';

  @override
  String get adminAction7Days => '7 days';

  @override
  String get adminAction90Days => '90 days';

  @override
  String get adminActionDefaultUser => 'user';

  @override
  String get adminActionDeleteTitle => 'Admin delete';

  @override
  String get adminActionDuration => 'Duration';

  @override
  String get adminActionErrApply => 'Couldn\'t apply the action';

  @override
  String get adminActionInternalHint =>
      'What you want other moderators to know.';

  @override
  String get adminActionInternalNote => 'Internal note (staff only)';

  @override
  String get adminActionLiftCta => 'Lift';

  @override
  String get adminActionLiftTitle => 'Lift suspension';

  @override
  String get adminActionPermanent => 'Permanent';

  @override
  String get adminActionRestoreCta => 'Restore';

  @override
  String get adminActionRestoreTitle => 'Restore content';

  @override
  String get adminActionSuspendCta => 'Suspend';

  @override
  String adminActionSuspendTitle(String target) {
    return 'Suspend $target';
  }

  @override
  String get adminActionSuspensionKind => 'Suspension kind';

  @override
  String get adminActionUserHint =>
      'What the affected user sees in their violation.';

  @override
  String get adminActionUserNote => 'User-facing note (sent to user)';

  @override
  String get adminActionUserNoteRequired => 'User-facing note is required.';

  @override
  String get adminActionWarnCta => 'Issue warning';

  @override
  String adminActionWarnTitle(String target) {
    return 'Warn $target';
  }

  @override
  String get anniversaryCardChattingSince => 'Chatting since';

  @override
  String get anniversaryCardDetailPrepareOp =>
      'Couldn\'t prepare the share image';

  @override
  String get anniversaryCardDetailPreparing => 'Preparing…';

  @override
  String get anniversaryCardDetailShareCard => 'Share card';

  @override
  String get anniversaryCardDetailShareOp => 'Couldn\'t share card';

  @override
  String get anniversaryCardFormalLabel => 'Anniversary';

  @override
  String get anniversaryCardFriendsSince => 'Friends since';

  @override
  String get anniversaryCardMemberSince => 'Member since';

  @override
  String get anniversaryCardOnLuneySince => 'On Luney since';

  @override
  String anniversaryCardScreenLoadError(String error) {
    return 'We couldn\'t load this card right now. Try again in a moment. ($error)';
  }

  @override
  String get anniversaryCardScreenNotFound => 'Card not found.';

  @override
  String get anniversaryCardScreenTitle => 'Anniversary card';

  @override
  String get anniversaryCardSince => 'Since';

  @override
  String anniversaryCardSinceStamp(String prefix, String date) {
    return '$prefix $date';
  }

  @override
  String get anniversaryCardSomeone => 'someone';

  @override
  String anniversaryCardSubtitleExclaim(String subtitle) {
    return '$subtitle!';
  }

  @override
  String get anniversaryCardThem => 'them';

  @override
  String anniversaryCardYearLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count years',
      one: '1 year',
    );
    return '$_temp0';
  }

  @override
  String anniversaryShareBirthdaySubject(String years) {
    return 'Luney-versary · $years';
  }

  @override
  String anniversaryShareBirthdayText(String years) {
    return '$years on Luney 🌙';
  }

  @override
  String anniversaryShareDmSubject(String years) {
    return 'Chat anniversary · $years';
  }

  @override
  String anniversaryShareDmText(String years) {
    return 'Celebrating $years of conversations on Luney 💬';
  }

  @override
  String anniversaryShareFriendshipSubject(String years) {
    return 'Friendiversary card · $years';
  }

  @override
  String anniversaryShareFriendshipText(String years) {
    return 'Celebrating $years of friendship on Luney 🎉';
  }

  @override
  String anniversaryShareGroupSubject(String years) {
    return 'Group anniversary · $years';
  }

  @override
  String anniversaryShareGroupText(String years) {
    return '$years in this community on Luney 👥';
  }

  @override
  String anniversaryShareUnknownSubject(String years) {
    return 'Anniversary card · $years';
  }

  @override
  String anniversaryShareUnknownText(String years) {
    return 'Celebrating $years on Luney 🎉';
  }

  @override
  String anniversaryShareYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count years',
      one: '1 year',
    );
    return '$_temp0';
  }

  @override
  String get appName => 'Luney';

  @override
  String get appShellCancelAndLogIn => 'Yes, cancel & log in';

  @override
  String get appShellCantEditRubric => 'CAN\'T EDIT';

  @override
  String appShellCouldntOperation(String operation) {
    return 'Couldn\'t $operation';
  }

  @override
  String appShellDeletionCancelBody(String date, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return 'You requested account deletion. Logging in now will cancel the request and your account stays, scheduled for $date otherwise ($_temp0 from now). Sign out to let the deletion proceed.';
  }

  @override
  String get appShellDeletionCancelledMessage =>
      'Your account is no longer scheduled for deletion. Everything\'s exactly where you left it.';

  @override
  String get appShellDeletionCancelledRubric => 'DELETION CANCELLED';

  @override
  String get appShellDeletionCancelTitle => 'Cancel your deletion request?';

  @override
  String appShellDeletionOverdueBody(String date) {
    return 'The 30-day grace window passed on $date. The deletion is locked in and the daily cleanup will complete it within 24 hours. Please sign out.';
  }

  @override
  String get appShellDeletionOverdueTitle => 'Your account is being deleted';

  @override
  String get appShellDismiss => 'Dismiss';

  @override
  String get appShellEvents => 'Events';

  @override
  String get appShellLiveLobbies => 'Live lobbies';

  @override
  String get appShellNotEditableMessage =>
      'Reels uploaded after this update are downloadable for re-edit. To replace this one, post a fresh reel and delete this one when you\'re happy with the new version.';

  @override
  String get appShellNotEditableTitle =>
      'This reel was uploaded before re-edit was supported';

  @override
  String appShellNotifBellLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Notifications, $count unread',
      one: 'Notifications, 1 unread',
      zero: 'Notifications',
    );
    return '$_temp0';
  }

  @override
  String get appShellNotNow => 'Not now';

  @override
  String get appShellOpBakingReel => 'Baking your reel';

  @override
  String get appShellOpCancelDeletion => 'Couldn\'t cancel deletion';

  @override
  String get appShellOpenEditor => 'Open editor';

  @override
  String get appShellOpLoadingOriginalReel => 'Loading original reel';

  @override
  String get appShellOpUploadingReel => 'Uploading reel';

  @override
  String get appShellReadyToEditMessage =>
      'Tap below to open the trim screen with your downloaded reel. The new version will replace the old one once it\'s processed.';

  @override
  String get appShellReadyToEditRubric => 'READY TO EDIT';

  @override
  String get appShellReadyToEditTitle => 'Your reel is ready to edit';

  @override
  String get appShellReelResumeMessage =>
      'Something went wrong, but your edits are saved as a draft. Resume editing to try again, or dismiss to start fresh later.';

  @override
  String get appShellReelUploadedMessage =>
      'It usually takes about 30 seconds to finish processing. Once it\'s ready, it\'ll appear in your reels grid and on the home rail for friends.';

  @override
  String get appShellReelUploadedRubric => 'REEL UPLOADED';

  @override
  String get appShellReelUploadedTitle => 'Reel uploaded';

  @override
  String get appShellResumeEditing => 'Resume editing';

  @override
  String get appShellSearch => 'Search';

  @override
  String get appShellSignOut => 'Sign out';

  @override
  String get appShellStillProcessingMessage =>
      'Mux finishes the editable copy a minute or two after the reel goes live. Try Edit again in a couple minutes, should be ready by then.';

  @override
  String get appShellStillProcessingRubric => 'STILL PROCESSING';

  @override
  String get appShellStillProcessingTitle => 'Your reel is still processing';

  @override
  String get appShellUnsupportedMessage =>
      'Editing is only supported for reels hosted on our current video provider.';

  @override
  String get appShellUnsupportedTitle => 'Re-edit not available for this reel';

  @override
  String get appShellWelcomeBackTitle => 'Welcome back';

  @override
  String get blockedUsersEmpty => 'You haven\'t blocked anyone';

  @override
  String get blockedUsersEmptyBody =>
      'If you ever block someone, they show up here so you can unblock them later.';

  @override
  String blockedUsersLoadError(String error) {
    return 'We couldn\'t load your blocked users right now. Try again in a moment. ($error)';
  }

  @override
  String get blockedUsersTitle => 'Blocked users';

  @override
  String get blockedUsersUnblock => 'Unblock';

  @override
  String get broadcastBannerDismiss => 'Dismiss broadcast';

  @override
  String get calculatorDecoyClear => 'AC';

  @override
  String get calculatorDecoyError => 'Error';

  @override
  String get changeEmailCurrentPasswordHint => 'Current password';

  @override
  String get changeEmailCurrentPrefix => 'Currently signed in as ';

  @override
  String get changeEmailCurrentSuffix =>
      '. We\'ll email a verification link to the new address. Your email won\'t change until you tap it.';

  @override
  String get changeEmailErrChange => 'Couldn\'t change your email';

  @override
  String get changeEmailErrInvalid => 'Enter a valid email.';

  @override
  String get changeEmailErrPasswordRequired => 'Enter your current password.';

  @override
  String get changeEmailErrSame => 'That\'s already your email.';

  @override
  String get changeEmailNewHint => 'New email';

  @override
  String get changeEmailSend => 'Send verification';

  @override
  String get changeEmailTitle => 'Change email';

  @override
  String get changePasswordConfirmHint => 'Confirm new password';

  @override
  String get changePasswordCtaSet => 'Set password';

  @override
  String get changePasswordCtaUpdate => 'Update';

  @override
  String get changePasswordCurrentHint => 'Current password';

  @override
  String get changePasswordErrChange => 'Couldn\'t change your password';

  @override
  String get changePasswordErrCurrentRequired => 'Enter your current password.';

  @override
  String get changePasswordErrMismatch => 'Passwords don\'t match.';

  @override
  String get changePasswordErrSet => 'Couldn\'t set your password';

  @override
  String get changePasswordErrTooShort =>
      'Password must be at least 8 characters.';

  @override
  String get changePasswordNewHint => 'New password (min 8 chars)';

  @override
  String get changePasswordOauthBlurb =>
      'You\'ll be able to sign in with your email + this password as a fallback if you ever lose access to your linked OAuth providers.';

  @override
  String get changePasswordTitleChange => 'Change password';

  @override
  String get changePasswordTitleSet => 'Set a password';

  @override
  String get chatBubbleEditHint => 'Edit message…';

  @override
  String get chatBubbleEditing => 'Editing message';

  @override
  String get chatBubbleEmojiTooltip => 'Emoji';

  @override
  String get chatBubbleKeyboardTooltip => 'Keyboard';

  @override
  String get chatBubbleMessageHint => 'Message…';

  @override
  String chatBubbleReplyingTo(String name) {
    return 'Replying to $name';
  }

  @override
  String get chatComposerAttachPhoto => 'Attach photo';

  @override
  String get chatComposerCancelEdit => 'Cancel edit';

  @override
  String get chatComposerCancelReply => 'Cancel reply';

  @override
  String get chatComposerRemovePhoto => 'Remove photo';

  @override
  String get chatComposerSaveEdit => 'Save edit';

  @override
  String get chatComposerSend => 'Send message';

  @override
  String get chatRealtimeConnecting => 'Connecting…';

  @override
  String get commentsCancelEdit => 'Cancel edit';

  @override
  String get commentsCancelReply => 'Cancel reply';

  @override
  String get commentsClosedDefault => 'You can\'t comment on this post.';

  @override
  String get commentsClosedDisabled => 'Comments are turned off for this post.';

  @override
  String get commentsClosedFoF =>
      'Only the author\'s friends and their friends can comment.';

  @override
  String get commentsClosedFriends => 'Only the author\'s friends can comment.';

  @override
  String get commentsCloseTooltip => 'Close comments';

  @override
  String get commentsCopied => 'Copied';

  @override
  String get commentsDeleteBody => 'Replies under it will be removed too.';

  @override
  String get commentsDeletedSnack => 'Comment deleted';

  @override
  String get commentsDeleteTitle => 'Delete this comment?';

  @override
  String get commentsDeleteTooltip => 'Delete comment';

  @override
  String get commentsEdit => 'Edit';

  @override
  String get commentsEditHint => 'Edit comment…';

  @override
  String get commentsEditingBanner => 'Editing comment';

  @override
  String get commentsEmojiTooltip => 'Emoji';

  @override
  String get commentsEmptyBody => 'Be the first to say something kind.';

  @override
  String get commentsEmptyCta => 'Add the first comment';

  @override
  String get commentsEmptyTitle => 'No comments yet';

  @override
  String get commentsErrCopy => 'Couldn\'t copy comment';

  @override
  String get commentsErrDelete => 'Couldn\'t delete comment';

  @override
  String get commentsErrEdit => 'Couldn\'t save edit';

  @override
  String get commentsErrPost => 'Couldn\'t post comment';

  @override
  String get commentsErrReact => 'Couldn\'t react';

  @override
  String get commentsErrShare => 'Couldn\'t share comment';

  @override
  String get commentsForward => 'Forward';

  @override
  String get commentsHintComment => 'Add a comment…';

  @override
  String get commentsHintReply => 'Write your reply…';

  @override
  String get commentsMenuCopy => 'Copy text';

  @override
  String get commentsMenuReact => 'React';

  @override
  String get commentsMenuReply => 'Reply';

  @override
  String get commentsMenuStaffDelete => 'Moderate / delete (staff)';

  @override
  String commentsOpenProfile(String name) {
    return 'Open $name\'s profile';
  }

  @override
  String get commentsPermBody =>
      'Admin delete is gated on the moderate_content staff permission. Ask a super-admin to grant it to your role.';

  @override
  String get commentsPermRubric => 'NOT ALLOWED';

  @override
  String get commentsPermTitle => 'Need the moderate_content perm';

  @override
  String get commentsPostSemantic => 'Post comment';

  @override
  String get commentsReply => 'Reply';

  @override
  String commentsReplyingTo(String handle) {
    return 'Replying to @$handle';
  }

  @override
  String get commentsTitle => 'Comments';

  @override
  String communityCardErrorRetrySemantics(String label) {
    return 'Couldn\'t load $label. Tap to retry.';
  }

  @override
  String communityCardErrorTitle(String label) {
    return 'Couldn\'t load $label.';
  }

  @override
  String communityPulseConnections(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'connections',
      one: 'connection',
    );
    return '$_temp0';
  }

  @override
  String communityPulseEvents(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'events',
      one: 'event',
    );
    return '$_temp0';
  }

  @override
  String get communityPulseHeader => 'COMMUNITY PULSE';

  @override
  String communityPulseNewGroups(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'new groups',
      one: 'new group',
    );
    return '$_temp0';
  }

  @override
  String get communityPulseThisWeek => 'This week';

  @override
  String get communityVotingBlurb =>
      'Help decide what gets built next. Vote on suggestions staff have opened to the community.';

  @override
  String get communityVotingDismiss => 'Dismiss';

  @override
  String get communityVotingDismissA11y => 'Dismiss suggestion';

  @override
  String get communityVotingErrDismiss => 'Couldn\'t dismiss this suggestion';

  @override
  String get communityVotingErrorLabel => 'Community Voting';

  @override
  String get communityVotingErrVote => 'Couldn\'t record your vote';

  @override
  String communityVotingOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count open',
      one: '1 open',
    );
    return '$_temp0';
  }

  @override
  String get communityVotingSeeAll => 'See all suggestions →';

  @override
  String get communityVotingTitle => 'COMMUNITY VOTING';

  @override
  String get composeActionPost => 'Post';

  @override
  String get composeAllowComments => 'Allow comments';

  @override
  String get composeAttach => 'Attach';

  @override
  String get composeAttachPhoto => 'Photo';

  @override
  String get composeAttachPhotoSub => 'Add an image to your post';

  @override
  String get composeAttachVideoCamera => 'Record a video';

  @override
  String get composeAttachVideoCameraSub => 'Capture fresh from the camera';

  @override
  String get composeAttachVideoGallery => 'Pick a video';

  @override
  String get composeAttachVideoGallerySub => 'Choose a clip from your gallery';

  @override
  String get composeBakingBody =>
      'Just a moment. We\'ll start baking in the background and you can keep using the app.';

  @override
  String get composeBakingTitle => 'Preparing your reel…';

  @override
  String get composeCommentsOff => 'Comments are off for this post';

  @override
  String get composeCommentsOn =>
      'Who can comment follows your privacy setting';

  @override
  String get composeDraftsHint => 'Tap to resume or discard';

  @override
  String composeDraftsSaved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count drafts saved',
      one: '1 draft saved',
    );
    return '$_temp0';
  }

  @override
  String get composeEditOverlays => 'Edit overlays';

  @override
  String get composeEditReelVideo => 'Edit reel video';

  @override
  String get composeEmoji => 'Emoji';

  @override
  String get composeErrPost => 'Couldn\'t post';

  @override
  String get composeErrPrepOverlays => 'Preparing overlays for the video';

  @override
  String get composeErrTrim => 'Trimming reel';

  @override
  String get composeErrUpload => 'Uploading reel';

  @override
  String get composeFmtBold => 'Bold';

  @override
  String get composeFmtCode => 'Code';

  @override
  String get composeFmtItalic => 'Italic';

  @override
  String get composeFmtQuote => 'Quote';

  @override
  String get composeFmtSpoiler => 'Spoiler';

  @override
  String get composeFmtStrike => 'Strikethrough';

  @override
  String get composeHintPost => 'What do you want to share?';

  @override
  String get composeHintReel => 'What\'s your reel about?';

  @override
  String get composeMarkSpoiler => 'Mark as spoiler';

  @override
  String composeOverlayCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count overlays',
      one: '1 overlay',
    );
    return '$_temp0';
  }

  @override
  String get composeReelAttached => 'Reel video attached';

  @override
  String composeReelSubtitleTapEdit(String summary) {
    return '$summary · Tap to edit';
  }

  @override
  String get composeReelTapEdit => 'Tap to edit overlays + audio';

  @override
  String get composeRemovePhoto => 'Remove photo';

  @override
  String get composeRemoveVideo => 'Remove video';

  @override
  String get composeSpoiler => 'Spoiler';

  @override
  String get composeTitlePost => 'New Post';

  @override
  String get composeTitleReel => 'New Reel';

  @override
  String get composeTooLongBody =>
      'Reel captions are capped at 500 characters.';

  @override
  String get composeTooLongRubric => 'TOO LONG';

  @override
  String get composeTooLongTitle => 'Caption is too long';

  @override
  String get confessionsCardAnonymous => 'ANONYMOUS';

  @override
  String get confessionsCardBlurb =>
      'Share something heavy, anonymously. Send hearts and hugs, can\'t see who posted. Staff remove anything that crosses the line.';

  @override
  String get confessionsCardEmpty =>
      'No confessions yet. Be the first to share something.';

  @override
  String get confessionsCardErrorLabel => 'Confessions';

  @override
  String get confessionsCardErrSend => 'Couldn\'t send your confession';

  @override
  String get confessionsCardHeart => 'Heart';

  @override
  String get confessionsCardHint => 'Share something anonymously…';

  @override
  String get confessionsCardModerated => 'MODERATED';

  @override
  String get confessionsCardRemoveHug => 'Remove hug';

  @override
  String get confessionsCardReportTarget => 'this confession';

  @override
  String get confessionsCardSendHug => 'Send hug';

  @override
  String get confessionsCardShareA11y => 'Share confession anonymously';

  @override
  String get confessionsCardShareCta => 'Share anonymously';

  @override
  String get confessionsCardSuccessBody =>
      'It\'s posted now, with no name attached. Other users can react with hearts and hugs. Staff can remove anything that crosses the line.';

  @override
  String get confessionsCardSuccessRubric => 'SHARED ANONYMOUSLY';

  @override
  String get confessionsCardSuccessTitle =>
      'Your confession is live on the board';

  @override
  String get confessionsCardUnheart => 'Unheart';

  @override
  String get connectionsErrLink => 'Couldn\'t link account';

  @override
  String get connectionsErrUnlink => 'Couldn\'t unlink account';

  @override
  String get connectionsInfo =>
      'Linking a provider lets you sign in to this account with it. You won\'t be charged or notified anywhere.';

  @override
  String get connectionsLastIdentityBlocked =>
      'You\'d be locked out. Set an email + password first.';

  @override
  String get connectionsLinkedMsg =>
      'Sign in with this provider now lands in this account. You can unlink it from the same screen anytime.';

  @override
  String get connectionsLinkedRubric => 'IDENTITY LINKED';

  @override
  String connectionsLinkedSub(String provider) {
    return 'Linked. Sign in with $provider lands in this account.';
  }

  @override
  String get connectionsLinkedTitle => 'Linked';

  @override
  String connectionsLoadError(String error) {
    return 'We couldn\'t load your connections right now. Try again in a moment. ($error)';
  }

  @override
  String get connectionsNotLinked => 'Not linked.';

  @override
  String get connectionsSectionLabel => 'SIGN-IN PROVIDERS';

  @override
  String get connectionsTitle => 'Connections';

  @override
  String get connectionsUnlink => 'Unlink';

  @override
  String connectionsUnlinkBody(String provider) {
    return 'Future $provider sign-ins won\'t open this account. You can re-link any time.';
  }

  @override
  String connectionsUnlinkTitle(String provider) {
    return 'Unlink $provider?';
  }

  @override
  String get createEventAlsoPostToFeed => 'Also post to feed';

  @override
  String get createEventClearDate => 'Clear date';

  @override
  String createEventCoverGradientA11y(int n) {
    return 'Cover gradient $n';
  }

  @override
  String createEventDateTimeA11y(String value) {
    return 'Date and time: $value. Double tap to change.';
  }

  @override
  String get createEventDescriptionHint => 'Tell people what to expect.';

  @override
  String get createEventDestGroupSubtitle =>
      'Only members will see this event.';

  @override
  String createEventDestinationChangeA11y(String title) {
    return 'Change destination. Current: $title';
  }

  @override
  String createEventDestinationLockedA11y(String title) {
    return 'Event destination: $title';
  }

  @override
  String get createEventDestPublic => 'Public';

  @override
  String get createEventDestPublicSubtitle =>
      'Visible on the main events screen.';

  @override
  String get createEventErrCreate => 'Couldn\'t create event';

  @override
  String get createEventErrStartBody =>
      'Events can\'t be scheduled in the past. Tap the date / time row to pick when this event starts.';

  @override
  String get createEventErrStartRubric => 'ADD A START TIME';

  @override
  String get createEventErrStartTitle => 'Pick a future start time';

  @override
  String get createEventErrTitleBody =>
      'Give your event a short name. This is what shows up on the Events screen and on the feed card for public events.';

  @override
  String get createEventErrTitleRubric => 'ADD A TITLE';

  @override
  String get createEventErrTitleTitle => 'Add a title';

  @override
  String get createEventGroupsSectionLabel =>
      'GROUPS WHERE YOU\'RE ADMIN OR MOD';

  @override
  String createEventGroupVisibilityNote(String group) {
    return 'Only members of $group will see this event.';
  }

  @override
  String get createEventLabelDescription => 'DESCRIPTION · OPTIONAL';

  @override
  String get createEventLabelEnds => 'ENDS · OPTIONAL';

  @override
  String get createEventLabelLocation => 'LOCATION · OPTIONAL';

  @override
  String get createEventLabelStarts => 'STARTS';

  @override
  String get createEventLabelTitle => 'TITLE';

  @override
  String get createEventLabelWhereToPost => 'WHERE TO POST';

  @override
  String get createEventLocationHint => 'Address, venue, or \"online\"';

  @override
  String get createEventNoEndTime => 'No end time';

  @override
  String get createEventPickDate => 'Pick a date';

  @override
  String get createEventPickDateTimeA11y => 'Pick a date and time';

  @override
  String get createEventPickerTitle => 'Where to post?';

  @override
  String get createEventPublicVisibilityNote =>
      'Public event. Visible on the main events screen.';

  @override
  String get createEventSubmitting => 'Creating…';

  @override
  String get createEventSubtitle =>
      'Pick a date, invite people, see who\'s in.';

  @override
  String get createEventTitle => 'Create event';

  @override
  String get createEventTitleHint => 'What\'s happening?';

  @override
  String get createEventTitlePlaceholder => 'Your event title';

  @override
  String get createGroupCreate => 'Create group';

  @override
  String get createGroupCreating => 'Creating…';

  @override
  String get createGroupDescHint => 'What is this group about? (optional)';

  @override
  String get createGroupDescLabel => 'Description';

  @override
  String get createGroupEmojiLabel => 'Emoji';

  @override
  String get createGroupErr => 'Couldn\'t create the group';

  @override
  String get createGroupGradient => 'GRADIENT';

  @override
  String createGroupGradientOption(int n) {
    return 'Gradient option $n';
  }

  @override
  String get createGroupNameHint => 'Name it something memorable';

  @override
  String get createGroupNameLabel => 'Group name';

  @override
  String get createGroupPhotoHintHas =>
      'Replaces the gradient banner. Pinch / drag in the editor to fine-tune.';

  @override
  String get createGroupPhotoHintNone =>
      'Skip and your gradient + emoji are used. Tap to upload + crop one.';

  @override
  String get createGroupPickPhoto => 'Pick photo';

  @override
  String get createGroupPreviewFallback => 'Your group';

  @override
  String get createGroupPrivacy => 'PRIVACY';

  @override
  String createGroupPrivacyA11y(String title, String blurb) {
    return '$title. $blurb';
  }

  @override
  String get createGroupPrivate => 'Private';

  @override
  String get createGroupPrivateBlurb => 'Invite-only, hidden from search.';

  @override
  String get createGroupPublic => 'Public';

  @override
  String get createGroupPublicBlurb =>
      'Anyone can find and join. Subject to public rules.';

  @override
  String get createGroupRemovePhoto => 'Remove photo';

  @override
  String createGroupRemoveTag(String tag) {
    return 'Remove tag $tag';
  }

  @override
  String get createGroupReplacePhoto => 'Replace photo';

  @override
  String get createGroupTagFormatError =>
      'Tags use lowercase letters, numbers, and dashes (2-24 chars).';

  @override
  String get createGroupTagInputHint => 'Add a tag and press return';

  @override
  String get createGroupTagLimit => 'Up to 8 tags per group.';

  @override
  String get createGroupTags => 'TAGS';

  @override
  String get createGroupTagsHelp =>
      'Help people find this group. Lowercase, no spaces, up to 8.';

  @override
  String get createGroupTitle => 'New Group';

  @override
  String get createGroupTosA11y =>
      'I have read and agree to the Group Terms of Service';

  @override
  String get createGroupTosLink => 'Group Terms of Service';

  @override
  String get createGroupTosPrefix => 'I have read and agree to the ';

  @override
  String get createGroupUploadPhoto => 'Upload photo (optional)';

  @override
  String createLobbyAudienceChangeA11y(String title) {
    return 'Change lobby audience. Current: $title';
  }

  @override
  String createLobbyAudienceLockedA11y(String title) {
    return 'Lobby audience: $title';
  }

  @override
  String get createLobbyDestPublic => 'Public · everyone';

  @override
  String get createLobbyDestPublicSubtitle => 'Open lobby. No notifications.';

  @override
  String get createLobbyErrStart => 'Couldn\'t start lobby';

  @override
  String get createLobbyErrTitleBody =>
      'Give your lobby a short name. This is what shows up on the Lobbies screen and in the push notification.';

  @override
  String get createLobbyErrTitleRubric => 'ADD A TITLE';

  @override
  String get createLobbyErrTitleTitle => 'Add a title';

  @override
  String createLobbyGroupNote(String group) {
    return 'Members of $group get a notification when you go live.';
  }

  @override
  String get createLobbyGroupsSection => 'YOUR GROUPS';

  @override
  String createLobbyGroupSubtitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count members · they\'ll get a ping',
      one: '1 member · they\'ll get a ping',
    );
    return '$_temp0';
  }

  @override
  String get createLobbyLabelMoodEmoji => 'MOOD EMOJI · OPTIONAL';

  @override
  String get createLobbyLabelTitle => 'TITLE';

  @override
  String get createLobbyLabelVibe => 'VIBE';

  @override
  String get createLobbyLabelWhere => 'WHERE';

  @override
  String get createLobbyMoodEmojiHint => 'e.g. 🌈  ☕  🎵';

  @override
  String get createLobbyPickerTitle => 'Where to?';

  @override
  String get createLobbyPublicNote =>
      'Public lobbies don\'t notify anyone. They only show up on the Lobbies screen.';

  @override
  String get createLobbyStart => 'Start lobby';

  @override
  String get createLobbyStartA11y => 'Start lobby';

  @override
  String get createLobbyStarting => 'Starting…';

  @override
  String get createLobbySubtitle => 'Live audio room. You\'ll be the host.';

  @override
  String get createLobbyTitle => 'Start a lobby';

  @override
  String get createLobbyTitleHint => 'What are you talking about?';

  @override
  String crisisAlertCall(String phone) {
    return 'Call $phone';
  }

  @override
  String get crisisAlertHeroBody =>
      'You don’t have to go through anything alone. The folks below are warm, queer-friendly, and trained for this. reach out any time, day or night.';

  @override
  String get crisisAlertHeroTitle => 'We’re thinking of you 💜';

  @override
  String get crisisAlertImOk => 'I\'m OK for now';

  @override
  String get crisisAlertOpenChat => 'Open chat';

  @override
  String get crisisAlertResourcesError =>
      'We couldn\'t load resources right now. Pull to refresh, or check back in a moment.';

  @override
  String crisisAlertText(String sms) {
    return 'Text $sms';
  }

  @override
  String get crisisAlertTitle => 'Support';

  @override
  String get customColorPickerHexLabel => 'HEX';

  @override
  String get customColorPickerRgbLabel => 'RGB';

  @override
  String get customColorPickerTitle => 'Custom color';

  @override
  String get customColorPickerUse => 'Use this color';

  @override
  String get dateCheckinActive => 'Check-in active';

  @override
  String get dateCheckinAlerting => 'Your Trusted Circle is being alerted.';

  @override
  String get dateCheckinDeadline => 'Deadline';

  @override
  String get dateCheckinDeadlinePassed => 'Deadline passed';

  @override
  String get dateCheckinDetailMeeting => 'Meeting with';

  @override
  String get dateCheckinDetailNotes => 'Notes';

  @override
  String get dateCheckinDetailWhere => 'Where';

  @override
  String get dateCheckinDurationHint =>
      '15 min - 12 h. You can extend later if your plans run long.';

  @override
  String get dateCheckinErrExtend => 'Couldn\'t extend check-in';

  @override
  String get dateCheckinErrMarkSafe => 'Couldn\'t mark safe';

  @override
  String get dateCheckinErrStart => 'Couldn\'t start check-in';

  @override
  String dateCheckinExtended(int count) {
    return 'Extended $count×';
  }

  @override
  String get dateCheckinHowBody =>
      'Set a deadline before going somewhere new. If you don\'t tap \"I\'m safe\" by then, your Trusted Circle gets pinged with a \"check on Zoey, meeting Sam at Beans Cafe\" alert. You can extend any time, and only your Circle sees it.';

  @override
  String get dateCheckinHowTitle => 'How it works';

  @override
  String get dateCheckinImSafe => 'I\'m safe';

  @override
  String dateCheckinLoadError(String error) {
    return 'We couldn\'t load your check-in right now. Try again in a moment. ($error)';
  }

  @override
  String get dateCheckinMeetingHint =>
      'e.g. Sam, or @samhandle to tag a Luney friend';

  @override
  String get dateCheckinMeetingLabel => 'Meeting with (optional)';

  @override
  String get dateCheckinNeedCircleBody =>
      'A check-in needs at least one trusted contact, someone gets pinged if you don\'t mark yourself safe before the deadline. Without anyone in your Circle, a check-in is just a personal timer with no one watching.';

  @override
  String get dateCheckinNeedCircleTitle => 'Set up your Trusted Circle first';

  @override
  String get dateCheckinNoDetails =>
      'No details set. The alert (if it fires) will just say \"missed their check-in deadline.\"';

  @override
  String get dateCheckinNotesHint =>
      'Anything that\'d help if I don\'t check back in';

  @override
  String get dateCheckinNotesLabel =>
      'Private notes (optional, only your Circle sees)';

  @override
  String get dateCheckinOpenCircle => 'Open Trusted Circle';

  @override
  String get dateCheckinOpenCircleA11y => 'Open Trusted Circle';

  @override
  String get dateCheckinPlus15 => '+15 min';

  @override
  String get dateCheckinPlus1h => '+1 hr';

  @override
  String get dateCheckinPlus4h => '+4 hr';

  @override
  String get dateCheckinSafeFootnote =>
      'Marking yourself safe closes the check-in. No one in your Circle is notified.';

  @override
  String get dateCheckinSafeFootnoteOverdue =>
      'Marking yourself safe now still closes the check-in so the next tick won\'t alert again.';

  @override
  String get dateCheckinStart => 'Start check-in';

  @override
  String get dateCheckinStartFootnote =>
      'Only your Trusted Circle gets notified, and only if the deadline passes without a safe tap. They never see this while it\'s active.';

  @override
  String get dateCheckinTapSafe => 'Tap \"I\'m safe\" before the deadline.';

  @override
  String get dateCheckinTitle => 'Date Check-in';

  @override
  String get dateCheckinWhereHint => 'e.g. Beans Cafe';

  @override
  String get dateCheckinWhereLabel => 'Where (optional)';

  @override
  String get dbErrorAccountSuspended =>
      'Your account is currently suspended. Tap Settings → Support to appeal.';

  @override
  String get dbErrorGeneric => 'Something went wrong.';

  @override
  String get dbErrorNameNotAllowed => 'That name isn\'t allowed.';

  @override
  String dbErrorNameNotAllowedReason(String reason) {
    return 'That name isn\'t allowed: $reason';
  }

  @override
  String get dmBubbleReplying => 'Replying';

  @override
  String get dmBubbleSomeone => 'Someone';

  @override
  String get dmBubbleVerbEvent => 'event';

  @override
  String get dmBubbleVerbPin => 'pinned a message';

  @override
  String get dmBubbleVerbScreenRecording => 'started screen recording';

  @override
  String get dmBubbleVerbScreenshot => 'took a screenshot';

  @override
  String get dmBubbleVerbUnpin => 'unpinned a message';

  @override
  String get dmBubbleYou => 'You';

  @override
  String get dmChatAttachPhoto => 'Attach photo';

  @override
  String get dmChatBlockedBody =>
      'Messages aren\'t going through right now. They may have changed their DM settings, or one of you may have blocked the other. You can still scroll the history above. If you blocked them by accident, you can unblock them from their profile sheet.';

  @override
  String get dmChatBlockedRubric => 'MESSAGES PAUSED';

  @override
  String get dmChatBlockedTitle => 'New messages can\'t be sent right now';

  @override
  String get dmChatCloseSearch => 'Close search';

  @override
  String get dmChatComposeHint => 'Message…';

  @override
  String get dmChatDeleteBody =>
      'This removes it for both of you. Can\'t be undone.';

  @override
  String get dmChatDeletedSnack => 'Message deleted';

  @override
  String get dmChatDeleteTitle => 'Delete this message?';

  @override
  String get dmChatEditHint => 'Edit message…';

  @override
  String get dmChatEditingBanner => 'Editing message';

  @override
  String get dmChatEditLastMessageTooltip => 'Edit last message';

  @override
  String get dmChatEmoji => 'Emoji';

  @override
  String get dmChatEmpty => 'No messages yet. Say hi 👋';

  @override
  String get dmChatErrDelete => 'Couldn\'t delete message';

  @override
  String get dmChatErrReact => 'Couldn\'t react';

  @override
  String get dmChatErrSaveEdit => 'Couldn\'t save edit';

  @override
  String get dmChatErrSend =>
      'Couldn\'t send: your message is back in the box, tap send to try again';

  @override
  String get dmChatErrSendGif => 'Couldn\'t send the GIF';

  @override
  String get dmChatFailedA11y => 'Message failed to send. Tap to retry.';

  @override
  String get dmChatFailedRetry => 'Tap to retry';

  @override
  String get dmChatGone => 'This conversation is no longer available.';

  @override
  String get dmChatKeyboard => 'Keyboard';

  @override
  String dmChatLoadError(String error) {
    return 'We couldn\'t load these messages right now. Try again in a moment. ($error)';
  }

  @override
  String get dmChatMenuCopyText => 'Copy text';

  @override
  String get dmChatMenuEdit => 'Edit';

  @override
  String get dmChatMenuFavGif => 'Favourite GIF';

  @override
  String get dmChatMenuPinMessage => 'Pin to chat';

  @override
  String get dmChatMenuReply => 'Reply';

  @override
  String get dmChatMenuUnfavGif => 'Remove from favourites';

  @override
  String get dmChatMenuUnpinMessage => 'Unpin from chat';

  @override
  String dmChatNoSearchMatch(String query) {
    return 'No messages match \"$query\".';
  }

  @override
  String get dmChatOpenPinnedMessages => 'View pinned messages';

  @override
  String get dmChatPreviewPinMine => '📌 You pinned a message';

  @override
  String dmChatPreviewPinOther(String name) {
    return '📌 $name pinned a message';
  }

  @override
  String get dmChatPreviewUnpinMine => 'You unpinned a message';

  @override
  String dmChatPreviewUnpinOther(String name) {
    return '$name unpinned a message';
  }

  @override
  String get dmChatReplying => 'Replying';

  @override
  String get dmChatReplyPhoto => '📎 photo';

  @override
  String get dmChatSaveEditA11y => 'Save edit';

  @override
  String get dmChatSearchHint =>
      'Search · from:me · has:image · before:2026-04-01';

  @override
  String get dmChatSearchMessages => 'Search messages';

  @override
  String dmChatSeenAt(String time) {
    return 'Seen · $time';
  }

  @override
  String get dmChatSendA11y => 'Send message';

  @override
  String get dmChatSuspendUser => 'Suspend this user';

  @override
  String get dmChatThisUser => 'this user';

  @override
  String get dmChatTitleFallback => 'Message';

  @override
  String get dmChatUnreadDivider => 'New messages';

  @override
  String get dmChatWarnUser => 'Warn this user';

  @override
  String get dmReactAllEmojisTooltip => 'All emojis';

  @override
  String get dmsAttachGif => '🎞️ GIF';

  @override
  String get dmsAttachment => '📎 Attachment';

  @override
  String get dmsAttachPhoto => '📷 Photo';

  @override
  String get dmsClearSearch => 'Clear search';

  @override
  String get dmsDeleteBody =>
      'This removes the whole thread for both of you, every message and reaction. Can\'t be undone.';

  @override
  String get dmsDeleteConversation => 'Delete conversation';

  @override
  String get dmsDeleteTitle => 'Delete this conversation?';

  @override
  String get dmSelfOptOutBody =>
      'Your \"Who Can DM\" setting is set to Nobody, so you can\'t start or send messages. Change it in Settings → Privacy to start messaging again.';

  @override
  String get dmSelfOptOutRubric => 'DIRECT MESSAGES OFF';

  @override
  String get dmSelfOptOutTitle => 'You\'ve turned off direct messages';

  @override
  String get dmsEmptyTitle => 'No conversations yet.';

  @override
  String get dmsErrDelete => 'Couldn\'t delete thread';

  @override
  String dmsLoadError(String error) {
    return 'We couldn\'t load your conversations right now. Try again in a moment. ($error)';
  }

  @override
  String get dmsMarkAsUnread => 'Mark as unread';

  @override
  String get dmsNewMessageButton => '+ New message';

  @override
  String get dmsNewMessageSemantic => 'New message';

  @override
  String get dmsNewShort => '+ New';

  @override
  String dmsNoMatch(String query) {
    return 'No conversations match \"$query\".';
  }

  @override
  String get dmsPinConversation => 'Pin to top';

  @override
  String get dmsPreviewDraftPrefix => 'Draft: ';

  @override
  String get dmsPreviewNoMessages => 'No messages yet. Say hi 👋';

  @override
  String get dmsPreviewScreenRecMine => '🎥 You started screen recording';

  @override
  String dmsPreviewScreenRecOther(String name) {
    return '🎥 $name started screen recording';
  }

  @override
  String get dmsPreviewScreenshotMine => '📸 You took a screenshot';

  @override
  String dmsPreviewScreenshotOther(String name) {
    return '📸 $name took a screenshot';
  }

  @override
  String get dmsPreviewYouPrefix => 'You: ';

  @override
  String get dmsSearchHint => 'Search conversations';

  @override
  String get dmsSubtitle => 'Private conversations';

  @override
  String get dmsTitle => 'Messages';

  @override
  String get dmsUnpinConversation => 'Unpin';

  @override
  String get draftsListConfirmBody =>
      'This permanently removes every saved reel draft on this device. Anything you haven\'t published yet is gone.';

  @override
  String get draftsListConfirmTitle => 'Discard all drafts?';

  @override
  String get draftsListDiscardAll => 'Discard all';

  @override
  String get draftsListDiscardTooltip => 'Discard';

  @override
  String get draftsListEmpty => 'You don\'t have any drafts saved.';

  @override
  String get draftsListKeep => 'Keep';

  @override
  String get draftsListRubric => 'DRAFTS';

  @override
  String get draftsListTitle => 'Drafts';

  @override
  String get draftsListUntitled => 'Untitled draft';

  @override
  String get dutyBannerMessage =>
      'On duty as Luney moderation. Long-press content for admin actions.';

  @override
  String get dutyBannerTapToStandDown => 'TAP TO STAND DOWN';

  @override
  String get editProfileAddBanner => 'Add a banner';

  @override
  String get editProfileAvatarUploadErrorOp => 'Couldn\'t upload avatar';

  @override
  String get editProfileBannerUploadErrorOp => 'Couldn\'t upload banner';

  @override
  String get editProfileBioHint => 'A sentence or two.';

  @override
  String get editProfileBioLabel => 'Bio';

  @override
  String get editProfileChangeAvatar => 'Change avatar';

  @override
  String get editProfileCropAvatar => 'Crop avatar';

  @override
  String get editProfileCropBanner => 'Crop banner';

  @override
  String get editProfileCustomIdentityHint => 'e.g. lesbian + femme';

  @override
  String get editProfileCustomIdentityLabel => 'Custom identity';

  @override
  String get editProfileCustomInterestsHint => 'e.g. anime, k-pop, climbing';

  @override
  String get editProfileCustomInterestsLabel =>
      'Custom interests (comma-separated)';

  @override
  String get editProfileCustomPronounsHint => 'e.g. xe/xem';

  @override
  String get editProfileCustomPronounsLabel => 'Custom pronouns';

  @override
  String get editProfileDisplayNameHint => 'Your name';

  @override
  String get editProfileDisplayNameLabel => 'Display name';

  @override
  String get editProfileEditBanner => 'Edit banner';

  @override
  String get editProfileHandleHint =>
      'letters, numbers, underscores · 3-24 chars';

  @override
  String get editProfileHandleInvalidBody =>
      'Use letters, numbers, and underscores only. Your handle is what others type after @ to mention you.';

  @override
  String get editProfileHandleInvalidRubric => 'CHECK YOUR HANDLE';

  @override
  String get editProfileHandleInvalidTitle => 'Handle must be 3 to 24 chars';

  @override
  String get editProfileHandleLabel => 'Handle';

  @override
  String editProfileHandleTakenBody(String handle) {
    return 'Another account is already using @$handle. Pick a different one.';
  }

  @override
  String get editProfileHandleTakenRubric => 'HANDLE TAKEN';

  @override
  String get editProfileHandleTakenTitle => 'That handle is taken';

  @override
  String get editProfileNameRequiredBody =>
      'Your display name is what shows up on your profile, in chat, and in mentions.';

  @override
  String get editProfileNameRequiredRubric => 'ADD A DISPLAY NAME';

  @override
  String get editProfileNameRequiredTitle => 'Add a display name';

  @override
  String get editProfileNameStyle => 'Name style';

  @override
  String get editProfileNameStyleErrorOp => 'Couldn\'t save name style';

  @override
  String get editProfileNameStyleHint =>
      'Tap to pick a font, effect, and colour';

  @override
  String get editProfileNameStyleVipOnly => 'VIP only';

  @override
  String get editProfileReplaceBanner => 'Replace banner';

  @override
  String get editProfileSaveErrorOp => 'Couldn\'t save profile';

  @override
  String get editProfileSectionIdentity => 'IDENTITY';

  @override
  String get editProfileSectionInterests => 'INTERESTS';

  @override
  String get editProfileSectionPronouns => 'PRONOUNS';

  @override
  String get editProfileTitle => 'Edit Profile';

  @override
  String get editProfileUnavailable => 'Profile unavailable';

  @override
  String get editProfileVipUpsellBody =>
      'Pick a font, an effect, and a colour for your name. Available on VIP, alongside per-group nicknames + avatars and unlimited GIF favourites.';

  @override
  String get editProfileVipUpsellTitle => 'Display name styling is a VIP perk';

  @override
  String get emojiPickerCrossGroupEmpty =>
      'Join more groups to use their custom emojis here.';

  @override
  String get emojiPickerFavorites => 'Favourites';

  @override
  String emojiPickerFavsLoadError(String error) {
    return 'We couldn\'t load your favourites right now. Try again in a moment. ($error)';
  }

  @override
  String emojiPickerGifsLoadError(String error) {
    return 'We couldn\'t load GIFs right now. Try again in a moment. ($error)';
  }

  @override
  String get emojiPickerGifsNotSetupBody =>
      'Add KLIPY_API_KEY to .env to enable the GIF picker.';

  @override
  String get emojiPickerGifsNotSetupTitle => 'GIFs not set up yet';

  @override
  String get emojiPickerGroupEmpty =>
      'No custom emojis yet. Admins can upload up to 50 in Group Settings.';

  @override
  String get emojiPickerGroupFallback => 'Group';

  @override
  String emojiPickerHiddenFavs(int count) {
    return '$count more saved. Get VIP to see them all.';
  }

  @override
  String emojiPickerLoadError(String error) {
    return 'We couldn\'t load emojis right now. Try again in a moment. ($error)';
  }

  @override
  String emojiPickerNoCustomMatch(String query) {
    return 'No custom emojis match \"$query\".';
  }

  @override
  String emojiPickerNoEmojiMatch(String query) {
    return 'No emojis match \"$query\".';
  }

  @override
  String get emojiPickerNoFavsBody =>
      'Tap the heart on any GIF to save it here for later.';

  @override
  String get emojiPickerNoFavsTitle => 'No favourites yet';

  @override
  String emojiPickerNoGifsMatch(String query) {
    return 'No GIFs match \"$query\".';
  }

  @override
  String get emojiPickerNoTrending => 'No trending GIFs right now.';

  @override
  String get emojiPickerSearchCustom => 'Search custom emojis';

  @override
  String get emojiPickerSearchEmojis => 'Search emojis';

  @override
  String get emojiPickerSearchGifs => 'Search GIFs';

  @override
  String get emojiPickerSectionThisGroup => 'THIS GROUP';

  @override
  String get emojiPickerShowTrending => 'Show trending';

  @override
  String get emojiPickerTabCustom => 'CUSTOM';

  @override
  String get emojiPickerTabEmojis => 'EMOJIS';

  @override
  String get emojiPickerTabGifs => 'GIFS';

  @override
  String get emojiPickerVipBody =>
      'VIP members can use custom emojis from any public group, across every group they\'re in.';

  @override
  String get emojiPickerVipTitle => 'VIP only';

  @override
  String get eventDetailAttendees => 'Attendees';

  @override
  String get eventDetailBeFirst => 'Be the first to RSVP.';

  @override
  String get eventDetailCancelBody =>
      'This will remove the event for everyone who RSVPd. The linked feed post (if any) survives but loses its event card.';

  @override
  String get eventDetailCancelEvent => 'Cancel event';

  @override
  String get eventDetailCancelSub =>
      'Removes the event for everyone. Can\'t be undone.';

  @override
  String eventDetailCancelTitle(String title) {
    return 'Cancel \"$title\"?';
  }

  @override
  String eventDetailErrAttendees(String error) {
    return 'We couldn\'t load the guest list right now. Try again in a moment. ($error)';
  }

  @override
  String get eventDetailErrCancel => 'Couldn\'t cancel event';

  @override
  String get eventDetailErrRsvp => 'Couldn\'t update RSVP';

  @override
  String get eventDetailGoBack => 'Go back';

  @override
  String eventDetailGoing(int count) {
    return '$count going';
  }

  @override
  String get eventDetailGone =>
      'This event was cancelled or is no longer visible.';

  @override
  String get eventDetailHappeningNow => 'HAPPENING NOW';

  @override
  String get eventDetailHosting => 'You\'re hosting this event.';

  @override
  String get eventDetailKeepEvent => 'Keep event';

  @override
  String get eventDetailLocationCopied => 'Location copied to clipboard.';

  @override
  String eventDetailMaybeSuffix(int count) {
    return ' · $count maybe';
  }

  @override
  String get eventDetailOptionsTooltip => 'Event options';

  @override
  String get eventDetailRsvpCant => 'Can\'t';

  @override
  String get eventDetailRsvpGoing => 'Going';

  @override
  String get eventDetailRsvpMaybe => 'Maybe';

  @override
  String get eventsScreenCreateCta => 'Create event';

  @override
  String get eventsScreenEmptyAllBody =>
      'Be the first to plan something. Tap the button below.';

  @override
  String get eventsScreenEmptyAllTitle => 'No upcoming events';

  @override
  String get eventsScreenEmptyMineBody =>
      'RSVP to events you find here. They\'ll show up in this tab.';

  @override
  String get eventsScreenEmptyMineTitle => 'No upcoming RSVPs';

  @override
  String get eventsScreenFilterAll => 'All upcoming';

  @override
  String get eventsScreenFilterMine => 'My RSVPs';

  @override
  String eventsScreenLoadError(String error) {
    return 'We couldn\'t load events right now. Try again in a moment. ($error)';
  }

  @override
  String get eventsScreenTitle => 'Events';

  @override
  String get featureBanEyebrow => 'Feature restricted';

  @override
  String featureBanIssued(String date) {
    return 'Issued $date';
  }

  @override
  String get featureBanKindComment => 'Commenting';

  @override
  String get featureBanKindCreateEvent => 'Creating events';

  @override
  String get featureBanKindCreateGroup => 'Creating groups';

  @override
  String get featureBanKindCreateLobby => 'Hosting Live Lobbies';

  @override
  String get featureBanKindCreatePost => 'Posting';

  @override
  String get featureBanKindJoinLobby => 'Joining Live Lobbies';

  @override
  String get featureBanKindSendDm => 'Direct messages';

  @override
  String get featureBanKindSendGroupMessage => 'Group chat';

  @override
  String get featureBanModerationSays => 'Luney moderation says';

  @override
  String get featureBanNotePermanent =>
      'You can\'t use this feature right now. Tap Settings → Support to appeal.';

  @override
  String get featureBanNoteTemporary =>
      'You can\'t use this feature right now. It\'ll lift automatically. See below.';

  @override
  String featureBanPillLifts(String time) {
    return 'LIFTS $time';
  }

  @override
  String get featureBanPillPermanent => 'PERMANENT';

  @override
  String featureBanPillUntil(String date) {
    return 'UNTIL $date';
  }

  @override
  String get featureBanViewAll => 'View all restrictions';

  @override
  String get featureUnavailableRubric => 'Temporarily unavailable';

  @override
  String get featureUnavailableSource => 'Luney';

  @override
  String get feedbackCategoryBug => 'Bug';

  @override
  String get feedbackCategoryContent => 'Content';

  @override
  String get feedbackCategoryIdea => 'Idea';

  @override
  String get feedbackCategoryOther => 'Other';

  @override
  String get feedbackCategoryUx => 'Design / UX';

  @override
  String get feedbackCommunityEmptyBody =>
      'Staff publish suggestions here once they decide a feature is worth the community weighing in. Check back soon.';

  @override
  String get feedbackCommunityEmptyTitle =>
      'No feedback is open for voting right now';

  @override
  String get feedbackDetailAddEmojiTooltip => 'Add emoji';

  @override
  String feedbackDetailBuildLabel(String build) {
    return 'build $build';
  }

  @override
  String get feedbackDetailCancelReplySemantic => 'Cancel reply';

  @override
  String feedbackDetailCommentsCap(int count) {
    return 'Showing the first $count comments. Older replies aren\'t shown here.';
  }

  @override
  String get feedbackDetailCommentsHeader => 'Comments';

  @override
  String feedbackDetailCommentsLoadError(String error) {
    return 'We couldn\'t load the comments right now. Try again in a moment. ($error)';
  }

  @override
  String get feedbackDetailComposerHintComment => 'Add a comment';

  @override
  String get feedbackDetailComposerHintReply => 'Write a reply';

  @override
  String get feedbackDetailComposerHintStaff => 'Write the Luney team reply';

  @override
  String get feedbackDetailDeleteCommentBody =>
      'This removes your comment from the thread. You can\'t undo this.';

  @override
  String get feedbackDetailDeleteCommentTitle => 'Delete comment?';

  @override
  String get feedbackDetailDeleteMyCommentSemantic => 'Delete my comment';

  @override
  String feedbackDetailInReplyTo(String name) {
    return 'In reply to $name';
  }

  @override
  String get feedbackDetailLikeSemantic => 'Like comment';

  @override
  String get feedbackDetailLuneyTeamBadge => 'Luney team';

  @override
  String get feedbackDetailNetLabel => 'NET';

  @override
  String get feedbackDetailNoComments => 'No comments yet. Be the first.';

  @override
  String get feedbackDetailNotFound =>
      'This feedback isn\'t available, it may have been removed.';

  @override
  String feedbackDetailOpenScreenshot(int index) {
    return 'Open screenshot $index';
  }

  @override
  String get feedbackDetailPostCommentTooltip => 'Post comment';

  @override
  String get feedbackDetailPostStaffTooltip => 'Post Luney team reply';

  @override
  String get feedbackDetailReplyAction => 'Reply';

  @override
  String feedbackDetailReplyingTo(String name) {
    return 'Replying to $name';
  }

  @override
  String get feedbackDetailReplySemantic => 'Reply to this comment';

  @override
  String get feedbackDetailReportCommentTargetLabel => 'this comment';

  @override
  String feedbackDetailScreenshotCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String feedbackDetailShowMoreComments(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Show $count more comments',
      one: 'Show 1 more comment',
    );
    return '$_temp0';
  }

  @override
  String feedbackDetailShowMoreReplies(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Show $count more replies',
      one: 'Show 1 more reply',
    );
    return '$_temp0';
  }

  @override
  String get feedbackDetailStaffModeHint =>
      'Posts an official reply, your name still shows but it is badged \"Luney team\"';

  @override
  String get feedbackDetailStaffModeLockedHint =>
      'This isn\'t open for voting, replies post as the Luney team';

  @override
  String get feedbackDetailStaffModeTitle => 'Reply as the Luney team';

  @override
  String get feedbackDetailUnlikeSemantic => 'Unlike comment';

  @override
  String get feedbackDetailViewParentSemantic =>
      'View the comment this replies to';

  @override
  String feedbackLoadError(String error) {
    return 'We couldn\'t load feedback right now. Try again in a moment. ($error)';
  }

  @override
  String get feedbackMineEmptyBody =>
      'Bug? Idea? UX paper cut? Send it over and we read every one.';

  @override
  String get feedbackMineEmptyTitle => 'You haven\'t sent feedback yet';

  @override
  String get feedbackReportTargetLabel => 'this suggestion';

  @override
  String get feedbackSendButton => 'Send feedback';

  @override
  String feedbackShippedIn(String version) {
    return 'Shipped in $version';
  }

  @override
  String feedbackStaffNote(String reason) {
    return 'Staff note: $reason';
  }

  @override
  String get feedbackStatusDenied => 'Not planned';

  @override
  String get feedbackStatusDuplicate => 'Duplicate';

  @override
  String get feedbackStatusPending => 'Pending review';

  @override
  String get feedbackStatusShipped => 'Shipped';

  @override
  String get feedbackStatusVoting => 'Open for voting';

  @override
  String get feedbackStatusWip => 'Work in progress';

  @override
  String get feedbackSubmitAddScreenshotA11y => 'Add screenshot';

  @override
  String get feedbackSubmitAddTile => 'Add';

  @override
  String get feedbackSubmitBodyHint =>
      'Describe what you want, what bug you hit, or what feels off. The more context the better.';

  @override
  String get feedbackSubmitErrorOp => 'Couldn\'t send your feedback';

  @override
  String get feedbackSubmitRemoveScreenshotA11y => 'Remove screenshot';

  @override
  String get feedbackSubmitScreenshots => 'Screenshots';

  @override
  String get feedbackSubmitScreenshotsHint =>
      'Optional, super helpful for bug reports';

  @override
  String get feedbackSubmitSendCta => 'Send to staff';

  @override
  String get feedbackSubmitSentBody =>
      'Staff read every submission. You\'ll get a notification when there\'s a status update on this one.';

  @override
  String get feedbackSubmitSentRubric => 'SENT TO STAFF';

  @override
  String get feedbackSubmitSentTitle => 'Thanks for the feedback';

  @override
  String get feedbackSubmitSubtitle =>
      'Bug, idea, or paper cut, share it. Staff reads everything and gets back to you with a status.';

  @override
  String get feedbackSubmitTitle => 'Send feedback';

  @override
  String get feedbackSubmitTitleHint =>
      'Short title (e.g. \"Add a dark Sunrise theme\")';

  @override
  String get feedbackSubmitTooltip => 'Submit feedback';

  @override
  String get feedbackTabCommunity => 'Community';

  @override
  String get feedbackTabMine => 'Mine';

  @override
  String get feedbackTitle => 'Feedback';

  @override
  String get feedbackUnavailable =>
      'Feedback isn\'t available right now. Try again later.';

  @override
  String get feedPendingDismissA11y => 'Dismiss this failed post';

  @override
  String get feedPendingFailedRetry => 'Send failed · Tap to retry';

  @override
  String get feedPendingFailedShort => 'send failed';

  @override
  String get feedPendingNow => 'now';

  @override
  String get feedPendingPosting => 'Posting…';

  @override
  String get feedPendingTapToRetryA11y => 'Tap to retry sending this post';

  @override
  String get forgotPasswordBackTooltip => 'Back to sign in';

  @override
  String get forgotPasswordEmailHint => 'you@domain.com';

  @override
  String get forgotPasswordEmailLabel => 'Email';

  @override
  String get forgotPasswordErrInvalid => 'Enter a valid email.';

  @override
  String get forgotPasswordErrSend => 'Couldn\'t send the password reset link';

  @override
  String get forgotPasswordSend => 'Send reset link';

  @override
  String get forgotPasswordSending => 'Sending…';

  @override
  String get forgotPasswordSentPrefix => 'If an account exists for';

  @override
  String get forgotPasswordSentSuffix =>
      'we\'ve sent a reset link to it. Tap the link from your phone to pick a new password.';

  @override
  String get forgotPasswordSentTitle => 'Check your inbox';

  @override
  String get forgotPasswordSubtitle =>
      'Enter the email on your account and we\'ll send a reset link.';

  @override
  String get forgotPasswordTitle => 'Forgot your password?';

  @override
  String get friendBtnAccept => 'Accept';

  @override
  String get friendBtnAdd => 'Add Friend';

  @override
  String get friendBtnDecline => 'Decline';

  @override
  String get friendBtnErrUpdate => 'Couldn\'t update friendship';

  @override
  String get friendBtnFriends => 'Friends';

  @override
  String get friendBtnRequestSent => 'Request sent';

  @override
  String get friendBtnUnfriend => 'Unfriend';

  @override
  String get friendBtnUnfriendTitle => 'Unfriend?';

  @override
  String get friendRequestsActionAccept => 'Accept';

  @override
  String get friendRequestsActionDecline => 'Decline';

  @override
  String get friendRequestsEmptyFindPeopleCta => 'Find people';

  @override
  String get friendRequestsEmptyReceived => 'No requests waiting on you.';

  @override
  String get friendRequestsEmptyReceivedBody =>
      'When someone sends you a friend request, it shows up here.';

  @override
  String get friendRequestsEmptySent =>
      'You haven\'t sent any pending requests.';

  @override
  String get friendRequestsEmptySentBody =>
      'Send one from someone\'s profile and it\'ll wait here until they accept or decline.';

  @override
  String get friendRequestsErrAccept => 'Couldn\'t accept the friend request';

  @override
  String get friendRequestsErrCancel => 'Couldn\'t cancel the friend request';

  @override
  String get friendRequestsErrDecline => 'Couldn\'t decline the friend request';

  @override
  String friendRequestsLoadError(String error) {
    return 'We couldn\'t load your friend requests right now. Try again in a moment. ($error)';
  }

  @override
  String get friendRequestsTabReceived => 'Received';

  @override
  String get friendRequestsTabSent => 'Sent';

  @override
  String get friendRequestsTitle => 'Friend Requests';

  @override
  String get friendshipAnniversaryCardSent => 'Card sent 💌';

  @override
  String friendshipAnniversarySince(String date) {
    return 'Friends since $date';
  }

  @override
  String get friendshipAnniversaryTapToSend => 'Tap to send a card';

  @override
  String friendshipAnniversaryTodayTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count years of friendship today',
      one: '1 year of friendship today',
    );
    return '$_temp0';
  }

  @override
  String friendshipAnniversaryYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count years',
      one: '1 year',
    );
    return '$_temp0';
  }

  @override
  String get friendsListAddCircle => 'Add to inner circle';

  @override
  String get friendsListEmptyMineBody =>
      'Tap a profile and hit Add Friend to start a connection.';

  @override
  String get friendsListEmptyMineCta => 'Check friend requests';

  @override
  String get friendsListEmptyMineTitle => 'No friends yet';

  @override
  String get friendsListEmptyOtherBody =>
      'When they\'re connected with people, they\'ll show up here.';

  @override
  String get friendsListEmptyOtherTitle => 'No friends to show';

  @override
  String get friendsListErrCircle => 'Couldn\'t update Circle';

  @override
  String friendsListLoadError(String error) {
    return 'We couldn\'t load your friends right now. Try again in a moment. ($error)';
  }

  @override
  String get friendsListRemoveCircle => 'Remove from inner circle';

  @override
  String get friendsListTitleMine => 'Your Friends';

  @override
  String get friendsListTitleOther => 'Friends';

  @override
  String get groupCardJoin => '+ Join';

  @override
  String get groupCardJoined => 'Joined ✓';

  @override
  String get groupCardJoinOp => 'Couldn\'t join group';

  @override
  String get groupCardLeaveOp => 'Couldn\'t leave group';

  @override
  String groupCardMembers(int count, String formatted) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$formatted members',
      one: '$formatted member',
    );
    return '$_temp0';
  }

  @override
  String get groupCardPendingDeletion => 'PENDING DELETION';

  @override
  String get groupCardStaffChip => 'STAFF';

  @override
  String get groupChatDeleteBody =>
      'This removes it for everyone in the group.';

  @override
  String get groupChatDeleteBodyAdmin =>
      'You\'re deleting another member\'s message as a group admin/mod. This removes it for everyone in the group.';

  @override
  String get groupChatDeletedSnack => 'Message deleted';

  @override
  String get groupChatDeleteTitle => 'Delete message?';

  @override
  String get groupChatDeleteTitleAdmin => 'Delete this message?';

  @override
  String get groupChatEditLastMessageTooltip => 'Edit last message';

  @override
  String get groupChatEmpty => 'No messages yet. Say hi 👋';

  @override
  String get groupChatErrDelete => 'Couldn\'t delete message';

  @override
  String get groupChatErrReact => 'Couldn\'t react';

  @override
  String get groupChatErrRestore => 'Couldn\'t restore message';

  @override
  String get groupChatErrSaveEdit => 'Couldn\'t save edit';

  @override
  String get groupChatErrSendGif => 'Couldn\'t send GIF';

  @override
  String get groupChatErrSendMessage => 'Couldn\'t send message';

  @override
  String groupChatLoadError(String error) {
    return 'We couldn\'t load this chat right now. Try again in a moment. ($error)';
  }

  @override
  String get groupChatMenuAddReaction => 'Add reaction';

  @override
  String get groupChatMenuAdminDelete => 'Admin delete';

  @override
  String get groupChatMenuCopyText => 'Copy text';

  @override
  String get groupChatMenuDeleteAdmin => 'Delete (group admin)';

  @override
  String get groupChatMenuEdit => 'Edit';

  @override
  String get groupChatMenuFavGif => 'Favourite GIF';

  @override
  String get groupChatMenuPinMessage => 'Pin to chat';

  @override
  String get groupChatMenuReply => 'Reply';

  @override
  String get groupChatMenuReport => 'Report message';

  @override
  String get groupChatMenuRestore => 'Restore (within 7 days)';

  @override
  String get groupChatMenuUnfavGif => 'Remove from favourites';

  @override
  String get groupChatMenuUnpinMessage => 'Unpin from chat';

  @override
  String get groupChatMomentShort => 'a moment';

  @override
  String get groupChatMutedTitle => 'You\'re muted in this group';

  @override
  String groupChatMuteLiftsIn(String remaining) {
    return 'Mute lifts in $remaining.';
  }

  @override
  String get groupChatOpenPinnedMessages => 'View pinned messages';

  @override
  String get groupChatPinAdminOnly => 'Only admins can pin messages';

  @override
  String groupChatRecordingWarnFailed(String error) {
    return 'We couldn\'t post the recording warning just now. ($error)';
  }

  @override
  String get groupChatRemovedByModeration => '🛡️ Removed by Luney moderation';

  @override
  String get groupChatReplySnippetPhoto => '📷 Photo';

  @override
  String get groupChatReportLabel => 'this message';

  @override
  String get groupChatRestoredBody =>
      'The message is visible again to everyone who could see it before the removal.';

  @override
  String get groupChatRestoredRubric => 'MESSAGE RESTORED';

  @override
  String get groupChatRestoredTitle => 'Message restored';

  @override
  String groupChatRulesEventLine(String who, String time) {
    return '$who · /rules · $time';
  }

  @override
  String groupChatScreenshotWarnFailed(String error) {
    return 'We couldn\'t post the screenshot warning just now. ($error)';
  }

  @override
  String get groupChatSomeone => 'Someone';

  @override
  String get groupChatVerbChatWiped => 'cleared the chat history';

  @override
  String get groupChatVerbDefault => 'event';

  @override
  String get groupChatVerbJoined => 'joined the group';

  @override
  String get groupChatVerbPin => 'pinned a message';

  @override
  String get groupChatVerbScreenRecording => 'started screen recording';

  @override
  String get groupChatVerbScreenshot => 'took a screenshot';

  @override
  String get groupChatVerbUnpin => 'unpinned a message';

  @override
  String get groupChatYou => 'You';

  @override
  String get groupCommentsCancelReply => 'Cancel reply';

  @override
  String get groupCommentsDeleteA11y => 'Delete comment';

  @override
  String get groupCommentsEmpty => 'No comments yet. Be the first.';

  @override
  String get groupCommentsErrDelete => 'Couldn\'t delete comment';

  @override
  String get groupCommentsErrEdit => 'Couldn\'t save edit';

  @override
  String get groupCommentsErrPost => 'Couldn\'t post comment';

  @override
  String get groupCommentsErrReact => 'Couldn\'t react';

  @override
  String get groupCommentsHint => 'Write a comment…';

  @override
  String groupCommentsLoadError(String error) {
    return 'We couldn\'t load the comments right now. Try again in a moment. ($error)';
  }

  @override
  String get groupCommentsMenuMore => 'More';

  @override
  String get groupCommentsMenuReport => 'Report';

  @override
  String groupCommentsOpenProfileA11y(String name) {
    return 'Open $name\'s profile';
  }

  @override
  String get groupCommentsPostA11y => 'Post comment';

  @override
  String get groupCommentsRemoved => '🛡️ Removed by Luney moderation';

  @override
  String get groupCommentsReply => 'Reply';

  @override
  String groupCommentsReplyingTo(String handle) {
    return 'Replying to @$handle';
  }

  @override
  String get groupCommentsTitle => 'Comments';

  @override
  String get groupContentActionsAdminDelete => 'Admin delete';

  @override
  String get groupContentActionsDeleteAdminTile => 'Delete (group admin)';

  @override
  String get groupContentActionsDeleteBody =>
      'This removes it for everyone in the group.';

  @override
  String groupContentActionsDeleteBodyAdmin(String kind) {
    return 'You\'re deleting another member\'s $kind as a group admin/mod. This removes it for everyone in the group.';
  }

  @override
  String groupContentActionsDeleteTitle(String kind) {
    return 'Delete $kind?';
  }

  @override
  String groupContentActionsDeleteTitleAdmin(String kind) {
    return 'Delete this $kind?';
  }

  @override
  String groupContentActionsErrDelete(String kind) {
    return 'Couldn\'t delete $kind';
  }

  @override
  String get groupContentActionsErrRestore => 'Couldn\'t restore content';

  @override
  String get groupContentActionsKindComment => 'comment';

  @override
  String get groupContentActionsKindItem => 'item';

  @override
  String get groupContentActionsKindMessage => 'message';

  @override
  String get groupContentActionsKindPost => 'post';

  @override
  String get groupContentActionsReportComment => 'Report comment';

  @override
  String get groupContentActionsReportDefault => 'Report';

  @override
  String get groupContentActionsReportMessage => 'Report message';

  @override
  String get groupContentActionsReportPost => 'Report post';

  @override
  String get groupContentActionsRestore => 'Restore (within 7 days)';

  @override
  String get groupContentActionsRestoredBody =>
      'The content is visible again to everyone who could see it before the removal.';

  @override
  String get groupContentActionsRestoredRubric => 'CONTENT RESTORED';

  @override
  String get groupContentActionsRestoredTitle => 'Restored';

  @override
  String get groupContentActionsTargetComment => 'this comment';

  @override
  String get groupContentActionsTargetDefault => 'this content';

  @override
  String get groupContentActionsTargetMessage => 'this message';

  @override
  String get groupContentActionsTargetPost => 'this post';

  @override
  String get groupDetailErrJoin => 'Couldn\'t join group';

  @override
  String get groupDetailJoin => 'Join this group';

  @override
  String get groupDetailJoinA11y => 'Join this group';

  @override
  String get groupDetailJoining => 'Joining…';

  @override
  String groupDetailLoadError(String error) {
    return 'We couldn\'t load this group right now. Try again in a moment. ($error)';
  }

  @override
  String groupDetailMemberCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count members',
      one: '1 member',
    );
    return '$_temp0';
  }

  @override
  String get groupDetailMyProfileTooltip => 'My profile in this group';

  @override
  String get groupDetailNotAllowedBody =>
      'Suspending the Staff Lounge would lock every admin out of the channel they\'d use to lift the suspension. The server enforces this too.';

  @override
  String get groupDetailNotAllowedRubric => 'NOT ALLOWED';

  @override
  String get groupDetailNotAllowedTitle => 'Can\'t suspend the Staff Lounge';

  @override
  String get groupDetailPermBody =>
      'Group moderation actions are gated on the suspend_groups staff permission. Ask a super-admin to grant it from the staff role tools.';

  @override
  String get groupDetailPermRubric => 'NOT ALLOWED';

  @override
  String get groupDetailPermTitle => 'Need the suspend_groups perm';

  @override
  String get groupDetailRulesLabel => 'RULES';

  @override
  String get groupDetailSettingsTooltip => 'Group settings';

  @override
  String get groupDetailsTabAbout => 'ABOUT THIS GROUP';

  @override
  String get groupDetailsTabCreated => 'Created';

  @override
  String get groupDetailsTabEditDetails => 'Edit details';

  @override
  String get groupDetailsTabEditDetailsA11y => 'Edit details';

  @override
  String get groupDetailsTabEmptyAdmin =>
      'Add a description and an About page so members know what this group is about. Tap \"Edit details\" below.';

  @override
  String get groupDetailsTabEmptyMember => 'No details yet.';

  @override
  String groupDetailsTabLoadError(String error) {
    return 'We couldn\'t load these details right now. Try again in a moment. ($error)';
  }

  @override
  String get groupDetailsTabMembers => 'Members';

  @override
  String get groupDetailsTabRules => 'RULES';

  @override
  String groupDetailSuspendedLine(String base, String kind) {
    return '$base ($kind)';
  }

  @override
  String get groupDetailSuspendedNoDate => 'Suspended by Luney moderation';

  @override
  String groupDetailSuspendedUntil(String date) {
    return 'Suspended until $date';
  }

  @override
  String get groupDetailSuspKindFrozen => 'frozen, no access';

  @override
  String get groupDetailSuspKindViewOnly => 'view-only';

  @override
  String get groupDetailTabChat => 'Chat';

  @override
  String get groupDetailTabDetails => 'Details';

  @override
  String get groupDetailTabEvents => 'Events';

  @override
  String get groupDetailTabLobbies => 'Lobbies';

  @override
  String get groupDetailTabMembers => 'Members';

  @override
  String get groupDetailTabPosts => 'Posts';

  @override
  String get groupDetailUnlockNote => 'Posts and chat unlock after you join.';

  @override
  String get groupEventsTabCreateCta => 'Create event';

  @override
  String get groupEventsTabEmptyCanCreate =>
      'Plan something for the group. Tap the button below.';

  @override
  String get groupEventsTabEmptyCannotCreate =>
      'Group admins or mods can create events here.';

  @override
  String groupEventsTabEmptyTitle(String group) {
    return 'No upcoming events in $group';
  }

  @override
  String groupEventsTabLoadError(String error) {
    return 'We couldn\'t load these events right now. Try again in a moment. ($error)';
  }

  @override
  String get groupLobbiesTabEmptyBody =>
      'Be the first to start one. Members of this group get a notification.';

  @override
  String groupLobbiesTabEmptyTitle(String groupName) {
    return 'No live lobbies in $groupName';
  }

  @override
  String get groupLobbiesTabPausedBody =>
      'Live Lobbies is paused this month while we sort out audio costs. Back soon.';

  @override
  String get groupLobbiesTabPausedTitle => 'Lobbies paused';

  @override
  String get groupLobbiesTabStart => 'Start a lobby';

  @override
  String get groupNotifSettingsClearedBody =>
      'Every per-group override is gone. Each kind now inherits your app-wide notification preference. The DM permission wasn\'t touched.';

  @override
  String get groupNotifSettingsClearedRubric => 'CLEARED';

  @override
  String get groupNotifSettingsClearedTitle => 'Overrides cleared';

  @override
  String get groupNotifSettingsClearMenu => 'Clear overrides';

  @override
  String get groupNotifSettingsDmSubtitle =>
      'Off = members of this group can\'t start a new DM with you or send new messages in existing threads. Existing history stays readable. If you share other groups where DMs are on, those still work.';

  @override
  String get groupNotifSettingsDmTitle => 'Allow members to DM me';

  @override
  String get groupNotifSettingsErrApply => 'Couldn\'t apply preference';

  @override
  String get groupNotifSettingsErrSave => 'Couldn\'t save preference';

  @override
  String get groupNotifSettingsInApp => 'In-app';

  @override
  String get groupNotifSettingsInfo =>
      'Each kind defaults to your app-wide setting. Flip \"Override\" to set group-specific Push + In-app; works even if the kind is silenced globally.';

  @override
  String groupNotifSettingsLoadError(String error) {
    return 'We couldn\'t load your notification settings right now. Try again in a moment. ($error)';
  }

  @override
  String get groupNotifSettingsMuteBody =>
      'Overrides every group-scoped kind to off (push + in-app). Wins over your app-wide setting, so this group goes silent even when notifications are on globally. The DM permission isn\'t changed.';

  @override
  String get groupNotifSettingsMuteCta => 'Mute group';

  @override
  String get groupNotifSettingsMutedBody =>
      'You won\'t get pushes or inbox rows for any kind from this group anymore. Flip individual kinds back on any time from this screen.';

  @override
  String get groupNotifSettingsMutedRubric => 'MUTED';

  @override
  String get groupNotifSettingsMutedTitle => 'Group muted';

  @override
  String get groupNotifSettingsMuteTitle => 'Mute this group?';

  @override
  String get groupNotifSettingsOverrideOff => 'Inheriting app-wide setting';

  @override
  String get groupNotifSettingsOverrideOn => 'Override app-wide setting';

  @override
  String groupNotifSettingsOverridesError(String error) {
    return 'We couldn\'t load your overrides right now. Try again in a moment. ($error)';
  }

  @override
  String get groupNotifSettingsPush => 'Push';

  @override
  String get groupNotifSettingsResetBody =>
      'Removes every per-group override. Each kind goes back to inheriting your app-wide setting. The DM permission isn\'t changed.';

  @override
  String get groupNotifSettingsResetCta => 'Reset';

  @override
  String get groupNotifSettingsResetTitle => 'Reset overrides?';

  @override
  String get groupNotifSettingsSectionNotifications => 'NOTIFICATIONS';

  @override
  String get groupNotifSettingsSectionPrivacy => 'PRIVACY';

  @override
  String get groupNotifSettingsTitle => 'Notifications';

  @override
  String get groupPermCommentDesc => 'Reply to existing group-bulletin posts.';

  @override
  String get groupPermCommentLabel => 'Comment on posts';

  @override
  String get groupPermDeleteOthersDesc =>
      'Remove chat messages from anyone (moderator power).';

  @override
  String get groupPermDeleteOthersLabel => 'Delete others\' messages';

  @override
  String get groupPermInviteMembersDesc =>
      'Generate invite codes for the group.';

  @override
  String get groupPermInviteMembersLabel => 'Invite members';

  @override
  String get groupPermManageGroupDesc =>
      'Edit group name, privacy, tags, default permissions.';

  @override
  String get groupPermManageGroupLabel => 'Manage group';

  @override
  String get groupPermManageMembersDesc =>
      'Kick or change roles of other members.';

  @override
  String get groupPermManageMembersLabel => 'Manage members';

  @override
  String get groupPermManageRolesDesc => 'Create / edit / delete custom roles.';

  @override
  String get groupPermManageRolesLabel => 'Manage roles';

  @override
  String get groupPermPinMessagesDesc =>
      'Pin important messages so they stay at the top.';

  @override
  String get groupPermPinMessagesLabel => 'Pin messages';

  @override
  String get groupPermPostDesc =>
      'Create new posts on the group bulletin board.';

  @override
  String get groupPermPostLabel => 'Post to bulletin';

  @override
  String get groupPermReactDesc => 'Add emoji reactions to chat and DMs.';

  @override
  String get groupPermReactLabel => 'React to messages';

  @override
  String get groupPermSendGifsDesc =>
      'Share GIFs in group chat (when GIF support lands).';

  @override
  String get groupPermSendGifsLabel => 'Send GIFs';

  @override
  String get groupPermSendImagesDesc =>
      'Attach photos to chat messages and posts.';

  @override
  String get groupPermSendImagesLabel => 'Send images';

  @override
  String get groupPermSendMessagesDesc => 'Send text messages in group chat.';

  @override
  String get groupPermSendMessagesLabel => 'Send messages';

  @override
  String get groupPermViewHistoryDesc =>
      'See messages posted before they joined.';

  @override
  String get groupPermViewHistoryLabel => 'View history';

  @override
  String get groupPostsComposerHint => 'Post to this group…';

  @override
  String get groupPostsEmpty => 'No posts yet. Write the first one.';

  @override
  String get groupPostsErrPost => 'Couldn\'t post to group';

  @override
  String groupPostsLoadError(String error) {
    return 'We couldn\'t load these posts right now. Try again in a moment. ($error)';
  }

  @override
  String get groupPostsPostCta => 'Post';

  @override
  String get groupPostsRemoved => 'Removed by Luney moderation';

  @override
  String get groupPostsTextHint => 'What do you want to share?';

  @override
  String get groupRoleInviteAcceptCta =>
      'Accept & agree to Group Terms of Service';

  @override
  String get groupRoleInviteAcceptedRubric => 'INVITE ACCEPTED';

  @override
  String get groupRoleInviteAcceptErrorOp => 'Couldn\'t accept invite';

  @override
  String get groupRoleInviteBeforeAccept => 'BEFORE YOU ACCEPT';

  @override
  String get groupRoleInviteBeforeAcceptBody =>
      'Group admins and moderators agree to additional rules on top of the platform-wide Terms of Service. They cover how to enforce community rules, how to use moderator tools, and what behaviour we expect when you\'re acting on Luney\'s behalf inside a group. By accepting this invite you confirm you\'ve read and agree to follow them.';

  @override
  String get groupRoleInviteDecline => 'Decline';

  @override
  String groupRoleInviteDeclineConfirmBody(String group) {
    return 'You\'ll stay in $group as a member. The owner can re-invite you any time.';
  }

  @override
  String get groupRoleInviteDeclineConfirmTitle => 'Decline this invite?';

  @override
  String groupRoleInviteDeclinedBody(String group) {
    return 'You\'re still a member of $group. The owner can re-invite you any time.';
  }

  @override
  String get groupRoleInviteDeclinedRubric => 'INVITE DECLINED';

  @override
  String get groupRoleInviteDeclinedTitle => 'Invite declined';

  @override
  String get groupRoleInviteDeclineErrorOp => 'Couldn\'t decline invite';

  @override
  String get groupRoleInviteGroupFallback => 'a group';

  @override
  String groupRoleInviteIntro(String inviter, String article, String group) {
    return '$inviter invited you to be $article of $group. As $article, you\'ll help keep the group safe and on-topic: review reports, remove rule-breaking content, and (for admins) shape who else can help moderate.';
  }

  @override
  String get groupRoleInviteLater => 'Later';

  @override
  String groupRoleInviteLoadError(String error) {
    return 'We couldn\'t load this invite right now. Try again in a moment.\n($error)';
  }

  @override
  String groupRoleInviteNowAdminBody(String group) {
    return 'You can help moderate $group: review reports, remove rule-breaking content, and shape who else can help moderate.';
  }

  @override
  String get groupRoleInviteNowAdminTitle => 'You\'re now an admin';

  @override
  String groupRoleInviteNowModBody(String group) {
    return 'You can help moderate $group: review reports and remove rule-breaking content.';
  }

  @override
  String get groupRoleInviteNowModTitle => 'You\'re now a moderator';

  @override
  String get groupRoleInviteOpenGroup => 'Open group';

  @override
  String get groupRoleInviteReadFirst => 'Read the Terms above first';

  @override
  String get groupRoleInviteResolved =>
      'This invite has already been accepted, declined, or revoked. You\'re good either way. Nothing else to do here.';

  @override
  String get groupRoleInviteRoleArticleAdmin => 'an admin';

  @override
  String get groupRoleInviteRoleArticleMod => 'a moderator';

  @override
  String get groupRoleInviteRoleLabelAdmin => 'Group admin';

  @override
  String get groupRoleInviteRoleLabelMod => 'Group moderator';

  @override
  String get groupRoleInviteSomeone => 'Someone';

  @override
  String get groupRoleInviteTitle => 'Group invitation';

  @override
  String get groupRoleInviteTosRead => 'Group Terms of Service · read ✓';

  @override
  String get groupRoleInviteTosUnread => 'Read the Group Terms of Service';

  @override
  String get groupRoleInviteTosUpdatedBody =>
      'A new Group ToS was just published. Review and accept it, then come back here to accept this invite.';

  @override
  String get groupRoleInviteTosUpdatedRubric => 'GROUP TOS UPDATED';

  @override
  String get groupRoleInviteTosUpdatedTitle => 'New Group Terms of Service';

  @override
  String get groupSafetyPostureBadgeOff => 'OFF';

  @override
  String get groupSafetyPostureBadgeOn => 'ON';

  @override
  String get groupSafetyPostureLabel => 'SAFETY';

  @override
  String get groupSafetyPostureOff =>
      'Off. Screenshots here are not flagged. Photos and messages you share can be captured without anyone being told.';

  @override
  String get groupSafetyPostureOn =>
      'On. If someone screenshots in this group, the photo\'s owner is notified and a note is added to the chat.';

  @override
  String get groupSafetyPostureScreenshotTitle => 'Screenshot warnings';

  @override
  String get groupsCreateButton => '+ Create group';

  @override
  String get groupsCreateSemantic => 'Create group';

  @override
  String get groupsEmptyCreate => 'No groups yet. Create the first one.';

  @override
  String get groupsEmptyHidden => 'No groups yet.';

  @override
  String get groupSettingsAboutHint =>
      'About this group: rules, links, what to expect (up to 4000 chars)';

  @override
  String get groupSettingsAdd => 'Add';

  @override
  String get groupSettingsAddRule => 'Add rule';

  @override
  String get groupSettingsAuditEmptyBody =>
      'Admin actions (deletes, role changes, emoji uploads, etc.) will show up here. Visible to members with the View audit log permission.';

  @override
  String get groupSettingsAuditEmptyTitle => 'Nothing here yet.';

  @override
  String get groupSettingsAuditSomeone => 'Someone';

  @override
  String get groupSettingsConfirmDeletionTitle => 'Confirm deletion';

  @override
  String get groupSettingsContinue => 'Continue';

  @override
  String get groupSettingsCreateInvite => 'Create invite';

  @override
  String get groupSettingsCreatingInvite => 'Creating…';

  @override
  String get groupSettingsDefaultMemberInfo =>
      'What every member can do unless a custom role grants more. Always applies on top of admin / mod baselines.';

  @override
  String get groupSettingsDefaultMemberRoleTitle => 'Default Member Role';

  @override
  String groupSettingsDeleteEmojiBody(String code) {
    return 'Existing reactions and chat messages keep their reference but render the literal :$code: instead.';
  }

  @override
  String groupSettingsDeleteEmojiTitle(String code) {
    return 'Delete :$code: ?';
  }

  @override
  String get groupSettingsDeleteGroupBody =>
      'As soon as you confirm, the group disappears for everyone, including you. You then have 7 days to email Luney Support if you want it brought back. After 7 days the group and everything in it (posts, chat, photos) is deleted for good and can\'t be recovered. You can\'t undo this yourself, only Support can, and only within those 7 days.';

  @override
  String get groupSettingsDeleteGroupLabel => 'Delete group';

  @override
  String get groupSettingsDeleteGroupSub =>
      'Hides the group for everyone right away. You have 7 days to contact Support to bring it back, then it\'s gone for good. Owner only.';

  @override
  String get groupSettingsDeleteGroupTitle => 'Delete this group?';

  @override
  String get groupSettingsDeleteRoleBody =>
      'Members with this role will lose its permissions.';

  @override
  String get groupSettingsDeleteRoleTitle => 'Delete role?';

  @override
  String get groupSettingsDescHint => 'Short summary (up to 500 chars)';

  @override
  String get groupSettingsDetailsBodyLenErr =>
      'About text must be 4000 chars or less.';

  @override
  String get groupSettingsDetailsDescLenErr =>
      'Short description must be 500 chars or less.';

  @override
  String get groupSettingsDetailsGuestLenErr =>
      'Guest welcome must be 4000 chars or less.';

  @override
  String get groupSettingsDetailsIntro =>
      'Shown on the Details tab. The short summary appears at the top of the join page; the longer \"About\" body shows below it.';

  @override
  String get groupSettingsDetailsRubric => 'DETAILS UPDATED';

  @override
  String get groupSettingsDetailsSavedMsg =>
      'The Details tab now shows your updated description and About body. Non-members see what you allowed via the guest toggles.';

  @override
  String get groupSettingsDetailsSavedTitle => 'Details saved';

  @override
  String get groupSettingsDetailsUpToDate => 'Details up to date';

  @override
  String get groupSettingsEditRoleTitle => 'Edit Role';

  @override
  String get groupSettingsEditRule => 'Edit rule';

  @override
  String get groupSettingsEmojiCapErr =>
      'Hit the 50-emoji cap for this group. Delete one to upload more.';

  @override
  String get groupSettingsEmojiDupErr =>
      'A different emoji already uses that shortcode.';

  @override
  String get groupSettingsEmojiShortcodeErr =>
      'Shortcode must be 2–32 lowercase letters, numbers, or underscores.';

  @override
  String get groupSettingsEmojisIntro =>
      'Custom emojis show up in the picker for everyone in this group. VIPs can use them across every group they\'re in (unless this group is private). 50 max per group · 256 KB each · PNG / GIF / WEBP.';

  @override
  String groupSettingsEmojiTooBig(int kb) {
    return 'Emoji must be under 256 KB (this one is $kb KB).';
  }

  @override
  String groupSettingsEntriesOnRecord(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entries on record',
      one: '1 entry on record',
    );
    return '$_temp0';
  }

  @override
  String get groupSettingsErrChangeSetting => 'Couldn\'t change setting';

  @override
  String get groupSettingsErrCreateInvite => 'Couldn\'t create invite';

  @override
  String get groupSettingsErrCreateRole => 'Couldn\'t create role';

  @override
  String get groupSettingsErrDeleteEmoji => 'Couldn\'t delete emoji';

  @override
  String get groupSettingsErrDeleteGroup => 'Couldn\'t delete the group';

  @override
  String get groupSettingsErrDeleteRole => 'Couldn\'t delete role';

  @override
  String groupSettingsErrLoadAuditLog(String error) {
    return 'We couldn\'t load the audit log right now. Try again in a moment. ($error)';
  }

  @override
  String groupSettingsErrLoadEmojis(String error) {
    return 'We couldn\'t load these emojis right now. Try again in a moment. ($error)';
  }

  @override
  String groupSettingsErrLoadGroup(String error) {
    return 'We couldn\'t load this group right now. Try again in a moment. ($error)';
  }

  @override
  String groupSettingsErrLoadHistory(String error) {
    return 'We couldn\'t load the history right now. Try again in a moment. ($error)';
  }

  @override
  String groupSettingsErrLoadInvites(String error) {
    return 'We couldn\'t load the invites right now. Try again in a moment. ($error)';
  }

  @override
  String groupSettingsErrLoadRoles(String error) {
    return 'We couldn\'t load the roles right now. Try again in a moment. ($error)';
  }

  @override
  String groupSettingsErrLoadViolations(String error) {
    return 'We couldn\'t load these violations right now. Try again in a moment. ($error)';
  }

  @override
  String get groupSettingsErrRemovePhoto => 'Couldn\'t remove photo';

  @override
  String get groupSettingsErrRename => 'Couldn\'t rename the group';

  @override
  String get groupSettingsErrRevokeInvite => 'Couldn\'t revoke invite';

  @override
  String get groupSettingsErrRoleLimit =>
      'You\'ve hit the role limit for this group.';

  @override
  String get groupSettingsErrSaveDetails => 'Couldn\'t save details';

  @override
  String get groupSettingsErrSaveRole => 'Couldn\'t save role';

  @override
  String get groupSettingsErrSaveRules => 'Couldn\'t save rules';

  @override
  String get groupSettingsErrSaveTags => 'Couldn\'t save tags';

  @override
  String get groupSettingsErrUploadPhoto => 'Couldn\'t upload photo';

  @override
  String get groupSettingsErrWipeChat => 'Couldn\'t wipe chat';

  @override
  String get groupSettingsExpires => 'Expires';

  @override
  String get groupSettingsExpiry12Hours => '12 hours';

  @override
  String get groupSettingsExpiry1Day => '1 day';

  @override
  String get groupSettingsExpiry1Hour => '1 hour';

  @override
  String get groupSettingsExpiry30Days => '30 days';

  @override
  String get groupSettingsExpiry6Hours => '6 hours';

  @override
  String get groupSettingsExpiry7Days => '7 days';

  @override
  String get groupSettingsExpiryNever => 'Never';

  @override
  String groupSettingsGroupDeletedMsg(String date) {
    return 'The group is now hidden from everyone. If you change your mind, email Luney Support before $date and they can bring it back. After that date the group and everything in it is gone for good.';
  }

  @override
  String get groupSettingsGroupDeletedRubric => 'GROUP DELETED';

  @override
  String get groupSettingsGroupDeletedTitle => 'Group deleted';

  @override
  String get groupSettingsGuestBodyToggle =>
      'Welcome guests with a separate message';

  @override
  String get groupSettingsGuestBodyToggleSub =>
      'When on, non-members see your guest welcome instead of the main \"About\" body.';

  @override
  String get groupSettingsGuestHint =>
      'Welcome guests: what to know before joining (up to 4000 chars)';

  @override
  String get groupSettingsHideFromMutualsToggle => 'Hide from Mutual Groups';

  @override
  String get groupSettingsHideFromMutualsToggleSub =>
      'Don\'t show this group in anyone\'s \"mutual groups\" section on profiles. Useful for sensitive communities.';

  @override
  String get groupSettingsHideWhoJoined => 'Hide who joined';

  @override
  String get groupSettingsInfoNameLenErr =>
      'Group name must be between 2 and 60 characters.';

  @override
  String get groupSettingsInfoNameNotAllowed =>
      'That group name isn\'t allowed.';

  @override
  String get groupSettingsInfoRenamedMsg =>
      'Members see the new name everywhere the group appears. The rename is recorded in the group audit log.';

  @override
  String get groupSettingsInfoRenamedRubric => 'GROUP RENAMED';

  @override
  String get groupSettingsInfoRenamedTitle => 'Name updated';

  @override
  String get groupSettingsInviteCopied => 'Invite link copied';

  @override
  String groupSettingsInviteExpired(String when) {
    return 'expired $when';
  }

  @override
  String groupSettingsInviteExpires(String when) {
    return 'expires $when';
  }

  @override
  String groupSettingsInviteRevoked(String when) {
    return 'revoked $when';
  }

  @override
  String get groupSettingsInvitesActive => 'ACTIVE';

  @override
  String groupSettingsInviteShareText(String link) {
    return 'Join me on Luney → $link';
  }

  @override
  String get groupSettingsInvitesHistory => 'HISTORY';

  @override
  String get groupSettingsInvitesIntro =>
      'Share an invite link to bring people in. Pick how many people can use it and how long it stays valid.';

  @override
  String groupSettingsInviteUsed(int used, int max) {
    return '$used/$max used';
  }

  @override
  String groupSettingsIssued(String date) {
    return 'Issued $date';
  }

  @override
  String get groupSettingsJoinAnnounceToggle => 'Announce joins in chat';

  @override
  String get groupSettingsJoinAnnounceToggleSub =>
      'Drops a centered \"👋 X joined the group\" line when someone new joins.';

  @override
  String groupSettingsJoinedAgo(String when) {
    return 'joined $when';
  }

  @override
  String get groupSettingsKindFrozen => 'frozen, no access';

  @override
  String get groupSettingsKindViewOnly => 'view-only';

  @override
  String get groupSettingsLabelChat => 'CHAT';

  @override
  String get groupSettingsLabelColor => 'COLOR';

  @override
  String get groupSettingsLabelDangerZone => 'DANGER ZONE';

  @override
  String get groupSettingsLabelDetails => 'DETAILS';

  @override
  String get groupSettingsLabelName => 'NAME';

  @override
  String get groupSettingsLabelNonMemberPreview => 'NON-MEMBER PREVIEW';

  @override
  String get groupSettingsLabelPermissions => 'PERMISSIONS';

  @override
  String get groupSettingsLabelPhoto => 'PHOTO';

  @override
  String get groupSettingsLabelRules => 'RULES';

  @override
  String get groupSettingsLabelSafety => 'SAFETY';

  @override
  String get groupSettingsLabelTags => 'TAGS';

  @override
  String get groupSettingsMaxUses => 'Max uses';

  @override
  String get groupSettingsMemberRoleName => 'Member';

  @override
  String get groupSettingsNameHint => 'Group name (2 to 60 characters)';

  @override
  String get groupSettingsNameUpToDate => 'Name up to date';

  @override
  String get groupSettingsNewRole => 'New role';

  @override
  String get groupSettingsNewRoleTitle => 'New Role';

  @override
  String get groupSettingsNoEmojis =>
      'No emojis yet. Upload PNGs / GIFs to get started.';

  @override
  String get groupSettingsNoExtraPerms => 'No extra permissions';

  @override
  String get groupSettingsNoInvites => 'No invites yet.';

  @override
  String get groupSettingsNoJoins => 'No one has joined with this code yet.';

  @override
  String get groupSettingsNoUserNote => 'No user-facing note provided.';

  @override
  String get groupSettingsNoViolations => 'No violations on this group.';

  @override
  String get groupSettingsNoViolationsBody =>
      'Staff-issued suspensions and their appeal threads show up here.';

  @override
  String groupSettingsPermCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count permissions',
      one: '1 permission',
    );
    return '$_temp0';
  }

  @override
  String get groupSettingsPhotoHasNote =>
      'Replaces the gradient banner. Emoji still used as a tiny fallback in tight spaces.';

  @override
  String get groupSettingsPhotoNoneNote =>
      'No photo yet. The gradient + emoji are used for the banner.';

  @override
  String get groupSettingsRemove => 'Remove';

  @override
  String get groupSettingsReplacePhoto => 'Replace photo';

  @override
  String get groupSettingsReportsEmptyBody =>
      'Reports filed by members about content in this group will land here. After 48 hours without action, anything still open escalates to Luney staff.';

  @override
  String get groupSettingsReportsEmptyTitle => 'No open reports.';

  @override
  String get groupSettingsRevoke => 'Revoke';

  @override
  String get groupSettingsRoleNameHint => 'e.g. Verified, Mod, Pinned';

  @override
  String get groupSettingsRolesIntro =>
      'Custom roles let you grant permissions to specific members. Tap \"Member\" to edit what every member can do by default.';

  @override
  String get groupSettingsRuleDescHint =>
      'Description (optional). Explain the rule';

  @override
  String get groupSettingsRuleDescLen =>
      'Description must be 500 chars or less.';

  @override
  String get groupSettingsRuleLimitReached => 'Rule limit reached';

  @override
  String get groupSettingsRulesIntro2 =>
      'Numbered list shown on the Details tab. Members run /rules in chat to post the current rules to everyone. Up to 20 rules. Each rule has a title and an optional longer explanation. Tap a rule to edit it.';

  @override
  String get groupSettingsRulesMax => 'Up to 20 rules per group.';

  @override
  String get groupSettingsRulesRubric => 'RULES UPDATED';

  @override
  String get groupSettingsRulesSavedMsg =>
      'Members see the new list on the Details tab. Anyone can run /rules in chat to drop the rules into the room.';

  @override
  String get groupSettingsRulesSavedTitle => 'Rules saved';

  @override
  String get groupSettingsRulesUpToDate => 'Rules up to date';

  @override
  String get groupSettingsRuleTitleHint => 'Rule title (required)';

  @override
  String get groupSettingsRuleTitleLen => 'Title must be 120 chars or less.';

  @override
  String get groupSettingsRuleTitleRequired => 'Rule title is required.';

  @override
  String get groupSettingsSaveDetails => 'Save details';

  @override
  String get groupSettingsSaveName => 'Save name';

  @override
  String get groupSettingsSaveRules => 'Save rules';

  @override
  String get groupSettingsSaveTags => 'Save tags';

  @override
  String get groupSettingsSaving => 'Saving…';

  @override
  String get groupSettingsScreenshotToggle => 'Warn on screenshots';

  @override
  String get groupSettingsScreenshotToggleSub =>
      'When someone screenshots inside this group, drop a \"screenshot taken\" line into chat and notify the photo owner. Turn off for groups where photo sharing should feel friction-free.';

  @override
  String get groupSettingsShortcodeBody =>
      'Lowercase letters, numbers, and underscores. Used like :happy_pride: when typing.';

  @override
  String get groupSettingsShortcodeHint => 'e.g. happy_pride';

  @override
  String get groupSettingsShortcodeTitle => 'Shortcode';

  @override
  String get groupSettingsShortcodeValErr =>
      '2–32 chars, lowercase + digits + underscore.';

  @override
  String get groupSettingsShowDetailsToggle => 'Show Details to non-members';

  @override
  String get groupSettingsShowDetailsToggleSub =>
      'When off, the join preview only shows the short summary. Members always see the full Details tab.';

  @override
  String groupSettingsShowWhoJoined(int count) {
    return 'Show who joined ($count)';
  }

  @override
  String get groupSettingsStandingGood => 'Group in good standing';

  @override
  String get groupSettingsStandingMultiple => 'Multiple violations on file';

  @override
  String get groupSettingsStandingSuspended => 'Currently suspended';

  @override
  String get groupSettingsSuspension => 'Suspension';

  @override
  String groupSettingsSuspPermanent(String kind) {
    return '$kind · permanent';
  }

  @override
  String groupSettingsSuspUntil(String kind, String date) {
    return '$kind · until $date';
  }

  @override
  String get groupSettingsTabAuditLog => 'Audit log';

  @override
  String get groupSettingsTabEmojis => 'Emojis';

  @override
  String get groupSettingsTabInfo => 'Info';

  @override
  String get groupSettingsTabInvites => 'Invites';

  @override
  String get groupSettingsTabReports => 'Reports';

  @override
  String get groupSettingsTabRoles => 'Roles';

  @override
  String get groupSettingsTabViolations => 'Violations';

  @override
  String get groupSettingsTagFormatErr =>
      'Tags use lowercase letters, numbers, and dashes (2–24 chars).';

  @override
  String get groupSettingsTagHint => 'Add a tag and press return';

  @override
  String get groupSettingsTagMax => 'Up to 8 tags per group.';

  @override
  String get groupSettingsTagsIntro =>
      'Help people discover this group. Lowercase, no spaces, up to 8.';

  @override
  String get groupSettingsTagsRubric => 'TAGS UPDATED';

  @override
  String get groupSettingsTagsSavedMsg =>
      'Your tags help people discover this group. They show up in search and on the group card.';

  @override
  String get groupSettingsTagsSavedTitle => 'Tags saved';

  @override
  String get groupSettingsTagsUpToDate => 'Tags up to date';

  @override
  String get groupSettingsTitle => 'Group Settings';

  @override
  String get groupSettingsTypeNamePrefix => 'Type the group name ';

  @override
  String get groupSettingsTypeNameSuffix =>
      ' exactly to confirm. This is the last step, and you can\'t undo it yourself afterward.';

  @override
  String groupSettingsUploadEmoji(int count) {
    return 'Upload emoji ($count/50)';
  }

  @override
  String get groupSettingsUploadingEmoji => 'Uploading…';

  @override
  String get groupSettingsUploadPhotoBtn => 'Upload photo';

  @override
  String groupSettingsUsesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uses',
      one: '1 use',
    );
    return '$_temp0';
  }

  @override
  String get groupSettingsUsesUnlimited => 'Unlimited';

  @override
  String get groupSettingsViolationActive => 'Active';

  @override
  String get groupSettingsViolationAwaitingStaff => 'Awaiting staff';

  @override
  String get groupSettingsViolationLifted => 'Lifted';

  @override
  String get groupSettingsWipe => 'Wipe';

  @override
  String get groupSettingsWipeChatBody =>
      'This permanently deletes every message in the group chat. Members see a \"you cleared the chat history\" line in the newly-empty chat. This cannot be undone.';

  @override
  String get groupSettingsWipeChatLabel => 'Wipe chat history';

  @override
  String get groupSettingsWipeChatSub =>
      'Permanently delete every message in the group chat. Owner only.';

  @override
  String get groupSettingsWipeChatTitle => 'Wipe chat history?';

  @override
  String get groupSettingsWipedMsg =>
      'The chat history is now empty. Members see a \"chat cleared\" system event so the empty room makes sense to them.';

  @override
  String get groupSettingsWipedRubric => 'CHAT WIPED';

  @override
  String groupSettingsWipedTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wiped $count messages',
      one: 'Wiped 1 message',
    );
    return '$_temp0';
  }

  @override
  String get groupSettingsWipeEmptyMsg =>
      'No messages to clear. The chat history surface stays as-is.';

  @override
  String get groupSettingsWipeEmptyRubric => 'NOTHING TO WIPE';

  @override
  String get groupSettingsWipeEmptyTitle => 'Chat was already empty';

  @override
  String groupsLoadError(String error) {
    return 'We couldn\'t load your groups right now. Try again in a moment. ($error)';
  }

  @override
  String get groupsNewButton => '+ New';

  @override
  String get groupsNewSemantic => 'New group';

  @override
  String get groupsRailDiscover => 'Discover';

  @override
  String get groupsRailRecent => 'Recently created';

  @override
  String get groupsRailTop => 'Top public groups';

  @override
  String get groupsRailWeekly => 'Weekly active';

  @override
  String get groupsRailYours => 'Your groups';

  @override
  String get groupsSearchHint => 'Find your community…';

  @override
  String get groupsTitle => 'Groups';

  @override
  String get groupTosScreenTitle => 'Group Terms';

  @override
  String groupTosScreenVersion(int version) {
    return 'Version $version';
  }

  @override
  String groupTosScreenVersionPublished(int version, String date) {
    return 'Version $version · published $date';
  }

  @override
  String get groupTransferInviteAcceptCta =>
      'Accept ownership & agree to Group Terms of Service';

  @override
  String get groupTransferInviteAcceptErrorOp => 'Couldn\'t accept transfer';

  @override
  String get groupTransferInviteBeforeAccept => 'BEFORE YOU ACCEPT';

  @override
  String get groupTransferInviteBeforeAcceptBody =>
      'Owners take on extra responsibility on top of admins and moderators: you set the tone for the community, you can wipe chat history, and you agree to the Group Terms of Service that govern how Luney groups are run. By accepting this transfer you confirm you\'ve read and agree to follow them.';

  @override
  String get groupTransferInviteDecline => 'Decline';

  @override
  String groupTransferInviteDeclineConfirmBody(String group, String inviter) {
    return 'If you decline, ownership of $group transfers to $inviter (the staff member who offered it). They\'ll hold it temporarily until they find someone else to take over.';
  }

  @override
  String get groupTransferInviteDeclineConfirmTitle => 'Decline ownership?';

  @override
  String groupTransferInviteDeclinedBody(String group, String inviter) {
    return 'Ownership of $group went to $inviter. You\'re still a member; nothing else changed.';
  }

  @override
  String get groupTransferInviteDeclineDisclosure =>
      'If you decline, ownership goes to the staff member who offered it. They hold it until someone else can take over.';

  @override
  String get groupTransferInviteDeclinedRubric => 'TRANSFER DECLINED';

  @override
  String get groupTransferInviteDeclinedTitle => 'You said no, that\'s fine';

  @override
  String get groupTransferInviteDeclineErrorOp => 'Couldn\'t decline transfer';

  @override
  String groupTransferInviteIntro(String inviter, String group) {
    return '$inviter wants to transfer full ownership of $group to you. As the owner, you take on everything an admin can do plus the keys to the group: set the tone, wipe chat history, and decide who else helps moderate.';
  }

  @override
  String get groupTransferInviteIntroFallback => 'A Luney staff member';

  @override
  String get groupTransferInviteInviterFallback =>
      'the staff member who offered it';

  @override
  String get groupTransferInviteLater => 'Later';

  @override
  String groupTransferInviteLoadError(String error) {
    return 'We couldn\'t load this transfer right now. Try again in a moment.\n($error)';
  }

  @override
  String get groupTransferInviteOffered => 'OWNERSHIP OFFERED';

  @override
  String get groupTransferInviteOpenGroup => 'Open group';

  @override
  String get groupTransferInviteReadFirst => 'Read the Terms above first';

  @override
  String get groupTransferInviteResolved =>
      'This transfer offer has already been accepted, declined, or revoked. Nothing else to do here.';

  @override
  String get groupTransferInviteTitle => 'Group ownership';

  @override
  String get groupTransferInviteTosRead => 'Group Terms of Service · read ✓';

  @override
  String get groupTransferInviteTosUnread => 'Read the Group Terms of Service';

  @override
  String get groupTransferInviteTosUpdatedBody =>
      'A new Group ToS was just published. Review and accept it, then come back here to accept this transfer.';

  @override
  String get groupTransferInviteTosUpdatedRubric => 'GROUP TOS UPDATED';

  @override
  String get groupTransferInviteTosUpdatedTitle => 'New Group Terms of Service';

  @override
  String get groupTransferInviteTransferredBody =>
      'You\'re the owner. You can manage admins and moderators, wipe chat history, edit settings, and (if it ever comes to it) hand the group off to someone else.';

  @override
  String get groupTransferInviteTransferredRubric => 'OWNERSHIP TRANSFERRED';

  @override
  String groupTransferInviteTransferredTitle(String group) {
    return 'You now own $group';
  }

  @override
  String get hashtagGroupsError => 'Couldn\'t load groups.';

  @override
  String hashtagNoGroups(String tag) {
    return 'No groups with #$tag yet.';
  }

  @override
  String hashtagNoPosts(String tag) {
    return 'No posts with #$tag yet.';
  }

  @override
  String hashtagNoReels(String tag) {
    return 'No reels with #$tag yet.';
  }

  @override
  String get hashtagPostsError => 'Couldn\'t load posts.';

  @override
  String get hashtagReelsError => 'Couldn\'t load reels.';

  @override
  String get hashtagTabGroups => 'Groups';

  @override
  String get hashtagTabPosts => 'Posts';

  @override
  String get hashtagTabReels => 'Reels';

  @override
  String get hashtagTryAgain => 'Try again';

  @override
  String get hashtagWhyHidden => 'Why is this hidden?';

  @override
  String get homeScreenComposeLabel => 'Compose a post';

  @override
  String get homeScreenEmptyAll => 'Nothing here yet, be the first to post.';

  @override
  String homeScreenEmptyFilter(String filter) {
    return 'No posts tagged \"$filter\" yet.';
  }

  @override
  String get homeScreenEmptyNetwork =>
      'Nothing from your network yet. Add some friends or wait for them to post.';

  @override
  String get homeScreenNewPostLabel => 'New post';

  @override
  String get icebreakerCategoryCommunity => 'Community';

  @override
  String get icebreakerCategoryPlayful => 'Playful';

  @override
  String get icebreakerCategorySpicy => 'Spicy';

  @override
  String get icebreakerCategoryVulnerable => 'Vulnerable';

  @override
  String get icebreakerQDAnsweredBadge => '✓ ANSWERED';

  @override
  String icebreakerQDAnswerReplyCount(int answerCount, int replyCount) {
    String _temp0 = intl.Intl.pluralLogic(
      answerCount,
      locale: localeName,
      other: '$answerCount answers · $replyCount replies',
      one: '1 answer · $replyCount replies',
    );
    return '$_temp0';
  }

  @override
  String get icebreakerQDCatCommunity => 'Community';

  @override
  String get icebreakerQDCatPlayful => 'Playful';

  @override
  String get icebreakerQDCatSpicy => 'Spicy';

  @override
  String get icebreakerQDCatVulnerable => 'Vulnerable';

  @override
  String get icebreakerQDComposerHint => 'type your answer…';

  @override
  String get icebreakerQDEmptyOthers =>
      'Nobody else answered this one. You\'re the only voice on the wall.';

  @override
  String get icebreakerQDErrPost => 'Couldn\'t post your answer';

  @override
  String icebreakerQDLoadError(String error) {
    return 'We couldn\'t load the answers right now. Try again in a moment. ($error)';
  }

  @override
  String get icebreakerQDOthersAnswered => 'OTHERS ANSWERED';

  @override
  String icebreakerQDOthersTotal(int count) {
    return '$count total';
  }

  @override
  String get icebreakerQDPastNotAnswered =>
      'This was an older icebreaker. New answers can only land on today\'s question, but you can still read what others said.';

  @override
  String get icebreakerQDPastReadOnly =>
      'Past questions are read-only. You can\'t update an answer once the day rolls over.';

  @override
  String icebreakerQDQotdDate(String date) {
    return 'QOTD · $date';
  }

  @override
  String get icebreakerQDQotdToday => 'QOTD · TODAY';

  @override
  String get icebreakerQDSubmit => 'Submit & see answers';

  @override
  String get icebreakerQDThanks =>
      'Thanks for answering. See what others said below.';

  @override
  String get icebreakerQDTitlePast => 'Past icebreaker';

  @override
  String get icebreakerQDTitleToday => 'Today\'s icebreaker';

  @override
  String get icebreakerQDYourAnswer => 'YOUR ANSWER';

  @override
  String icebreakersAnswerCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count answers',
      one: '1 answer',
    );
    return '$_temp0';
  }

  @override
  String get icebreakersAnswerCta => 'Answer →';

  @override
  String get icebreakersAnsweredTag => '✓ ANSWERED';

  @override
  String get icebreakersAnswerHint => 'type your answer…';

  @override
  String icebreakersCardAnswerCount(int count, String compact) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$compact answers',
      one: '1 answer',
    );
    return '$_temp0';
  }

  @override
  String get icebreakersCardAnswerHint => 'your answer…';

  @override
  String get icebreakersCardBrowse => 'Browse';

  @override
  String get icebreakersCardCatCommunity => 'Community';

  @override
  String get icebreakersCardCatPlayful => 'Playful';

  @override
  String get icebreakersCardCatQuestion => 'Question';

  @override
  String get icebreakersCardCatSpicy => 'Spicy';

  @override
  String get icebreakersCardCatVulnerable => 'Vulnerable';

  @override
  String get icebreakersCardDm => 'DM';

  @override
  String get icebreakersCardErrOpenChat => 'Couldn\'t open chat';

  @override
  String get icebreakersCardErrorTileLabel => 'Icebreakers';

  @override
  String get icebreakersCardErrPost => 'Couldn\'t post your answer';

  @override
  String get icebreakersCardHide => 'Hide';

  @override
  String get icebreakersCardHideAnswersA11y => 'Hide answers';

  @override
  String get icebreakersCardLoadAnswersError => 'Couldn\'t load answers.';

  @override
  String get icebreakersCardNoAnswers => 'No answers yet. Be the first.';

  @override
  String get icebreakersCardOpen => 'Open →';

  @override
  String get icebreakersCardOpenA11y => 'Open Icebreakers';

  @override
  String icebreakersCardOpenDm(String name) {
    return 'Open DM with $name';
  }

  @override
  String icebreakersCardOpenProfile(String name) {
    return 'Open $name\'s profile';
  }

  @override
  String get icebreakersCardOpenReplies => 'Open replies';

  @override
  String get icebreakersCardReactEyes => 'eyes';

  @override
  String get icebreakersCardReactHeart => 'heart';

  @override
  String icebreakersCardReactionA11y(String label, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$label reaction, $count',
      zero: '$label reaction, no reactions',
    );
    return '$_temp0';
  }

  @override
  String get icebreakersCardReactLaugh => 'laugh';

  @override
  String get icebreakersCardReactSame => 'same';

  @override
  String get icebreakersCardReply => 'Reply';

  @override
  String get icebreakersCardReportLabel => 'this icebreaker answer';

  @override
  String get icebreakersCardSeeAnswersA11y => 'See answers';

  @override
  String get icebreakersCardSubmitA11y => 'Submit answer';

  @override
  String get icebreakersCardSubmitCta => 'Submit & see answers';

  @override
  String get icebreakersCardThanks =>
      'Thanks for answering. See what others said below.';

  @override
  String icebreakersCharCount(int count) {
    return '$count/280';
  }

  @override
  String icebreakersDayStreak(int streak) {
    String _temp0 = intl.Intl.pluralLogic(
      streak,
      locale: localeName,
      other: '$streak day streak',
      one: '1 day streak',
    );
    return '$_temp0';
  }

  @override
  String get icebreakersFilterAll => 'All';

  @override
  String icebreakersFilterSemantic(String label) {
    return '$label filter';
  }

  @override
  String icebreakersGenericLoadError(String error) {
    return 'We couldn\'t load this right now. Try again in a moment. ($error)';
  }

  @override
  String icebreakersHeaderWithStreak(int count, int streak) {
    return '$count prompts · 🔥 $streak-day streak';
  }

  @override
  String get icebreakersLoadAnswersError => 'Couldn\'t load answers.';

  @override
  String get icebreakersMineEmptyBody =>
      'Drop into the Today tab and break some ice.';

  @override
  String get icebreakersMineEmptyTitle => 'You haven\'t answered any yet';

  @override
  String get icebreakersNoAnswersYet => 'No answers yet. Be the first.';

  @override
  String get icebreakersNoPastBody =>
      'New icebreakers drop every day. Today\'s question is on the Today tab.';

  @override
  String get icebreakersNoPastTitle => 'No past questions to browse yet';

  @override
  String get icebreakersNoQuestionBody =>
      'Check back tomorrow, or browse past questions on the Library tab.';

  @override
  String get icebreakersNoQuestionTitle => 'No question scheduled for today';

  @override
  String get icebreakersNoStreak => 'No active streak';

  @override
  String get icebreakersNothingCategory => 'Nothing in that category yet';

  @override
  String get icebreakersOpenAnswerError => 'Couldn\'t open this answer';

  @override
  String icebreakersOpenSemantic(String prompt) {
    return 'Open icebreaker: $prompt';
  }

  @override
  String get icebreakersOthersAnswered => 'OTHERS ANSWERED';

  @override
  String get icebreakersPostError => 'Couldn\'t post your answer';

  @override
  String icebreakersPromptCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count prompts',
      one: '1 prompt',
    );
    return '$_temp0';
  }

  @override
  String icebreakersPromptsAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count prompts answered',
      one: '1 prompt answered',
    );
    return '$_temp0';
  }

  @override
  String icebreakersQotdBadge(String date) {
    return 'QOTD · $date';
  }

  @override
  String icebreakersReactionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count reactions',
      one: '1 reaction',
    );
    return '$_temp0';
  }

  @override
  String get icebreakersReadCta => 'Read →';

  @override
  String get icebreakersRepliesReactions => 'Replies & reactions';

  @override
  String get icebreakersSeeRepliesSemantic =>
      'See replies and reactions on your answer';

  @override
  String get icebreakersSubmitSeeAnswers => 'Submit & see answers';

  @override
  String get icebreakersTabLibrary => 'Library';

  @override
  String get icebreakersTabMine => 'Mine';

  @override
  String get icebreakersTabToday => 'Today';

  @override
  String get icebreakersThanksAnswering =>
      'Thanks for answering. See what others said below.';

  @override
  String get icebreakersTitle => 'Icebreakers';

  @override
  String get icebreakersTodayTag => '· TODAY';

  @override
  String icebreakersTotalAnswers(int count) {
    return '$count total';
  }

  @override
  String get icebreakersTryFilterBody =>
      'Try a different filter or check back later.';

  @override
  String get icebreakersUpdateAnswer => 'Update answer';

  @override
  String get icebreakersYourAnswer => 'YOUR ANSWER';

  @override
  String get icebreakersYourAnswers => 'YOUR ANSWERS';

  @override
  String get icebreakerThreadAddEmoji => 'Add emoji';

  @override
  String get icebreakerThreadDeleteBody =>
      'This removes your reply from the thread. You can\'t undo this.';

  @override
  String get icebreakerThreadDeleteErrorOp => 'Couldn\'t delete reply';

  @override
  String get icebreakerThreadDeleteMyReplyA11y => 'Delete my reply';

  @override
  String get icebreakerThreadDeleteTitle => 'Delete reply?';

  @override
  String get icebreakerThreadDm => 'DM';

  @override
  String get icebreakerThreadDmErrorOp => 'Couldn\'t open chat';

  @override
  String get icebreakerThreadMuteErrorOp => 'Couldn\'t mute thread';

  @override
  String get icebreakerThreadMuteTooltip => 'Mute this thread';

  @override
  String get icebreakerThreadNoReplies => 'No replies yet, be the first.';

  @override
  String icebreakerThreadOpenDm(String name) {
    return 'Open DM with $name';
  }

  @override
  String icebreakerThreadOpenProfile(String name) {
    return 'Open $name\'s profile';
  }

  @override
  String get icebreakerThreadReplies => 'REPLIES';

  @override
  String icebreakerThreadRepliesError(String error) {
    return 'We couldn\'t load the replies right now. Try again in a moment. ($error)';
  }

  @override
  String get icebreakerThreadReplyErrorOp => 'Couldn\'t post your reply';

  @override
  String get icebreakerThreadReplyHint => 'Reply to this answer…';

  @override
  String get icebreakerThreadReportLabel => 'this reply';

  @override
  String get icebreakerThreadSend => 'Send';

  @override
  String get icebreakerThreadSendA11y => 'Send reply';

  @override
  String get icebreakerThreadUnmuteErrorOp => 'Couldn\'t unmute thread';

  @override
  String get icebreakerThreadUnmuteTooltip => 'Unmute this thread';

  @override
  String get imageCropEditTitle => 'Edit photo';

  @override
  String get imageCropTitle => 'Crop photo';

  @override
  String get inAppActorLuneyRewind => 'Luney Rewind';

  @override
  String get inAppActorLuneyStaff => 'Luney Staff';

  @override
  String get inAppActorLuneyTeam => 'Luney team';

  @override
  String get inAppActorModerationTeam => 'Luney moderation team';

  @override
  String get inAppActorNewBadge => 'New badge';

  @override
  String get inAppActorSomeone => 'Someone';

  @override
  String get inAppActorYourGroup => 'Your group';

  @override
  String get inAppActorYourReel => 'Your reel';

  @override
  String get inAppAnotherMember => 'another member';

  @override
  String get inAppArticleAdmin => 'an admin';

  @override
  String get inAppArticleModerator => 'a moderator';

  @override
  String get inAppAttachment => '📎 Attachment';

  @override
  String get inAppBodyAnniversaryCard => 'sent you a friendiversary card 🎉';

  @override
  String inAppBodyAnniversaryCardN(int count) {
    return 'sent you a $count year friendiversary card 🎉';
  }

  @override
  String get inAppBodyCommentReply => 'replied to your comment.';

  @override
  String get inAppBodyCrisisAlert =>
      'You don\'t have to go through this alone. Tap for support.';

  @override
  String get inAppBodyDefault => 'sent you something.';

  @override
  String get inAppBodyFriendAccept => 'accepted your friend request.';

  @override
  String get inAppBodyFriendRequest => 'sent you a friend request.';

  @override
  String inAppBodyGroupInviteRedeemed(String group) {
    return 'joined \"$group\" via your invite.';
  }

  @override
  String get inAppBodyLobbyStarted => 'started a Live Lobby. Tap to join.';

  @override
  String get inAppBodyMention => 'mentioned you.';

  @override
  String inAppBodyOwnerTransferredOther(String group, String target) {
    return 'transferred ownership of your group $group to $target.';
  }

  @override
  String inAppBodyOwnerTransferredToYou(String group) {
    return 'transferred ownership of $group to you. Tap to open it.';
  }

  @override
  String get inAppBodyPanicAlert =>
      'may need help. They activated Panic Mode and haven\'t responded for 5 minutes.';

  @override
  String get inAppBodyPostComment => 'commented on your post.';

  @override
  String get inAppBodyPostLike => 'liked your post.';

  @override
  String inAppBodyRoleInvite(String article) {
    return 'invited you to be $article of a group. Tap to accept or decline.';
  }

  @override
  String get inAppBodyScreenshotPost => 'took a screenshot of your post.';

  @override
  String get inAppBodyScreenshotProfile =>
      'took a screenshot of your profile picture.';

  @override
  String get inAppBodyTransferInvite =>
      'wants to transfer ownership of a group to you. Tap to accept or decline.';

  @override
  String get inAppBodyTrustedCircleAccepted =>
      'accepted your Trusted Circle invite.';

  @override
  String get inAppBodyTrustedCircleRequest =>
      'wants to add you to their Trusted Circle.';

  @override
  String inAppDateCheckinBody(String ctx) {
    return 'missed their check-in deadline$ctx. Tap to reach out.';
  }

  @override
  String inAppDateCheckinCtxAt(String l) {
    return ', at $l';
  }

  @override
  String inAppDateCheckinCtxMeeting(String m) {
    return ', meeting $m';
  }

  @override
  String inAppDateCheckinCtxMeetingAt(String m, String l) {
    return ', meeting $m at $l';
  }

  @override
  String get inAppDmFallbackSender => 'Someone';

  @override
  String get inAppGroupFallback => 'a group';

  @override
  String get inAppGroupGenericFallback => 'your group';

  @override
  String inAppGroupKicked(String group) {
    return 'You were removed from \"$group\".';
  }

  @override
  String inAppGroupMembershipChanged(String group) {
    return 'Your membership in \"$group\" changed.';
  }

  @override
  String inAppGroupNowAdmin(String group) {
    return 'You\'re now an admin of \"$group\".';
  }

  @override
  String inAppGroupNowMember(String group) {
    return 'Your role in \"$group\" changed to member.';
  }

  @override
  String inAppGroupNowMod(String group) {
    return 'You\'re now a moderator of \"$group\".';
  }

  @override
  String inAppGroupRoleChanged(String group) {
    return 'Your role in \"$group\" changed.';
  }

  @override
  String get inAppGroupTitleFallback => 'Group';

  @override
  String get inAppGroupUpdateTitle => 'Group update';

  @override
  String get inAppModContentRestored =>
      'A post or message of yours was restored.';

  @override
  String get inAppModDefault => 'Luney moderation took action on your account.';

  @override
  String get inAppModDeleteContent => 'A post or message of yours was removed.';

  @override
  String get inAppModGroupSuspended => 'One of your groups was suspended.';

  @override
  String inAppModGroupSuspendedNamed(String group) {
    return 'Your group \"$group\" was suspended.';
  }

  @override
  String get inAppModGroupSuspLifted =>
      'A suspension on one of your groups was lifted.';

  @override
  String inAppModGroupSuspLiftedNamed(String group) {
    return 'The suspension on \"$group\" was lifted.';
  }

  @override
  String get inAppModSuspend => 'Your account has been suspended.';

  @override
  String get inAppModTitle => 'Luney moderation';

  @override
  String get inAppModWarn => 'A warning was issued on your account.';

  @override
  String get inlineReelFailed => 'Reel failed';

  @override
  String get inlineReelProcessing => 'Processing…';

  @override
  String get inviteAlreadyMember => 'You\'re already in this group.';

  @override
  String get inviteBackHome => 'Back to home';

  @override
  String get inviteErrExhausted => 'This invite has been used up.';

  @override
  String get inviteErrExpired => 'This invite has expired.';

  @override
  String get inviteErrNotFound => 'That invite doesn\'t exist.';

  @override
  String get inviteErrRevoked => 'This invite has been revoked.';

  @override
  String get inviteErrSignIn => 'Sign in to accept this invite.';

  @override
  String get inviteInvitedToJoin => 'You\'ve been invited to join';

  @override
  String get inviteJoinGroup => 'Join group';

  @override
  String get inviteJoining => 'Joining…';

  @override
  String get inviteLoading => 'Loading invite…';

  @override
  String inviteMemberCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count members',
      one: '1 member',
    );
    return '$_temp0';
  }

  @override
  String get inviteNotNow => 'Not now';

  @override
  String get inviteOpenGroup => 'Open group';

  @override
  String get languageEnglish => 'English';

  @override
  String get languagePickerTitle => 'Language';

  @override
  String get languageSystemDefault => 'System default';

  @override
  String get lastSeenActiveNow => 'Active now';

  @override
  String lastSeenDaysAgo(int n) {
    return 'Last seen ${n}d ago';
  }

  @override
  String lastSeenHoursAgo(int n) {
    return 'Last seen ${n}h ago';
  }

  @override
  String get lastSeenLongAgo => 'Last seen a while ago';

  @override
  String lastSeenMinutesAgo(int n) {
    return 'Last seen $n min ago';
  }

  @override
  String lastSeenWeeksAgo(int n) {
    return 'Last seen ${n}w ago';
  }

  @override
  String get lobbiesListDisabledBanner =>
      'Live Lobbies is paused this month while we sort out audio costs. Back soon.';

  @override
  String get lobbiesListEmptyBody =>
      'Be the first to start one. Tap the button below.';

  @override
  String get lobbiesListEmptyTitle => 'No live lobbies';

  @override
  String lobbiesListEmptyTitleFiltered(String vibe) {
    return 'No live lobbies for $vibe';
  }

  @override
  String lobbiesListHostedBy(String name) {
    return 'hosted by $name';
  }

  @override
  String get lobbiesListStartCta => 'Start a lobby';

  @override
  String get lobbiesListTitle => 'Live Lobbies';

  @override
  String get lobbiesListVibeAll => 'All';

  @override
  String get lobbyRoomAmbientBed => 'AMBIENT BED';

  @override
  String get lobbyRoomAmbientBedNoTrack => 'AMBIENT BED · NO TRACK';

  @override
  String get lobbyRoomBringUp => 'Bring up';

  @override
  String get lobbyRoomBroadcastVolume => 'BROADCAST VOLUME';

  @override
  String get lobbyRoomCuratedSubtitle =>
      'Curated ambient track baked into the vibe.';

  @override
  String get lobbyRoomEndConfirmBody =>
      'Everyone will be disconnected. This can\'t be undone.';

  @override
  String get lobbyRoomEndConfirmTitle => 'End the lobby?';

  @override
  String get lobbyRoomEndedMessage =>
      'Live audio rooms close when the host hangs up. Catch them next time, or start your own from the Lobbies tab.';

  @override
  String get lobbyRoomEndedRubric => 'LOBBY ENDED';

  @override
  String get lobbyRoomEndedTitle => 'The host ended this lobby';

  @override
  String get lobbyRoomEndLobby => 'End lobby';

  @override
  String get lobbyRoomErrAction => 'Action failed';

  @override
  String get lobbyRoomErrEnd => 'Couldn\'t end lobby';

  @override
  String get lobbyRoomErrFileTooBigFree =>
      'File too big. 15 MB max. Get VIP for 50 MB uploads.';

  @override
  String get lobbyRoomErrFileTooBigVip => 'File too big. 50 MB max.';

  @override
  String get lobbyRoomErrJoinTitle => 'Couldn\'t join lobby';

  @override
  String get lobbyRoomErrNeedTitle =>
      'Add a name for this track. We couldn\'t guess one from the URL.';

  @override
  String get lobbyRoomErrPromote => 'Couldn\'t promote to speaker';

  @override
  String get lobbyRoomErrReadBytes => 'Could not read file bytes.';

  @override
  String lobbyRoomErrReset(String error) {
    return 'We couldn\'t reset that just now. Try again in a moment. ($error)';
  }

  @override
  String lobbyRoomErrSetTrack(String error) {
    return 'We couldn\'t change the track just now. Try again in a moment. ($error)';
  }

  @override
  String get lobbyRoomErrStart => 'Couldn\'t start lobby';

  @override
  String lobbyRoomErrToggleMic(String error) {
    return 'We couldn\'t switch your mic just now. Try again in a moment. ($error)';
  }

  @override
  String get lobbyRoomErrToggleMicOp => 'Couldn\'t switch your mic';

  @override
  String get lobbyRoomErrToggleMusic => 'Couldn\'t toggle music';

  @override
  String lobbyRoomErrUpdateHand(String error) {
    return 'We couldn\'t update your raised hand just now. Try again in a moment. ($error)';
  }

  @override
  String get lobbyRoomErrUpdateHandOp => 'Couldn\'t update your raised hand';

  @override
  String lobbyRoomErrUpload(String error) {
    return 'Your upload didn\'t go through. Try again in a moment. ($error)';
  }

  @override
  String get lobbyRoomErrUrlScheme => 'URL must start with https://';

  @override
  String get lobbyRoomHandRaised => 'Hand raised';

  @override
  String get lobbyRoomHandRaisedBanner =>
      'Hand raised. Host will invite you up soon.';

  @override
  String get lobbyRoomHostLabel => 'HOST';

  @override
  String get lobbyRoomLeave => 'Leave';

  @override
  String get lobbyRoomLeaveConfirmBody =>
      'You\'ll stop hearing the room. You can rejoin anytime.';

  @override
  String get lobbyRoomLeaveConfirmTitle => 'Leave lobby?';

  @override
  String get lobbyRoomLeaveSemantic => 'Leave lobby';

  @override
  String lobbyRoomListenersCount(int count) {
    return 'Listeners · $count';
  }

  @override
  String get lobbyRoomListeningSuffix => ' listening';

  @override
  String lobbyRoomLiveLobby(String vibe) {
    return 'LIVE LOBBY · $vibe';
  }

  @override
  String get lobbyRoomLowerHandSemantic => 'Lower hand';

  @override
  String get lobbyRoomMinimizeSemantic => 'Minimize lobby';

  @override
  String get lobbyRoomMoreOptionsSemantic => 'More options';

  @override
  String get lobbyRoomMoveToListeners => 'Move to listeners';

  @override
  String get lobbyRoomMusicControls => 'Music controls';

  @override
  String get lobbyRoomMuteForMe => 'Mute for me only';

  @override
  String get lobbyRoomMuteForMeSubtitle => 'Listeners still hear the music';

  @override
  String get lobbyRoomMuteSemanticLive => 'You\'re live, tap to mute';

  @override
  String get lobbyRoomNoAudio =>
      'No audio in this room. Check mic permission or try rejoining.';

  @override
  String get lobbyRoomNoDefaultSubtitle =>
      'No default for this vibe. Pick a source below.';

  @override
  String get lobbyRoomNowPlaying => 'NOW PLAYING';

  @override
  String lobbyRoomOnStage(int count) {
    return 'ON STAGE · $count';
  }

  @override
  String get lobbyRoomPasteUrl => 'Paste a direct URL';

  @override
  String get lobbyRoomPasteUrlSubtitle =>
      'HTTPS link to an audio file (e.g. Pixabay download). YouTube / Spotify links won\'t work; Agora needs a direct stream.';

  @override
  String lobbyRoomRaisedHands(int count) {
    return '✋ RAISED HANDS · $count';
  }

  @override
  String get lobbyRoomRaiseHandToTalk => 'Raise hand to talk';

  @override
  String get lobbyRoomRemovedMessage =>
      'You\'ve been taken out of this lobby by the host. You can join other open rooms from the Lobbies tab any time.';

  @override
  String get lobbyRoomRemovedRubric => 'REMOVED';

  @override
  String get lobbyRoomRemovedTitle => 'The host removed you from the lobby';

  @override
  String get lobbyRoomRemoveFromLobby => 'Remove from lobby';

  @override
  String lobbyRoomReportSubtitle(String host) {
    return 'Sends a report to Luney moderation about $host.';
  }

  @override
  String lobbyRoomReportTargetLabel(String title, String host) {
    return '\"$title\" hosted by $host';
  }

  @override
  String get lobbyRoomReportTitle => 'Report this lobby';

  @override
  String get lobbyRoomResetSubtitle =>
      'Removes your custom track. Uploaded files are deleted.';

  @override
  String get lobbyRoomResetToVibeDefault => 'Reset to vibe default';

  @override
  String get lobbyRoomStartLobby => 'Start Lobby';

  @override
  String get lobbyRoomStay => 'Stay';

  @override
  String get lobbyRoomTapToUnmute => 'Tap to unmute';

  @override
  String get lobbyRoomTheHost => 'the host';

  @override
  String get lobbyRoomTrackNameHint => 'Track name (auto-filled from the URL)';

  @override
  String get lobbyRoomTrackSource => 'TRACK SOURCE';

  @override
  String get lobbyRoomUploadedSubtitle =>
      'Stored just for this lobby. Auto-deleted when the room closes.';

  @override
  String get lobbyRoomUploadFromDevice => 'Upload from device';

  @override
  String get lobbyRoomUploadSubtitleFree =>
      'MP3 / M4A / AAC / OGG / WAV. 15 MB max. VIP raises to 50 MB.';

  @override
  String get lobbyRoomUploadSubtitleVip =>
      'MP3 / M4A / AAC / OGG / WAV. 50 MB max.';

  @override
  String get lobbyRoomUrlHint => 'https://example.com/track.mp3';

  @override
  String get lobbyRoomUseThisUrl => 'Use this URL';

  @override
  String get lobbyRoomVibeDefault => 'Vibe default';

  @override
  String lobbyRoomVibeDefaultNamed(String vibe) {
    return 'Vibe default · $vibe';
  }

  @override
  String get lobbyRoomWaitingForHost => 'Waiting for the host to start…';

  @override
  String get lobbyRoomWaitingForSomeone => 'Waiting for someone to join…';

  @override
  String get lobbyRoomYou => 'You';

  @override
  String get lobbyRoomYoureLive => 'You\'re live';

  @override
  String get lobbyRoomYourLinkedUrl => 'Your linked URL';

  @override
  String get lobbyRoomYourUploadedTrack => 'Your uploaded track';

  @override
  String get lobbyVibeChill => 'Chill';

  @override
  String get lobbyVibeFocus => 'Focus';

  @override
  String get lobbyVibeHype => 'Hype';

  @override
  String get lobbyVibeSupport => 'Support';

  @override
  String get lobbyVibeWatch => 'Watch';

  @override
  String luneyErrorSheetCode(String code) {
    return 'Code: $code';
  }

  @override
  String get luneyErrorSheetDetails => 'Details';

  @override
  String get luneyErrorSheetOperationFallback => 'Action failed';

  @override
  String get luneyErrorSheetRubric => 'Something went wrong';

  @override
  String get luneyInfoSheetDefaultRubricInfo => 'Heads up';

  @override
  String get luneyInfoSheetDefaultRubricSuccess => 'All set';

  @override
  String get luneyTabBarDms => 'DMs';

  @override
  String get luneyTabBarGroups => 'Groups';

  @override
  String get luneyTabBarHome => 'Home';

  @override
  String get luneyTabBarMe => 'Me';

  @override
  String luneyTabBarUnreadLabel(String label, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count unread',
      one: '1 unread',
    );
    return '$label, $_temp0';
  }

  @override
  String get magicLinkBackTooltip => 'Back to sign in';

  @override
  String get magicLinkDidntGet => 'Didn\'t get it? Check spam, or:';

  @override
  String get magicLinkEmailHint => 'you@domain.com';

  @override
  String get magicLinkEmailLabel => 'Email';

  @override
  String get magicLinkErrSend => 'Couldn\'t send magic link';

  @override
  String get magicLinkSend => 'Send magic link';

  @override
  String get magicLinkSending => 'Sending…';

  @override
  String get magicLinkSentTitle => 'Magic link sent';

  @override
  String get magicLinkSentTo => 'Tap the link we sent to';

  @override
  String get magicLinkSubtitle => 'Sign in without a password';

  @override
  String get markdownDocLoadError =>
      'Couldn\'t load this page. Try again or pull-to-refresh from outside the screen.';

  @override
  String get matchNudgeDismissA11y => 'Dismiss suggestion';

  @override
  String get matchNudgeErrOpenChat => 'Couldn\'t open chat';

  @override
  String get matchNudgeErrorLabel => 'Match Nudge';

  @override
  String get matchNudgeNotNow => 'Not now';

  @override
  String matchNudgeOpenProfileA11y(String name) {
    return 'Open $name\'s profile';
  }

  @override
  String get matchNudgeSayHi => 'Say hi →';

  @override
  String matchNudgeSayHiA11y(String name) {
    return 'Say hi to $name';
  }

  @override
  String get matchNudgeSubtitle => 'is also looking for something this week';

  @override
  String get matchNudgeTitle => 'You might vibe';

  @override
  String get mediaUploadAuditFailed => 'Audit log failed';

  @override
  String get mediaUploadFailed => 'Upload failed';

  @override
  String get mediaUploadNotSignedIn => 'Not signed in';

  @override
  String membersAdminInviteSent(String handle) {
    return 'Admin invite sent to @$handle.';
  }

  @override
  String get membersBadgeAdmin => 'ADMIN';

  @override
  String get membersBadgeMod => 'MOD';

  @override
  String get membersBadgeOwner => 'OWNER';

  @override
  String get membersDemote => 'Demote to member';

  @override
  String get membersErrChangeRole => 'Couldn\'t change role';

  @override
  String get membersErrRemove => 'Couldn\'t remove member';

  @override
  String get membersErrSendInvite => 'Couldn\'t send invite';

  @override
  String get membersInviteAdmin => 'Invite as admin';

  @override
  String get membersInviteMod => 'Invite as moderator';

  @override
  String membersLoadError(String error) {
    return 'We couldn\'t load the members right now. Try again in a moment. ($error)';
  }

  @override
  String membersModInviteSent(String handle) {
    return 'Moderator invite sent to @$handle.';
  }

  @override
  String get membersRemove => 'Remove from group';

  @override
  String get membersRemoveBody =>
      'They lose access to posts and chat. They can re-join if the group is public.';

  @override
  String membersRemoveTitle(String handle) {
    return 'Remove @$handle?';
  }

  @override
  String get membersRoleAdmin => 'Admin';

  @override
  String get membersRoleMember => 'Member';

  @override
  String get membersRoleMod => 'Moderator';

  @override
  String get membersYouSuffix => '· you';

  @override
  String get mentionAutocompleteStaffBroadcast => 'Luney moderation team';

  @override
  String mentionTextNotFoundMessage(String handle) {
    return '@$handle isn\'t on Luney. Double-check the spelling, or send the link directly if you meant a different account.';
  }

  @override
  String get mentionTextNotFoundTitle => 'Handle not found';

  @override
  String get mentionTextRubric => 'MENTION';

  @override
  String milestoneAnniversaryAccountBirthdayTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count years on Luney today',
      one: '1 year on Luney today',
    );
    return '$_temp0';
  }

  @override
  String get milestoneAnniversaryCardSent => 'Card sent 💌';

  @override
  String milestoneAnniversaryFirstDmTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count years of chatting today',
      one: '1 year of chatting today',
    );
    return '$_temp0';
  }

  @override
  String milestoneAnniversaryGroupJoinTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count years in this group today',
      one: '1 year in this group today',
    );
    return '$_temp0';
  }

  @override
  String get milestoneAnniversaryTapToSend => 'Tap to send a card';

  @override
  String get muteDuration1Hour => 'Mute for 1 hour';

  @override
  String get muteDuration8Hours => 'Mute for 8 hours';

  @override
  String get muteDurationForever => 'Mute until I turn it back on';

  @override
  String get muteDurationSheetTitle => 'Mute notifications';

  @override
  String get muteFailed => 'Couldn\'t update mute';

  @override
  String get muteThreadMute => 'Mute notifications';

  @override
  String get muteThreadUnmute => 'Unmute notifications';

  @override
  String get myAchievementsEmptyBody =>
      'Keep using Luney. Some are awarded automatically; others get granted by the team.';

  @override
  String get myAchievementsEmptyTitle => 'No achievements yet.';

  @override
  String get myAchievementsTitle => 'Your achievements';

  @override
  String get myReelsEmptyBody => 'Tap + to share a short vertical video.';

  @override
  String get myReelsEmptyTitle => 'No reels yet';

  @override
  String get myReelsLoadError => 'Couldn\'t load your reels.';

  @override
  String get myReelsNewReel => 'New reel';

  @override
  String get myReelsSemanticOpen => 'Open reel';

  @override
  String get myReelsSemanticProcessing => 'Reel processing';

  @override
  String get myReelsStatusFailed => 'Failed';

  @override
  String get myReelsStatusProcessing => 'Processing…';

  @override
  String get myReelsTitle => 'Your reels';

  @override
  String get myReelsTryAgain => 'Try again';

  @override
  String get newDmBlockedBody =>
      'You can\'t start a new DM with this person right now. They may limit who can DM them, or one of you may have blocked the other. If you blocked them by accident, you can unblock them from their profile sheet.';

  @override
  String get newDmBlockedRubric => 'DMS UNAVAILABLE';

  @override
  String get newDmBlockedTitle => 'You can\'t start a DM with this person';

  @override
  String get newDmEmptyBody =>
      'Add a friend from their profile to start a chat, or find someone new.';

  @override
  String get newDmEmptyPrompt =>
      'You haven\'t added any friends yet. Send a friend request from someone\'s profile to start a chat.';

  @override
  String get newDmEmptyTitle => 'No one to message yet';

  @override
  String get newDmErrStart => 'Couldn\'t start chat';

  @override
  String get newDmFindPeopleCta => 'Find people';

  @override
  String get newDmFriendsLoadError =>
      'Couldn\'t load your friends list. Try again in a moment.';

  @override
  String get newDmNoResults => 'No friends match.';

  @override
  String get newDmNoResultsBody => 'Try a different name or handle.';

  @override
  String get newDmNoResultsTitle => 'No friends match';

  @override
  String get newDmSearchHint => 'Search your friends';

  @override
  String get newDmSearching => 'Searching…';

  @override
  String get newDmTitle => 'New message';

  @override
  String get newTicketAttachFile => 'File';

  @override
  String get newTicketAttachImage => 'Image';

  @override
  String get newTicketBodyHint =>
      'What\'s going on? Markdown works (**bold**, lists, tables, code).';

  @override
  String get newTicketCatElseSubtitle =>
      'General report, feedback, or anything that doesn\'t fit above.';

  @override
  String get newTicketCatElseTitle => 'Something Else';

  @override
  String get newTicketCatGroupSubtitle =>
      'Something about a group you belong to: questions, reports, appeals.';

  @override
  String get newTicketCatGroupTitle => 'For a Group';

  @override
  String get newTicketCatMyselfSubtitle =>
      'A question, a bug, or feedback about your account.';

  @override
  String get newTicketCatMyselfTitle => 'For myself';

  @override
  String get newTicketErrBody => 'Tell us what is going on.';

  @override
  String get newTicketErrGroup => 'Pick which group this is about.';

  @override
  String get newTicketErrSubject => 'Subject is required.';

  @override
  String get newTicketErrSubmit => 'Couldn\'t submit the ticket';

  @override
  String get newTicketFilePickerUnavailable =>
      'File picker not available yet. Please restart the app to finish setting it up.';

  @override
  String newTicketGroupsError(String error) {
    return 'We couldn\'t load your groups right now. Try again in a moment. ($error)';
  }

  @override
  String get newTicketGroupsLoading => 'Loading your groups…';

  @override
  String get newTicketHeadingGroup => 'Ticket about a group';

  @override
  String get newTicketHeadingMyself => 'Ticket about your account';

  @override
  String get newTicketLabelDetails => 'Details';

  @override
  String get newTicketLabelGroup => 'Group';

  @override
  String get newTicketLabelSubject => 'Subject';

  @override
  String get newTicketNoGroups =>
      'You\'re not a member of any groups yet. Pick \"Something Else\" instead.';

  @override
  String get newTicketPickGroup => 'Pick a group…';

  @override
  String get newTicketPrivateGroup => 'Private group';

  @override
  String get newTicketPublicGroup => 'Public group';

  @override
  String get newTicketSend => 'Send ticket';

  @override
  String get newTicketSending => 'Sending…';

  @override
  String get newTicketSubjectHint => 'A short summary';

  @override
  String get newTicketSubtitle => 'What\'s this about?';

  @override
  String get newTicketTbBold => 'Bold';

  @override
  String get newTicketTbCode => 'Inline code';

  @override
  String get newTicketTbHeading => 'Heading';

  @override
  String get newTicketTbItalic => 'Italic';

  @override
  String get newTicketTbLink => 'Link';

  @override
  String get newTicketTbList => 'List';

  @override
  String get newTicketTbQuote => 'Quote';

  @override
  String get newTicketTbTable => 'Table';

  @override
  String get newTicketTitle => 'New ticket';

  @override
  String get nicknameStyleApply => 'Apply';

  @override
  String get nicknameStyleColor => 'Color';

  @override
  String get nicknameStyleEffect => 'Effect';

  @override
  String get nicknameStyleFont => 'Font';

  @override
  String get nicknameStyleReset => 'Reset';

  @override
  String get nicknameStyleSecondColor => 'Second color';

  @override
  String get nicknameStyleTitle => 'Display name style';

  @override
  String get notifAchievementEarned => 'unlocked. Tap to see what you earned.';

  @override
  String get notifActionMarkRead => 'Mark as read';

  @override
  String get notifActionReply => 'Reply';

  @override
  String get notifActionReplyHint => 'Reply with a message…';

  @override
  String get notifActorGroupAdmins => 'Group admins';

  @override
  String get notifActorLuneyRewind => 'Luney Rewind';

  @override
  String get notifActorLuneyStaff => 'Luney Staff';

  @override
  String get notifActorLuneyTeam => 'Luney team';

  @override
  String get notifActorModerationTeam => 'Luney moderation team';

  @override
  String get notifActorNewBadge => 'New badge';

  @override
  String get notifActorSomeone => 'Someone';

  @override
  String get notifActorYourGroup => 'Your group';

  @override
  String get notifActorYourReel => 'Your reel';

  @override
  String get notifAnniversary => 'sent you a friendiversary card 🎉';

  @override
  String notifAnniversaryYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'sent you a $count year friendiversary card 🎉',
      one: 'sent you a 1 year friendiversary card 🎉',
    );
    return '$_temp0';
  }

  @override
  String get notifBodyCommentReply => 'replied to your comment.';

  @override
  String get notifBodyFriendAccept => 'accepted your friend request.';

  @override
  String get notifBodyFriendRequest => 'sent you a friend request.';

  @override
  String get notifBodyMention => 'mentioned you.';

  @override
  String get notifBodyPostComment => 'commented on your post.';

  @override
  String get notifBodyPostLike => 'liked your post.';

  @override
  String get notifCatDms => 'DIRECT MESSAGES';

  @override
  String get notifCatEvents => 'EVENTS';

  @override
  String get notifCatFeedback => 'FEEDBACK';

  @override
  String get notifCatGroups => 'GROUPS';

  @override
  String get notifCatIcebreakers => 'ICEBREAKERS';

  @override
  String get notifCatMilestones => 'MILESTONES';

  @override
  String get notifCatModeration => 'MODERATION';

  @override
  String get notifCatPosts => 'POSTS';

  @override
  String get notifCatReels => 'REELS';

  @override
  String get notifCatSafety => 'SAFETY';

  @override
  String get notifCatSeasonal => 'SEASONAL';

  @override
  String get notifCatShoutouts => 'SHOUTOUTS';

  @override
  String get notifCatSocial => 'SOCIAL';

  @override
  String get notifCatWeeklyPrompt => 'WEEKLY PROMPT';

  @override
  String get notifChannelDesc =>
      'DMs and inbox notifications you can mark read directly from the notification shade.';

  @override
  String get notifChannelName => 'Messages and mentions';

  @override
  String get notifClearBody =>
      'This permanently deletes everything you\'ve already read. Unread notifications stay. (Read ones are auto-cleared after 7 days anyway.)';

  @override
  String get notifClearConfirm => 'Clear';

  @override
  String get notifClearedBody =>
      'Read notifications removed from your inbox. Unread ones are still here.';

  @override
  String get notifClearedRubric => 'CLEARED';

  @override
  String notifClearedTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cleared $count notifications',
      one: 'Cleared 1 notification',
    );
    return '$_temp0';
  }

  @override
  String get notifClearErrorOp => 'Couldn\'t clear notifications';

  @override
  String get notifClearNothingBody =>
      'There were no read notifications waiting to be cleared. Anything still in your inbox is unread or hasn\'t been opened yet.';

  @override
  String get notifClearNothingRubric => 'INBOX';

  @override
  String get notifClearNothingTitle => 'Nothing to clear';

  @override
  String get notifClearTitle => 'Clear read notifications?';

  @override
  String get notifCrisisAlert =>
      'is thinking of you. You don\'t have to go through this alone. Tap for support.';

  @override
  String get notifDateCheckin =>
      'missed their check-in deadline. Tap to reach out.';

  @override
  String notifDateCheckinLoc(String loc) {
    return 'missed their check-in deadline, at $loc. Tap to reach out.';
  }

  @override
  String notifDateCheckinMeeting(String meeting) {
    return 'missed their check-in deadline, meeting $meeting. Tap to reach out.';
  }

  @override
  String notifDateCheckinMeetingLoc(String meeting, String loc) {
    return 'missed their check-in deadline, meeting $meeting at $loc. Tap to reach out.';
  }

  @override
  String get notifDeleteBody =>
      'This permanently removes the row from your inbox. Other notifications stay.';

  @override
  String get notifDeleteErrorOp => 'Couldn\'t delete notification';

  @override
  String get notifDeleteTitle => 'Delete this notification?';

  @override
  String get notifEmptyBody =>
      'Likes, comments, and friend events will land here.';

  @override
  String get notifEmptyTitle => 'No notifications yet';

  @override
  String get notifFallbackAGroup => 'a group';

  @override
  String get notifFallbackAnotherMember => 'another member';

  @override
  String get notifFallbackYourGroup => 'your group';

  @override
  String get notifFeedbackComment => 'commented on your feedback.';

  @override
  String get notifFeedbackDenied =>
      'closed your feedback. Tap to read the staff note.';

  @override
  String get notifFeedbackDuplicate =>
      'marked your feedback as a duplicate of another submission.';

  @override
  String get notifFeedbackReply => 'replied to your feedback. Tap to read it.';

  @override
  String get notifFeedbackShipped =>
      'shipped your feedback 🎉 Tap to see what landed.';

  @override
  String get notifFeedbackStatusDefault =>
      'updated the status of your feedback.';

  @override
  String get notifFeedbackVoting =>
      'opened your feedback to community voting. Tap to see comments.';

  @override
  String get notifFeedbackVotingClosed =>
      'closed voting on feedback you engaged with. Tap to see the outcome.';

  @override
  String get notifFeedbackWip => 'marked your feedback as Work in progress.';

  @override
  String notifGroupDeletedDated(String date) {
    return 'is now hidden and will be permanently deleted on $date unless Luney Support restores it. Email Support before then if you want it back.';
  }

  @override
  String notifGroupDeletedNamedDated(String group, String date) {
    return '\"$group\" is now hidden and will be permanently deleted on $date unless Luney Support restores it. Email Support before then if you want it back.';
  }

  @override
  String notifGroupDeletedNamedSoon(String group) {
    return '\"$group\" is now hidden and will be permanently deleted soon unless Luney Support restores it. Email Support before then if you want it back.';
  }

  @override
  String get notifGroupDeletedSoon =>
      'is now hidden and will be permanently deleted soon unless Luney Support restores it. Email Support before then if you want it back.';

  @override
  String notifGroupInviteRedeemed(String group) {
    return 'joined \"$group\" via your invite.';
  }

  @override
  String notifGroupKicked(String group) {
    return 'removed you from \"$group\".';
  }

  @override
  String notifGroupMembershipUpdated(String group) {
    return 'updated your membership in \"$group\".';
  }

  @override
  String get notifGroupRestored =>
      'was restored by Luney Support and is back to normal. Tap to open it.';

  @override
  String notifGroupRestoredNamed(String group) {
    return '\"$group\" was restored by Luney Support and is back to normal. Tap to open it.';
  }

  @override
  String notifGroupRoleAdmin(String group) {
    return 'made you an admin of \"$group\".';
  }

  @override
  String notifGroupRoleChanged(String group) {
    return 'changed your role in \"$group\".';
  }

  @override
  String get notifGroupRoleInviteAdmin =>
      'invited you to be an admin of a group. Tap to accept or decline.';

  @override
  String get notifGroupRoleInviteMod =>
      'invited you to be a moderator of a group. Tap to accept or decline.';

  @override
  String notifGroupRoleMember(String group) {
    return 'changed your role in \"$group\" to member.';
  }

  @override
  String notifGroupRoleMod(String group) {
    return 'made you a moderator of \"$group\".';
  }

  @override
  String get notifGroupTransferInvite =>
      'wants to transfer ownership of a group to you. Tap to accept or decline.';

  @override
  String get notifIcebreakerReaction => 'reacted to your icebreaker answer.';

  @override
  String get notifIcebreakerReply => 'replied to your icebreaker answer.';

  @override
  String get notifKindAchievementEarnedSubtitle =>
      'A profile badge you just earned (Beta Tester, Founding Member, etc.).';

  @override
  String get notifKindAchievementEarnedTitle => 'Achievement unlocked';

  @override
  String get notifKindAnniversaryCardReceivedSubtitle =>
      'A friend sent you a card on your friendship anniversary.';

  @override
  String get notifKindAnniversaryCardReceivedTitle => 'Friendiversary cards';

  @override
  String get notifKindCommentReplySubtitle =>
      'Someone replied to a comment you made.';

  @override
  String get notifKindCommentReplyTitle => 'Replies to your comments';

  @override
  String get notifKindDmMessageMentionSubtitle =>
      'Someone @-mentioned you in a DM.';

  @override
  String get notifKindDmMessageMentionTitle => 'Mentions in DMs';

  @override
  String get notifKindDmMessageReactionSubtitle =>
      'Someone reacted to a message you sent in a DM.';

  @override
  String get notifKindDmMessageReactionTitle => 'Reactions on your DMs';

  @override
  String get notifKindDmMessageSubtitle => 'Someone sent you a DM.';

  @override
  String get notifKindDmMessageTitle => 'New direct messages';

  @override
  String get notifKindEventRsvpSubtitle =>
      'Someone said they\'re going (or maybe) to an event you organised.';

  @override
  String get notifKindEventRsvpTitle => 'RSVPs to your events';

  @override
  String get notifKindFeedbackCommentReceivedSubtitle =>
      'Someone commented on a feedback submission you posted.';

  @override
  String get notifKindFeedbackCommentReceivedTitle =>
      'Comments on your feedback';

  @override
  String get notifKindFeedbackReplySubtitle =>
      'The Luney team replied to a feedback submission you posted.';

  @override
  String get notifKindFeedbackReplyTitle => 'Replies from the Luney team';

  @override
  String get notifKindFriendAcceptSubtitle =>
      'Someone accepted your friend request.';

  @override
  String get notifKindFriendAcceptTitle => 'Friend accepts';

  @override
  String get notifKindFriendRequestSubtitle =>
      'Someone sent you a friend request.';

  @override
  String get notifKindFriendRequestTitle => 'Friend requests';

  @override
  String get notifKindGroupInviteRedeemedSubtitle =>
      'A user you invited accepted the invite.';

  @override
  String get notifKindGroupInviteRedeemedTitle =>
      'Someone joined via your invite';

  @override
  String get notifKindGroupMembershipChangedSubtitle =>
      'You were kicked, promoted, or demoted in a group.';

  @override
  String get notifKindGroupMembershipChangedTitle => 'Membership changes';

  @override
  String get notifKindGroupMessageMentionSubtitle =>
      'Someone @-mentioned you in a group chat.';

  @override
  String get notifKindGroupMessageMentionTitle => 'Mentions in group chat';

  @override
  String get notifKindGroupMessageReactionSubtitle =>
      'Someone reacted to a message you sent in a group.';

  @override
  String get notifKindGroupMessageReactionTitle =>
      'Reactions on your group messages';

  @override
  String get notifKindGroupMessageSubtitle =>
      'Someone posted in a group chat you\'re in.';

  @override
  String get notifKindGroupMessageTitle => 'New group chat messages';

  @override
  String get notifKindGroupPostCommentReactionSubtitle =>
      'Someone reacted to a comment you wrote on a group post.';

  @override
  String get notifKindGroupPostCommentReactionTitle =>
      'Reactions on your group post comments';

  @override
  String get notifKindGroupPostCommentSubtitle =>
      'Someone commented on a post you wrote in a group.';

  @override
  String get notifKindGroupPostCommentTitle => 'Comments on your group posts';

  @override
  String get notifKindGroupPostMentionSubtitle =>
      'Someone @-mentioned you in a group post or comment.';

  @override
  String get notifKindGroupPostMentionTitle =>
      'Mentions in group posts and comments';

  @override
  String get notifKindIcebreakerReactionReceivedSubtitle =>
      'Someone reacted to one of your answers (only the first reaction per person, not every tap).';

  @override
  String get notifKindIcebreakerReactionReceivedTitle =>
      'Reactions to your icebreaker answers';

  @override
  String get notifKindIcebreakerReplyReceivedSubtitle =>
      'Someone replied to one of your daily-question answers.';

  @override
  String get notifKindIcebreakerReplyReceivedTitle =>
      'Replies to your icebreaker answers';

  @override
  String get notifKindLobbyStartedSubtitle =>
      'Someone in this group started a Live Lobby.';

  @override
  String get notifKindLobbyStartedTitle => 'New live lobbies';

  @override
  String get notifKindMentionSubtitle => 'Someone @-mentioned you on the feed.';

  @override
  String get notifKindMentionTitle => 'Mentions in posts and comments';

  @override
  String get notifKindPostCommentReactionSubtitle =>
      'Someone reacted to a comment you wrote on a feed post.';

  @override
  String get notifKindPostCommentReactionTitle =>
      'Reactions on your post comments';

  @override
  String get notifKindPostCommentSubtitle =>
      'Someone commented on a post you wrote.';

  @override
  String get notifKindPostCommentTitle => 'Comments on your posts';

  @override
  String get notifKindPostLikeSubtitle => 'Someone liked a post you wrote.';

  @override
  String get notifKindPostLikeTitle => 'Likes on your posts';

  @override
  String get notifKindReelReactionReceivedSubtitle =>
      'Someone reacted to a reel you posted (only the first reaction per person, not every tap).';

  @override
  String get notifKindReelReactionReceivedTitle => 'Reactions on your reels';

  @override
  String get notifKindReelReadySubtitle =>
      'Your reel finished processing and is now visible to friends.';

  @override
  String get notifKindReelReadyTitle => 'Reel is live';

  @override
  String get notifKindReelUploadingSubtitle =>
      'A confirmation that your reel started uploading.';

  @override
  String get notifKindReelUploadingTitle => 'Reel upload kickoff';

  @override
  String get notifKindReportActionedSubtitle =>
      'A staff member or admin closed a report you filed.';

  @override
  String get notifKindReportActionedTitle => 'Report follow-ups';

  @override
  String get notifKindRewindReadySubtitle =>
      'A once-a-year recap of your activity on Luney, when the season opens.';

  @override
  String get notifKindRewindReadyTitle => 'Luney Rewind';

  @override
  String get notifKindShoutoutHeartedSubtitle =>
      'Someone hearted a shoutout you sent (only the first heart per person, not every tap).';

  @override
  String get notifKindShoutoutHeartedTitle => 'Hearts on shoutouts you wrote';

  @override
  String get notifKindShoutoutReceivedSubtitle =>
      'Someone publicly thanked or hyped you up on the wall.';

  @override
  String get notifKindShoutoutReceivedTitle => 'Shoutouts sent to you';

  @override
  String get notifKindTrustedCircleAcceptedSubtitle =>
      'Someone you invited to your Trusted Circle accepted.';

  @override
  String get notifKindTrustedCircleAcceptedTitle => 'Trusted Circle accepts';

  @override
  String get notifKindTrustedCircleRequestSubtitle =>
      'A friend wants to add you to their Trusted Circle.';

  @override
  String get notifKindTrustedCircleRequestTitle => 'Trusted Circle invites';

  @override
  String get notifKindWeeklyPromptReplyReactionSubtitle =>
      'Someone reacted to a reply you wrote in a Weekly Prompt thread.';

  @override
  String get notifKindWeeklyPromptReplyReactionTitle =>
      'Reactions on your Weekly Prompt replies';

  @override
  String get notifKindWeeklyPromptReplyReceivedSubtitle =>
      'Someone replied to a response you posted under the Weekly Prompt.';

  @override
  String get notifKindWeeklyPromptReplyReceivedTitle =>
      'Replies to your Weekly Prompt response';

  @override
  String notifLoadError(String error) {
    return 'We couldn\'t load your notifications right now. Try again in a moment. ($error)';
  }

  @override
  String get notifLobbyStarted => 'started a Live Lobby. Tap to join.';

  @override
  String get notifMenuClearRead => 'Clear read';

  @override
  String get notifMenuMarkAllRead => 'Mark all read';

  @override
  String get notifModContentRestored =>
      'restored one of your posts or messages.';

  @override
  String get notifModDefault => 'took a moderation action on your account.';

  @override
  String get notifModDeleteContent => 'removed one of your posts or messages.';

  @override
  String get notifModGroupSuspended => 'suspended one of your groups.';

  @override
  String notifModGroupSuspendedNamed(String name) {
    return 'suspended the group \"$name\".';
  }

  @override
  String get notifModGroupSuspLifted =>
      'lifted a suspension on one of your groups.';

  @override
  String notifModGroupSuspLiftedNamed(String name) {
    return 'lifted the suspension on \"$name\".';
  }

  @override
  String get notifModSuspend => 'suspended your account.';

  @override
  String get notifModWarn => 'issued a warning on your account.';

  @override
  String notifOwnerTransferredAway(String group, String who) {
    return 'transferred ownership of your group $group to $who.';
  }

  @override
  String notifOwnerTransferredToYou(String group) {
    return 'transferred ownership of $group to you. Tap to open it.';
  }

  @override
  String get notifPanicAlert =>
      'may need help. They activated Panic Mode and haven\'t responded for 5 minutes.';

  @override
  String get notifReelReaction => 'reacted to your reel.';

  @override
  String get notifReelReady =>
      'is live. Friends can see it on the home rail now.';

  @override
  String get notifReelUploading =>
      'is uploading. We\'ll let you know when it\'s live.';

  @override
  String get notifReportDefault => 'reviewed your report. Thanks!';

  @override
  String get notifReportDismiss =>
      'reviewed your report; no action was needed. Thanks for flagging it.';

  @override
  String get notifReportHardRemove =>
      'reviewed your report and permanently removed the content. Thanks!';

  @override
  String get notifReportSoftRemove =>
      'reviewed your report and removed the content. Thanks!';

  @override
  String get notifRewindReady => 'is ready. Tap to see your year on Luney.';

  @override
  String get notifScreenshotPost => 'took a screenshot of your post.';

  @override
  String get notifScreenshotProfile =>
      'took a screenshot of your profile picture.';

  @override
  String get notifSettingsErrApply => 'Couldn\'t apply preference';

  @override
  String get notifSettingsErrSave => 'Couldn\'t save preference';

  @override
  String get notifSettingsInApp => 'In-app';

  @override
  String get notifSettingsInfo =>
      'Push silences the phone notification. In-app keeps the item in your bell + unread badge so you can find it later. Per-group overrides live in each group\'s settings.';

  @override
  String notifSettingsLoadError(String error) {
    return 'We couldn\'t load your notification settings right now. Try again in a moment. ($error)';
  }

  @override
  String get notifSettingsMuteAllBody =>
      'Turns Push and In-app off for every notification kind. Moderation alerts can\'t be silenced. Per-group overrides (if any) keep their current values; adjust those in each group\'s Notifications screen.';

  @override
  String get notifSettingsMuteAllCta => 'Mute all';

  @override
  String get notifSettingsMuteAllSuccess => 'Notifications muted.';

  @override
  String get notifSettingsMuteAllTitle => 'Mute all notifications?';

  @override
  String get notifSettingsPush => 'Push';

  @override
  String get notifSettingsResetBody =>
      'Removes every global override. Each kind goes back to its default (Push + In-app on). Per-group overrides keep their current values.';

  @override
  String get notifSettingsResetCta => 'Reset';

  @override
  String get notifSettingsResetMenu => 'Reset to defaults';

  @override
  String get notifSettingsResetSuccess => 'Reset to defaults.';

  @override
  String get notifSettingsResetTitle => 'Reset to defaults?';

  @override
  String get notifSettingsTitle => 'Notifications';

  @override
  String get notifSettingsUpdatedRubric => 'PREFERENCES UPDATED';

  @override
  String get notifShoutoutHearted => 'hearted your shoutout.';

  @override
  String get notifShoutoutReceived => 'sent you a shoutout 💐';

  @override
  String get notifTitle => 'Notifications';

  @override
  String get notifTrustedCircleAccepted =>
      'accepted your Trusted Circle invite.';

  @override
  String get notifTrustedCircleRequest =>
      'wants to add you to their Trusted Circle. Tap to accept or decline.';

  @override
  String get notifUnknown => 'sent you a notification. Tap to open it.';

  @override
  String get notifWeeklyPromptReply => 'replied to your weekly prompt.';

  @override
  String get oauthContinueApple => 'Continue with Apple';

  @override
  String get oauthContinueDiscord => 'Continue with Discord';

  @override
  String get oauthContinueGoogle => 'Continue with Google';

  @override
  String get oauthErrApple => 'Couldn\'t sign in with Apple';

  @override
  String get oauthErrDiscord => 'Couldn\'t sign in with Discord';

  @override
  String get oauthErrGoogle => 'Couldn\'t sign in with Google';

  @override
  String get oauthLinkBodyPrefix => 'You already have a Luney account on ';

  @override
  String oauthLinkBodySuffix(String provider) {
    return '. Sign in with your existing password and we\'ll attach $provider to that account.';
  }

  @override
  String get oauthLinkErr => 'Couldn\'t link the account';

  @override
  String get oauthLinkPwHint => 'Existing password';

  @override
  String get oauthLinkPwRequired => 'Enter your existing password.';

  @override
  String get oauthLinkSubmit => 'Sign in & link';

  @override
  String get oauthLinkTitle => 'Link to your existing account?';

  @override
  String get offlineBannerMessage =>
      'You\'re offline. Sends will retry when you\'re back.';

  @override
  String get onboardingAvatarChangeHint =>
      'Tap to change your photo. You can always update it later in Edit Profile.';

  @override
  String get onboardingAvatarPickHint =>
      'Tap to add a photo. You can also skip and add one later.';

  @override
  String get onboardingAvatarSub =>
      'Adding a photo helps friends recognise you. This step is optional.';

  @override
  String get onboardingAvatarTitle => 'Profile photo';

  @override
  String get onboardingBioHint =>
      'A few sentences about you. You can edit this later.';

  @override
  String get onboardingBioLabel => 'Bio (optional)';

  @override
  String get onboardingContinue => 'Continue';

  @override
  String get onboardingDisplayNameHint => 'What should we call you?';

  @override
  String get onboardingDisplayNameLabel => 'Display name';

  @override
  String get onboardingDisplayNameNotAllowed =>
      'This display name isn\'t allowed.';

  @override
  String get onboardingDobBody =>
      'Luney is 18+. We never show your birthday to anyone. It stays in your private profile data.';

  @override
  String get onboardingDobHelpText => 'Your date of birth';

  @override
  String get onboardingDobTapToChoose => 'Tap to choose';

  @override
  String get onboardingDobTitle => 'When were you born?';

  @override
  String get onboardingDobUnder18 => 'You must be 18 or older to use Luney.';

  @override
  String get onboardingFinish => 'Finish';

  @override
  String get onboardingGetStarted => 'Get started →';

  @override
  String get onboardingHandleHint =>
      'letters, numbers, underscores · 3-24 chars';

  @override
  String get onboardingHandleLabel => 'Handle';

  @override
  String get onboardingHandleNotAllowed => 'This handle isn\'t allowed.';

  @override
  String get onboardingHandleTaken => 'That handle is taken. Try another.';

  @override
  String get onboardingIdentitySub =>
      'Pick any that resonate. You can change these later.';

  @override
  String get onboardingIdentityTitle => 'Identity';

  @override
  String get onboardingInterestsSub =>
      'What are you into? Helps us suggest groups & people.';

  @override
  String get onboardingInterestsTitle => 'Interests';

  @override
  String get onboardingNameSub =>
      'Pick a name the community will see and a handle for @mentions.';

  @override
  String get onboardingNameTitle => 'Last step';

  @override
  String get onboardingPronounsFieldLabel => 'Your pronouns';

  @override
  String get onboardingPronounsOtherHint => 'e.g. xe/xem, fae/faer, name only';

  @override
  String get onboardingPronounsSub =>
      'We\'ll show these on your profile and in replies.';

  @override
  String get onboardingPronounsTitle => 'Your pronouns';

  @override
  String onboardingSaveError(String error) {
    return 'We couldn\'t save that just now. Try again in a moment. ($error)';
  }

  @override
  String get onboardingSaving => 'Saving…';

  @override
  String get onboardingWelcomeBody =>
      'Quick setup. Pick what feels right, skip what doesn\'t. You can change all of this anytime.';

  @override
  String get onboardingWelcomeTitle =>
      'A gentler corner of\nthe internet for us 🌈';

  @override
  String get onbOptActivism => 'activism';

  @override
  String get onbOptAlly => 'ally';

  @override
  String get onbOptAnime => 'anime';

  @override
  String get onbOptAnyPronouns => 'any pronouns';

  @override
  String get onbOptAromantic => 'aromantic';

  @override
  String get onbOptArt => 'art';

  @override
  String get onbOptAsexual => 'asexual';

  @override
  String get onbOptAskMe => 'ask me';

  @override
  String get onbOptBisexual => 'bisexual';

  @override
  String get onbOptBoardGames => 'board games';

  @override
  String get onbOptBooks => 'books';

  @override
  String get onbOptClimbing => 'climbing';

  @override
  String get onbOptCoffee => 'coffee';

  @override
  String get onbOptComedy => 'comedy';

  @override
  String get onbOptCooking => 'cooking';

  @override
  String get onbOptCrafts => 'crafts';

  @override
  String get onbOptDance => 'dance';

  @override
  String get onbOptDrag => 'drag';

  @override
  String get onbOptFashion => 'fashion';

  @override
  String get onbOptFilm => 'film';

  @override
  String get onbOptFitness => 'fitness';

  @override
  String get onbOptFood => 'food';

  @override
  String get onbOptGaming => 'gaming';

  @override
  String get onbOptGardening => 'gardening';

  @override
  String get onbOptGay => 'gay';

  @override
  String get onbOptGenderfluid => 'genderfluid';

  @override
  String get onbOptGenderqueer => 'genderqueer';

  @override
  String get onbOptHeHim => 'he/him';

  @override
  String get onbOptHeThey => 'he/they';

  @override
  String get onbOptHiking => 'hiking';

  @override
  String get onbOptHistory => 'history';

  @override
  String get onbOptIntersex => 'intersex';

  @override
  String get onbOptKnitting => 'knitting';

  @override
  String get onbOptKpop => 'k-pop';

  @override
  String get onbOptLesbian => 'lesbian';

  @override
  String get onbOptMeditation => 'meditation';

  @override
  String get onbOptMusic => 'music';

  @override
  String get onbOptNature => 'nature';

  @override
  String get onbOptNonbinary => 'nonbinary';

  @override
  String get onbOptNoPronouns => 'no pronouns';

  @override
  String get onbOptOther => 'Other';

  @override
  String get onbOptPansexual => 'pansexual';

  @override
  String get onbOptPets => 'pets';

  @override
  String get onbOptPhotography => 'photography';

  @override
  String get onbOptPodcasts => 'podcasts';

  @override
  String get onbOptPreferNotToSay => 'prefer not to say';

  @override
  String get onbOptQueer => 'queer';

  @override
  String get onbOptQuestioning => 'questioning';

  @override
  String get onbOptScience => 'science';

  @override
  String get onbOptSheHer => 'she/her';

  @override
  String get onbOptSheThey => 'she/they';

  @override
  String get onbOptSkating => 'skating';

  @override
  String get onbOptSports => 'sports';

  @override
  String get onbOptStreaming => 'streaming';

  @override
  String get onbOptTabletop => 'tabletop';

  @override
  String get onbOptTech => 'tech';

  @override
  String get onbOptTheatre => 'theatre';

  @override
  String get onbOptTheyThem => 'they/them';

  @override
  String get onbOptTrans => 'trans';

  @override
  String get onbOptTravel => 'travel';

  @override
  String get onbOptTwoSpirit => 'two-spirit';

  @override
  String get onbOptVolunteering => 'volunteering';

  @override
  String get onbOptWriting => 'writing';

  @override
  String get onbOptYoga => 'yoga';

  @override
  String get panicAlertActiveLabel => 'PANIC ALERT ACTIVE';

  @override
  String get panicAlertCancelCta => 'Cancel the alert';

  @override
  String get panicAlertCancelledBody =>
      'Your trusted circle won\'t be notified for this session. Activate panic again any time if you need to.';

  @override
  String get panicAlertCancelledRubric => 'CANCELLED';

  @override
  String get panicAlertCancelledTitle => 'Panic alert cancelled';

  @override
  String panicAlertCountdown(String time) {
    return 'Your trusted circle will be alerted in $time unless you cancel it.';
  }

  @override
  String get panicAlertErrCancel => 'Couldn\'t cancel the panic alert';

  @override
  String get panicAlertHeading => 'Your trusted circle is about to be alerted';

  @override
  String get panicAlertKeepRunning => 'Keep it running';

  @override
  String get panicAlertOverdue =>
      'The deadline has already passed. The cron may fan it out within the next minute.';

  @override
  String get panicSettingsChangePin => 'Change PIN';

  @override
  String get panicSettingsConfirmPinHint => 'Confirm PIN';

  @override
  String get panicSettingsErrDigits => 'Digits only.';

  @override
  String get panicSettingsErrEmergency => 'PIN can\'t be an emergency number.';

  @override
  String get panicSettingsErrLen => 'PIN must be 4 to 8 digits.';

  @override
  String get panicSettingsErrMatch => 'PINs don\'t match.';

  @override
  String get panicSettingsHowBody =>
      'Tap the Me tab a few times in a row → Luney swaps for a calculator. It really calculates. To come back, type your PIN and press =. Survives closing + reopening the app. Once Panic Mode is on, Luney stays hidden until you enter the PIN.';

  @override
  String get panicSettingsHowTitle => 'How it works';

  @override
  String get panicSettingsPinHint => 'PIN';

  @override
  String get panicSettingsPinReqBody =>
      'Without a PIN you can\'t exit Panic Mode once it\'s active. Tap the PIN row above to set one (4-8 digits), then come back here.';

  @override
  String get panicSettingsPinReqRubric => 'PIN REQUIRED';

  @override
  String get panicSettingsPinReqTitle => 'Set a PIN first';

  @override
  String get panicSettingsPinSaved => 'PIN saved.';

  @override
  String get panicSettingsPinSubtitleHas =>
      'Type this number into the calculator + press = to exit.';

  @override
  String get panicSettingsPinSubtitleNeed =>
      'Required. Type this into the calculator + press = to exit.';

  @override
  String get panicSettingsSectionExitPin => 'EXIT PIN';

  @override
  String get panicSettingsSectionPractice => 'PRACTICE';

  @override
  String get panicSettingsSectionTrigger => 'TRIGGER';

  @override
  String get panicSettingsSetPin => 'Set PIN';

  @override
  String get panicSettingsSetPinBody =>
      '4 to 8 digits. Type these into the calculator and press = to come back to Luney. 911 and 999 are reserved for the emergency-alert short-cut.';

  @override
  String get panicSettingsSetPinTitle => 'Set exit PIN';

  @override
  String get panicSettingsStateOff => 'Off';

  @override
  String get panicSettingsStateOn => 'On';

  @override
  String get panicSettingsTestSubtitle =>
      'Activates Panic Mode. Type your PIN + = to come back.';

  @override
  String get panicSettingsTestTitle => 'Test it now';

  @override
  String get panicSettingsThresholdHint =>
      'Lower = quicker to trigger. Higher = harder to fire by accident.';

  @override
  String get panicSettingsThresholdLabel => 'Taps on the Me tab to trigger';

  @override
  String get panicSettingsTitle => 'Panic Mode';

  @override
  String get pinnedMessageAttachmentLabel => '📎 attachment';

  @override
  String get pinnedMessageEmptyText => '(no text)';

  @override
  String get pinnedMessagesEmpty =>
      'No pinned messages yet. Long-press a message to pin it to the chat.';

  @override
  String get pinnedMessagesEmptyBody =>
      'Long-press any message and tap Pin to add it here.';

  @override
  String get pinnedMessagesEmptyTitle => 'No pinned messages yet';

  @override
  String get pinnedMessagesLimitReached =>
      'Pin limit reached (25). Unpin one to add another.';

  @override
  String get pinnedMessagesLoadError =>
      'Couldn\'t load pinned messages. Try again in a moment.';

  @override
  String pinnedMessagesTitle(String count) {
    return 'Pinned messages $count';
  }

  @override
  String get pinnedMessagesUnpinConfirmAction => 'Unpin';

  @override
  String get pinnedMessagesUnpinConfirmBody =>
      'It will be removed from the pinned messages tray. The original message stays in the chat.';

  @override
  String get pinnedMessagesUnpinConfirmTitle => 'Unpin this message?';

  @override
  String get policyLoadError =>
      'Couldn\'t load this document right now. Try again in a moment.';

  @override
  String get policyNotPublished => 'This document hasn\'t been published yet.';

  @override
  String get policyPrivacyTitle => 'Privacy Policy';

  @override
  String get policyTermsTitle => 'Terms of Service';

  @override
  String policyVersionLine(int version, String date) {
    return 'Version $version · Published $date';
  }

  @override
  String get postCardDeleteBody => 'This can\'t be undone.';

  @override
  String get postCardDeletedSnack => 'Post deleted';

  @override
  String get postCardDeleteTitle => 'Delete this post?';

  @override
  String get postCardEdit => 'Edit';

  @override
  String get postCardEditHint => 'What do you want to say?';

  @override
  String get postCardEditPost => 'Edit post';

  @override
  String get postCardErrDelete => 'Couldn\'t delete post';

  @override
  String postCardErrLike(String error) {
    return 'We couldn\'t update your like just now. Try again in a moment. ($error)';
  }

  @override
  String get postCardErrLikeOp => 'Couldn\'t update your like';

  @override
  String get postCardErrSave => 'Couldn\'t save post';

  @override
  String get postCardErrShareOp => 'Couldn\'t share post';

  @override
  String get postCardMenuCopy => 'Copy text';

  @override
  String get postCardMenuForward => 'Forward';

  @override
  String get postCardMenuHeart => 'Heart';

  @override
  String get postCardMenuReply => 'Reply';

  @override
  String get postCardMenuReport => 'Report';

  @override
  String get postCardMenuShare => 'Share';

  @override
  String get postCardMenuStaffModerate => 'Moderate / delete (staff)';

  @override
  String get postCardMenuUnheart => 'Remove heart';

  @override
  String postCardOpenProfile(String name) {
    return 'Open $name\'s profile';
  }

  @override
  String get postCardOptions => 'Post options';

  @override
  String get postCardPermBody =>
      'Admin delete is gated on the moderate_content staff permission. Ask a super-admin to grant it to your role.';

  @override
  String get postCardPermRubric => 'NOT ALLOWED';

  @override
  String get postCardPermTitle => 'Need the moderate_content perm';

  @override
  String get postCardRemovedBanner => 'Removed by Luney moderation';

  @override
  String get postCardRemovedBody =>
      'This post is already taken down. Restore it from the web admin tool, not the mobile app.';

  @override
  String get postCardRemovedRubric => 'ALREADY REMOVED';

  @override
  String get postCardRemovedTitle => 'Already removed by Luney moderation';

  @override
  String get postCardReportLabel => 'this post';

  @override
  String get postCardSpoilerOff => 'Photo loads in full.';

  @override
  String get postCardSpoilerOn =>
      'Photo will load behind a blur until viewers tap.';

  @override
  String postDetailLoadError(String error) {
    return 'We couldn\'t load this post right now. Try again in a moment. ($error)';
  }

  @override
  String get postDetailTitle => 'Post';

  @override
  String get postDetailUnavailable => 'This post is no longer available.';

  @override
  String get postTypeAdvice => 'Advice';

  @override
  String get postTypeAllFilter => 'All posts';

  @override
  String get postTypeCommunity => 'Community';

  @override
  String get postTypeDating => 'Dating';

  @override
  String get postTypeDiscussion => 'Discuss';

  @override
  String get postTypeEvent => 'Event';

  @override
  String get postTypeFriends => 'Friends';

  @override
  String get postTypeHookups => 'Hookups';

  @override
  String get postTypeIntro => 'Intro';

  @override
  String get postTypeLookingFor => 'Looking for';

  @override
  String get postTypeMissedConnection => 'Missed connection';

  @override
  String get postTypeMusic => 'Music';

  @override
  String get postTypeNetwork => 'Network';

  @override
  String get postTypeNewHere => 'New here';

  @override
  String get postTypeRandom => 'Random';

  @override
  String get postTypeT4t => 'T4T';

  @override
  String get preferencesChatEditLastChevronSubtitle =>
      'Adds a small ↑ inside the chat composer when it\'s empty. Tap it to pop your most recent message into edit mode.';

  @override
  String get preferencesChatEditLastChevronTitle =>
      'Show edit-last-message button';

  @override
  String get preferencesSectionChat => 'CHAT';

  @override
  String get preferencesTitle => 'Preferences';

  @override
  String get presenceAwayLabel => 'Away';

  @override
  String get presenceAwaySub => 'Around but not actively using the app';

  @override
  String get presenceDndLabel => 'Do Not Disturb';

  @override
  String get presenceDndSub => 'I\'m here but please don\'t ping me';

  @override
  String get presenceInvisibleLabel => 'Invisible';

  @override
  String get presenceInvisibleSub =>
      'Appear offline to others. You still see their dots.';

  @override
  String get presenceOnlineLabel => 'Online';

  @override
  String get presenceOnlineSub => 'Active right now';

  @override
  String get presencePickerTitle => 'Set status';

  @override
  String get privacyAccountActivitySubtitle =>
      'Every Luney moderation action on your account: warnings, removals, lifts, outreach.';

  @override
  String get privacyAccountActivityTitle => 'Account activity';

  @override
  String get privacyAccountReviewsSubtitle =>
      'See when Luney staff reviewed your account and in what scope.';

  @override
  String get privacyAccountReviewsTitle => 'Account reviews';

  @override
  String get privacyAudienceEveryone => 'Everyone';

  @override
  String get privacyAudienceEveryoneDesc => 'Anyone on Luney can comment';

  @override
  String get privacyAudienceFof => 'Friends of friends';

  @override
  String get privacyAudienceFofDesc => 'Your friends and their friends';

  @override
  String get privacyAudienceFriends => 'Friends only';

  @override
  String get privacyAudienceFriendsDesc => 'Only people you are friends with';

  @override
  String get privacyAudienceNoOne => 'No one';

  @override
  String get privacyAudienceNoOneDesc => 'Comments are off on your posts';

  @override
  String get privacyClosetSubtitle =>
      'Hide activity from folks outside your Circle';

  @override
  String get privacyClosetTitle => 'Closet Mode';

  @override
  String get privacyCommentAudienceSheetTitle =>
      'Who can comment on your posts';

  @override
  String get privacyDeleteConfirmAction => 'Schedule deletion';

  @override
  String get privacyDeleteConfirmBody =>
      'Your account will be removed in 30 days. Sign in again any time before then and you\'ll be asked to confirm. Answering no cancels the request and your account stays. After 30 days the deletion is permanent: profile, posts, comments, friendships, groups, DMs, and notifications all go. Audit logs survive with your user id redacted.';

  @override
  String get privacyDeleteConfirmTitle => 'Delete your account?';

  @override
  String get privacyDeleteErrorOp => 'Couldn\'t schedule deletion';

  @override
  String get privacyDeleteTitle => 'Delete Account';

  @override
  String privacyDeletionScheduledBody(String date) {
    return 'You have until then to change your mind. Sign in any time before $date and you\'ll be asked to confirm; answering no cancels the deletion and your account stays.';
  }

  @override
  String get privacyDeletionScheduledRubric => 'DELETION SCHEDULED';

  @override
  String privacyDeletionScheduledTitle(String date) {
    return 'Scheduled for $date';
  }

  @override
  String get privacyDmAudienceEveryone => 'Everyone';

  @override
  String get privacyDmAudienceEveryoneDesc =>
      'Anyone on Luney can send you a new DM. Per-group blocks still apply.';

  @override
  String get privacyDmAudienceExisting => 'Existing conversations only';

  @override
  String get privacyDmAudienceExistingDesc =>
      'Nobody new can start a DM with you, but people you\'re already messaging keep working.';

  @override
  String get privacyDmAudienceFof => 'Friends of friends';

  @override
  String get privacyDmAudienceFofDesc =>
      'Friends + friends of your friends. Per-group blocks still apply.';

  @override
  String get privacyDmAudienceFriends => 'Friends only';

  @override
  String get privacyDmAudienceFriendsDesc =>
      'Only people you are friends with. Per-group blocks still apply.';

  @override
  String get privacyDmAudienceNobody => 'Nobody';

  @override
  String get privacyDmAudienceNobodyDesc =>
      'Nobody can DM you, including existing thread partners. Switch back any time to resume.';

  @override
  String get privacyDmAudienceSheetTitle => 'Who can DM you';

  @override
  String get privacyDownloadTitle => 'Download My Data';

  @override
  String privacyExportAvailableIn(int days, String date) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Available again in $days days (on $date).',
      one: 'Available again in 1 day (on $date).',
    );
    return '$_temp0';
  }

  @override
  String privacyExportAvailableToday(String date) {
    return 'Available again later today (on $date).';
  }

  @override
  String privacyExportCooldownBody(String dayLine) {
    return 'Luney lets you pull a full data export once every 30 days to keep the load on the export query manageable. $dayLine';
  }

  @override
  String get privacyExportCooldownRubric => 'EXPORT ON COOLDOWN';

  @override
  String get privacyExportCooldownTitle => 'You already exported recently';

  @override
  String get privacyExportErrorOp => 'Couldn\'t export your data';

  @override
  String get privacyExportReady => 'Once per 30 days · available now.';

  @override
  String privacyExportResetsIn(int days, String date) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Resets in $days days (on $date).',
      one: 'Resets in 1 day (on $date).',
    );
    return '$_temp0';
  }

  @override
  String privacyExportResetsToday(String date) {
    return 'Resets later today (on $date).';
  }

  @override
  String get privacyExportShareSubject => 'Luney data export';

  @override
  String privacyExportShareText(String ts) {
    return 'Your Luney data export ($ts).';
  }

  @override
  String get privacyFuzzySubtitle =>
      'Show your location within ~5km instead of exact';

  @override
  String get privacyFuzzyTitle => 'Fuzzy Location';

  @override
  String get privacyHideMeFromMutualFriendsSubtitle =>
      'Don\'t show me in anyone else\'s \'mutual friends\' section. They won\'t see we\'re both friends with this person.';

  @override
  String get privacyHideMeFromMutualFriendsTitle =>
      'Hide Me from Others\' Mutual Friends';

  @override
  String get privacyHideMutualFriendsOnProfileSubtitle =>
      'Hide the \'mutual friends\' section on your profile so visitors don\'t see who you both know.';

  @override
  String get privacyHideMutualFriendsOnProfileTitle =>
      'Hide Mutual Friends on My Profile';

  @override
  String get privacyHideMutualGroupsOnProfileSubtitle =>
      'Hide the \'mutual groups\' section on your profile so visitors don\'t see which groups you share.';

  @override
  String get privacyHideMutualGroupsOnProfileTitle =>
      'Hide Mutual Groups on My Profile';

  @override
  String get privacyOnlineStatusSubtitle =>
      'Show others a colored dot on your avatar: green when you\'re active, yellow when you\'re idle, red when you\'ve set Do Not Disturb. Or pick Invisible to appear offline.';

  @override
  String get privacyOnlineStatusTitle => 'Online Status';

  @override
  String get privacyReadReceiptsSubtitle =>
      'Let people see when you\'ve read their DMs. Turn off and you won\'t see theirs either.';

  @override
  String get privacyReadReceiptsTitle => 'Read Receipts';

  @override
  String get privacySectionDangerZone => 'DANGER ZONE';

  @override
  String get privacySectionMessaging => 'MESSAGING';

  @override
  String get privacySectionMutuals => 'MUTUALS';

  @override
  String get privacySectionSharing => 'SHARING';

  @override
  String get privacySectionStaffAccess => 'STAFF ACCESS';

  @override
  String get privacySectionVisibility => 'VISIBILITY';

  @override
  String get privacySectionYourData => 'YOUR DATA';

  @override
  String get privacyShareLinkSubtitle =>
      'Lets you share a luneyapp.com/u/<handle> link to your profile. Off by default so your account isn\'t discoverable via a guessable URL; flip on if you want a link to give out.';

  @override
  String get privacyShareLinkTitle => 'Allow profile link sharing';

  @override
  String get privacyShareSubtitle =>
      'Lets others share your posts outside Luney. Applies to all your posts.';

  @override
  String get privacyShareTitle => 'Allow Sharing My Posts';

  @override
  String get privacyShowLastSeenSubtitle =>
      'Let others see a \'Last seen X ago\' line under your name when you\'re offline. The live green dot keeps working when you\'re online; this only controls the trailing line.';

  @override
  String get privacyShowLastSeenTitle => 'Show Last Seen';

  @override
  String get privacyStealthSubtitle =>
      'Hide from Map · no read receipts · invisible online';

  @override
  String get privacyStealthTitle => 'Stealth Mode';

  @override
  String get privacyTitle => 'Privacy';

  @override
  String get privacyUpdateErrorOp => 'Couldn\'t update setting';

  @override
  String get privacyWhoCanCommentSubtitle =>
      'Default for your new posts. Each post can still turn comments off.';

  @override
  String get privacyWhoCanCommentTitle => 'Who Can Comment';

  @override
  String get privacyWhoCanDmSubtitle =>
      'Outer gate for direct messages. Per-group DM blocks (Group → Settings → \"Allow DMs from members\") narrow this further.';

  @override
  String get privacyWhoCanDmTitle => 'Who Can DM';

  @override
  String get profileMenuBlock => 'Block';

  @override
  String get profileMenuBlockBody =>
      'They won\'t be able to see your posts or send you a friend request. Any existing friendship will be removed.';

  @override
  String profileMenuBlockTitle(String handle) {
    return 'Block @$handle?';
  }

  @override
  String get profileMenuErrBlock => 'Couldn\'t block user';

  @override
  String get profileMenuErrUnblock => 'Couldn\'t unblock user';

  @override
  String get profileMenuReport => 'Report';

  @override
  String get profileMenuUnblock => 'Unblock';

  @override
  String profileMutualFriendsTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mutual friends',
      one: '1 mutual friend',
    );
    return '$_temp0';
  }

  @override
  String profileMutualGroupsTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mutual groups',
      one: '1 mutual group',
    );
    return '$_temp0';
  }

  @override
  String get profileMutualMore => 'more';

  @override
  String profilePostsEmpty(String displayName) {
    return 'Posts will show up here as $displayName shares them with you.';
  }

  @override
  String get profilePostsEmptyMineBody =>
      'Your first post lands on your profile + your friends\' home feeds. Tap below to start.';

  @override
  String get profilePostsEmptyMineCta => 'Create your first post';

  @override
  String get profilePostsEmptyMineTitle => 'Nothing on your wall yet';

  @override
  String get profilePostsHeader => 'POSTS';

  @override
  String get profileReelsSectionHeader => 'REELS';

  @override
  String get profileReelsSectionOpenLabel => 'Open reel';

  @override
  String get profileReelsSectionProcessingLabel => 'Reel processing';

  @override
  String get profileReelsSectionStatusFailed => 'Failed';

  @override
  String get profileReelsSectionStatusProcessing => 'Processing…';

  @override
  String get profileScreenAvatarPresence =>
      'Your profile photo. Double-tap to change your online status.';

  @override
  String get profileScreenBadgePrivate => '🔒 Private';

  @override
  String get profileScreenBadgeStealth => '🕶️ Stealth';

  @override
  String get profileScreenEditProfile => 'Edit profile';

  @override
  String get profileScreenErrOpenChat => 'Couldn\'t open chat';

  @override
  String profileScreenFriendsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count friends',
      one: '1 friend',
    );
    return '$_temp0';
  }

  @override
  String get profileScreenFriendsNone => '- friends';

  @override
  String get profileScreenIdentity => 'IDENTITY';

  @override
  String get profileScreenInterests => 'INTERESTS';

  @override
  String profileScreenLoadError(String error) {
    return 'We couldn\'t load this profile right now. Try again in a moment. ($error)';
  }

  @override
  String get profileScreenMessage => 'Message';

  @override
  String get profileScreenNotFound => 'Profile not found';

  @override
  String get profileScreenOpeningThread => 'Opening message thread';

  @override
  String get profileScreenSeeFriendsA11y => 'See friends';

  @override
  String profileScreenSeeFriendsCountA11y(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'See $count friends',
      one: 'See 1 friend',
    );
    return '$_temp0';
  }

  @override
  String get profileScreenSeeMore => 'See more';

  @override
  String get profileScreenSettings => 'Settings';

  @override
  String get profileScreenShare => 'Share my profile';

  @override
  String get profileScreenShowLess => 'Show less';

  @override
  String get profileScreenWithinKm => '📍 within 5km';

  @override
  String get profileShareOptInBody =>
      'Off by default. Turn it on if you want a luneyapp.com/u/<handle> link to give out to people.';

  @override
  String get profileShareOptInBullet1 =>
      'Anyone with the link sees your display name, handle, avatar, banner, and bio';

  @override
  String get profileShareOptInBullet2 =>
      'DMs, posts, and friend list are NEVER exposed by the link';

  @override
  String get profileShareOptInBullet3 =>
      'Scrapers can\'t enumerate accounts when this is off';

  @override
  String get profileShareOptInCtaLater => 'Not now';

  @override
  String get profileShareOptInCtaYes => 'Yes, enable my share link';

  @override
  String get profileShareOptInErrorOp => 'Couldn\'t save your share preference';

  @override
  String get profileShareOptInFootnote =>
      'You can change this any time at Settings → Privacy → Allow profile link sharing.';

  @override
  String get profileShareOptInTitle => 'Want a shareable profile link?';

  @override
  String get profileSheetAddNote => 'Add a note';

  @override
  String get profileSheetAssignRoles => 'Assign roles';

  @override
  String get profileSheetAvatar => 'Avatar';

  @override
  String get profileSheetBan => 'Ban';

  @override
  String get profileSheetBanBody =>
      'They\'ll be removed and unable to re-join, including via invite codes, until you unban them.';

  @override
  String get profileSheetBanner => 'Banner';

  @override
  String get profileSheetBanReasonHint =>
      'Reason (optional, only visible to admins)';

  @override
  String profileSheetBanTitle(String handle) {
    return 'Ban @$handle?';
  }

  @override
  String get profileSheetChoosePhoto => 'Choose photo';

  @override
  String get profileSheetCropAvatar => 'Crop avatar';

  @override
  String get profileSheetCropBanner => 'Crop banner';

  @override
  String profileSheetCurrentlySuspendedPermanent(String kind) {
    return 'Currently suspended ($kind · permanent)';
  }

  @override
  String profileSheetCurrentlySuspendedUntil(String kind, String date) {
    return 'Currently suspended ($kind · until $date)';
  }

  @override
  String get profileSheetDeletionPastDue =>
      'Past due. Hard delete will run on next sign-in or by the cron worker.';

  @override
  String profileSheetDeletionScheduled(String date, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return 'Scheduled for $date · $_temp0 left.';
  }

  @override
  String get profileSheetDisplayName => 'Display name';

  @override
  String profileSheetDisplayNameValue(String name) {
    return 'Display name: $name';
  }

  @override
  String profileSheetDisplayNameValueHidden(String name) {
    return 'Display name: $name  (hidden, VIP only)';
  }

  @override
  String get profileSheetDmsOffMessage =>
      'They\'ve turned off DMs from members of your shared groups. You can still interact in those groups\' chat.';

  @override
  String get profileSheetDmsOffRubric => 'DMS OFF';

  @override
  String get profileSheetDmsOffTitle => 'This user doesn\'t accept DMs';

  @override
  String get profileSheetEditProfile => 'Edit profile';

  @override
  String get profileSheetErrBanMember => 'Couldn\'t ban member';

  @override
  String get profileSheetErrClearAvatar => 'Couldn\'t clear avatar';

  @override
  String get profileSheetErrClearBanner => 'Couldn\'t clear banner';

  @override
  String profileSheetErrLoadGroupProfile(String error) {
    return 'We couldn\'t load this group\'s profile right now. Try again in a moment.\n($error)';
  }

  @override
  String profileSheetErrLoadRoles(String error) {
    return 'We couldn\'t load the roles right now. Try again in a moment. ($error)';
  }

  @override
  String get profileSheetErrOpenChat => 'Couldn\'t open chat';

  @override
  String get profileSheetErrRemoveMember => 'Couldn\'t remove member';

  @override
  String get profileSheetErrSaveDisplayName => 'Couldn\'t save display name';

  @override
  String get profileSheetErrSaveNameStyle => 'Couldn\'t save name style';

  @override
  String get profileSheetErrSaveNote => 'Couldn\'t save note';

  @override
  String get profileSheetErrSetNickname => 'Couldn\'t set nickname';

  @override
  String get profileSheetErrUpdateRole => 'Couldn\'t update role';

  @override
  String get profileSheetErrUploadAvatar => 'Couldn\'t upload avatar';

  @override
  String get profileSheetErrUploadBanner => 'Couldn\'t upload banner';

  @override
  String profileSheetFriendsSince(String date) {
    return 'Friends since $date';
  }

  @override
  String get profileSheetGroupScopeNote =>
      'Changes here only apply inside this group.';

  @override
  String profileSheetGroupScopeNoteNamed(String group) {
    return 'Changes here only apply inside $group. Your global profile stays the same.';
  }

  @override
  String profileSheetInGroup(String group) {
    return 'In $group';
  }

  @override
  String get profileSheetInThisGroup => 'In this group';

  @override
  String profileSheetJoined(String date) {
    return 'Joined $date';
  }

  @override
  String get profileSheetKick => 'Kick';

  @override
  String get profileSheetLift => 'Lift';

  @override
  String get profileSheetLocationFuzzy => '📍 within 5km';

  @override
  String get profileSheetLuneyModeration => 'Luney moderation';

  @override
  String get profileSheetMessage => 'Message';

  @override
  String get profileSheetMessageOff => 'Message off';

  @override
  String get profileSheetMobileOnlyAvatarMsg =>
      'Avatar editing uses the device camera roll, which the web app can\'t reach. Hop over to the iOS or Android app to change your avatar.';

  @override
  String get profileSheetMobileOnlyBannerMsg =>
      'Banner editing uses the device camera roll, which the web app can\'t reach. Hop over to the iOS or Android app to change your banner.';

  @override
  String get profileSheetMobileOnlyRubric => 'MOBILE ONLY';

  @override
  String get profileSheetMobileOnlyTitle => 'Open the mobile app';

  @override
  String profileSheetMutualFriendsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Mutual Friends',
      one: '1 Mutual Friend',
    );
    return '$_temp0';
  }

  @override
  String get profileSheetMutualFriendsUnknown => '- Mutual Friends';

  @override
  String get profileSheetMyProfileHere => 'MY PROFILE HERE';

  @override
  String profileSheetMyProfileIn(String group) {
    return 'MY PROFILE IN $group';
  }

  @override
  String get profileSheetNameStyle => 'Name style';

  @override
  String get profileSheetNicknameHintClear => 'Leave blank to clear';

  @override
  String get profileSheetNicknameHintGlobal =>
      'Leave blank to use your global name';

  @override
  String get profileSheetNoCustomRoles =>
      'No custom roles yet. Create one in Group settings.';

  @override
  String get profileSheetNoteHint => 'Only you can see this.';

  @override
  String get profileSheetNotFound => 'Profile not found';

  @override
  String get profileSheetNotifications => 'Notifications';

  @override
  String get profileSheetPendingDeletion => 'Pending account deletion';

  @override
  String get profileSheetPillPrivate => '🔒 Private';

  @override
  String get profileSheetPillStealth => '🕶️ Stealth';

  @override
  String get profileSheetRemoveAction => 'Remove';

  @override
  String get profileSheetRemoveBody =>
      'They lose access to posts and chat. They can re-join if the group is public or they have an active invite.';

  @override
  String profileSheetRemoveTitle(String handle) {
    return 'Remove @$handle?';
  }

  @override
  String get profileSheetRoleAdmin => 'ADMIN';

  @override
  String get profileSheetRoleMember => 'MEMBER';

  @override
  String get profileSheetRoleMod => 'MOD';

  @override
  String get profileSheetRoleOwner => 'OWNER';

  @override
  String get profileSheetRoles => 'Roles';

  @override
  String get profileSheetSectionBio => 'Bio';

  @override
  String get profileSheetSectionIdentity => 'Identity';

  @override
  String get profileSheetSectionInterests => 'Interests';

  @override
  String get profileSheetSectionMemberSince => 'Member Since';

  @override
  String get profileSheetSectionNote => 'Note';

  @override
  String get profileSheetSeeMutualFriends => 'See mutual friends';

  @override
  String profileSheetSeeMutualFriendsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'See $count mutual friends',
      one: 'See 1 mutual friend',
    );
    return '$_temp0';
  }

  @override
  String get profileSheetSetDisplayName => 'Set display name';

  @override
  String get profileSheetStaffPill => 'STAFF';

  @override
  String get profileSheetSuspend => 'Suspend';

  @override
  String get profileSheetUseNormalAvatar => 'Use my normal avatar';

  @override
  String get profileSheetUseNormalBanner => 'Use my normal banner';

  @override
  String get profileSheetViewFullProfile => 'View full profile';

  @override
  String get profileSheetViewLess => 'View less';

  @override
  String get profileSheetViewMore => 'View more';

  @override
  String get profileSheetVipAvatarBody =>
      'Use a different photo in each community. Available on VIP, alongside per-group nicknames and unlimited GIF favourites.';

  @override
  String get profileSheetVipAvatarTitle => 'Per-group avatars are a VIP perk';

  @override
  String get profileSheetVipBannerBody =>
      'Use a different header image in each community. Available on VIP, alongside per-group display names + avatars and unlimited GIF favourites.';

  @override
  String get profileSheetVipBannerTitle => 'Per-group banners are a VIP perk';

  @override
  String get profileSheetVipNameStyleBody =>
      'Pick a font, an effect, and a colour. Available on VIP, alongside per-group nicknames + avatars and unlimited GIF favourites.';

  @override
  String get profileSheetVipNameStyleTitle =>
      'Display name styling is a VIP perk';

  @override
  String get profileSheetVipNicknameBody =>
      'Show up with a different name in each community. Available on VIP, alongside unlimited GIF favourites and cross-group custom emojis.';

  @override
  String get profileSheetVipNicknameTitle =>
      'Per-group display names are a VIP perk';

  @override
  String get profileSheetWarn => 'Warn';

  @override
  String get pushPrePromptBullet1 => 'New direct messages from friends';

  @override
  String get pushPrePromptBullet2 => 'Mentions in chats and posts';

  @override
  String get pushPrePromptBullet3 => 'Replies and reactions to your posts';

  @override
  String get pushPrePromptBullet4 => 'Group messages from groups you\'re in';

  @override
  String get pushPrePromptBullet5 => 'Friend requests and accepts';

  @override
  String get pushPrePromptCtaLater => 'Not now';

  @override
  String get pushPrePromptCtaYes => 'Yes, enable notifications';

  @override
  String get pushPrePromptFootnote =>
      'You can fine-tune every category later in Settings → Notifications.';

  @override
  String get pushPrePromptSubtitle =>
      'Push notifications keep you in the loop for the things you\'d hate to miss.';

  @override
  String get pushPrePromptTitle => 'Want a heads-up when something happens?';

  @override
  String recordingModeBannerMessage(String until) {
    return 'Recording mode: screen protection is OFF on this device$until.';
  }

  @override
  String get recordingModeBannerTapToStop => 'TAP TO STOP';

  @override
  String recordingModeBannerUntil(String time) {
    return ' · until $time';
  }

  @override
  String get reelActionDeleteSegment => 'Delete segment';

  @override
  String get reelActionDeleteSticker => 'Delete sticker';

  @override
  String get reelActionDeleteText => 'Delete text';

  @override
  String get reelActionEditFades => 'Edit fades on timeline';

  @override
  String get reelActionEditText => 'Edit text';

  @override
  String get reelActionHideFades => 'Hide fade controls';

  @override
  String get reelActionMoveDown => 'Move down (towards back)';

  @override
  String get reelActionMoveUp => 'Move up (towards top)';

  @override
  String get reelActionRemoveOriginalAudio => 'Remove original audio';

  @override
  String get reelActionRemoveTrack => 'Remove track';

  @override
  String get reelAspectRatioOriginal => 'Original';

  @override
  String get reelAudioAddTitle => 'Add audio';

  @override
  String get reelAudioDownloading => 'Downloading audio…';

  @override
  String get reelAudioDownloadOp => 'Downloading audio';

  @override
  String get reelAudioErrEmpty => 'Server returned an empty file.';

  @override
  String reelAudioErrNotAudio(String type) {
    return 'URL doesn\'t return audio (got $type). Use a direct mp3 link.';
  }

  @override
  String reelAudioErrServerStatus(int code) {
    return 'Server returned $code.';
  }

  @override
  String reelAudioErrTooBig(String size) {
    return 'File is $size MB. Max is 50 MB.';
  }

  @override
  String get reelAudioLicenseBody =>
      'You can layer your own mp3 over your reel. Before adding a track, confirm that you own this audio or are licensed to use it. Reels are public-feed content; copyrighted audio you don\'t have rights to may get the post pulled and could affect your account.';

  @override
  String get reelAudioLicenseConfirm => 'I confirm';

  @override
  String get reelAudioLicenseTitle => 'Confirm audio rights';

  @override
  String get reelAudioPasteUrl => 'Paste a direct URL';

  @override
  String get reelAudioPasteUrlSub =>
      'HTTPS link to an mp3 file. YouTube / Spotify links won\'t work; needs a direct mp3 stream.';

  @override
  String get reelAudioPickDevice => 'Pick mp3 from device';

  @override
  String get reelAudioPickDeviceSub =>
      'Choose an mp3 from your phone. Layered over the original audio.';

  @override
  String get reelAudioUrlBody =>
      'Direct HTTPS link to an mp3 file. We download it to your device, mix it into your reel, and discard the file after upload. The audio ends up baked into the video.';

  @override
  String get reelAudioUrlEmpty => 'Paste a URL first.';

  @override
  String get reelAudioUrlHint => 'https://example.com/track.mp3';

  @override
  String get reelAudioUrlScheme => 'URL must start with https://';

  @override
  String get reelAudioUrlTitle => 'Paste audio URL';

  @override
  String get reelAudioUrlUse => 'Use this URL';

  @override
  String get reelDetailMissingMessage =>
      'This reel isn\'t available. It may have been removed by the owner or you don\'t have permission to view it.';

  @override
  String get reelDetailOpening => 'Opening reel';

  @override
  String get reelDragHint => 'tap to edit · drag to move · pinch to resize';

  @override
  String get reelEditScreenOpRebaking => 'Re-baking reel overlays';

  @override
  String get reelEditScreenOpReuploading => 'Re-uploading reel';

  @override
  String get reelEditScreenOpTrimming => 'Trimming reel';

  @override
  String get reelInspectorAddedMp3 => 'Added mp3';

  @override
  String get reelInspectorFadeIn => 'Fade in';

  @override
  String get reelInspectorFadeOut => 'Fade out';

  @override
  String get reelInspectorOriginalAudio => 'Original audio';

  @override
  String get reelInspectorVideo => 'Video';

  @override
  String get reelInspectorVolume => 'Volume';

  @override
  String get reelOpLoadingPreview => 'Loading the preview';

  @override
  String get reelOpReversePreview => 'Generating reverse preview';

  @override
  String get reelPanelAddMp3 => 'Add mp3';

  @override
  String get reelPanelAddOriginal => 'Add original';

  @override
  String reelPanelSticker(int count, int max) {
    return 'Sticker $count/$max';
  }

  @override
  String reelPanelText(int count, int max) {
    return 'Text $count/$max';
  }

  @override
  String get reelPlayerErrorSemantics =>
      'Couldn\'t load this reel. Tap for details.';

  @override
  String get reelPlayerErrorTitle => 'Couldn\'t load this reel.';

  @override
  String get reelPlayerLoadingOp => 'Loading reel';

  @override
  String get reelPlayerTapForDetails => 'Tap for details';

  @override
  String get reelProgressBannerBaking => 'Baking your reel…';

  @override
  String reelProgressBannerBakingPct(int pct) {
    return 'Baking your reel… $pct%';
  }

  @override
  String get reelProgressBannerCancel => 'CANCEL';

  @override
  String get reelProgressBannerKeepBrowsing => 'KEEP BROWSING';

  @override
  String get reelProgressBannerLoading => 'Loading your reel for editing…';

  @override
  String get reelProgressBannerUploading => 'Uploading your reel…';

  @override
  String reelProgressBannerUploadingPct(int pct) {
    return 'Uploading your reel… $pct%';
  }

  @override
  String get reelReversePreviewSpinner => 'Generating reverse preview…';

  @override
  String get reelScrubHint => 'drag to scrub';

  @override
  String get reelScrubTime => 'TIME';

  @override
  String reelSegLabel(int n) {
    return 'Seg $n';
  }

  @override
  String get reelSegmentsLabel => 'CLIPS';

  @override
  String get reelsHomeRailAddLabel => 'Add your reel';

  @override
  String get reelsHomeRailMe => 'Me';

  @override
  String get reelsHomeRailUploading => 'Uploading…';

  @override
  String get reelsHomeRailUploadingA11y => 'Your reel is uploading';

  @override
  String get reelsHomeRailYourReel => 'Your reel';

  @override
  String get reelSplitAtPlayhead => 'Split at playhead';

  @override
  String get reelStatsCaption => 'CAPTION';

  @override
  String reelStatsCommentsLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'comments',
      one: 'comment',
    );
    return '$_temp0';
  }

  @override
  String get reelStatsContinue => 'Continue';

  @override
  String get reelStatsDeleteBody =>
      'It\'ll stop appearing on your profile and in friends\' home rails. This can\'t be undone.';

  @override
  String get reelStatsDeleteReelBtn => 'Delete reel';

  @override
  String get reelStatsDeleteTitle => 'Delete reel?';

  @override
  String get reelStatsDuration => 'Duration';

  @override
  String get reelStatsEditBody =>
      'We\'ll download the original, let you re-trim it, then upload the new version. Once the new reel is ready, the old one will be removed.\n\nView count, hearts, and fires will reset. If you crossposted this reel to your feed, the post stays and updates to the new version automatically.';

  @override
  String get reelStatsEditOverlays => 'Edit overlays';

  @override
  String get reelStatsEditReel => 'Edit reel';

  @override
  String get reelStatsEditTitle => 'Edit this reel?';

  @override
  String get reelStatsErrDelete => 'Deleting reel';

  @override
  String get reelStatsErrSaveOverlays => 'Saving overlays';

  @override
  String get reelStatsHeading => 'REEL STATS';

  @override
  String reelStatsLikesLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'likes',
      one: 'like',
    );
    return '$_temp0';
  }

  @override
  String get reelStatsOverlaysRemovedBody =>
      'Your reel no longer has any text or stickers.';

  @override
  String get reelStatsOverlaysRemovedTitle => 'Removed all overlays';

  @override
  String get reelStatsOverlaysRubric => 'OVERLAYS UPDATED';

  @override
  String get reelStatsOverlaysSavedBody =>
      'The new overlays show up the next time anyone watches this reel. No re-encode needed.';

  @override
  String get reelStatsOverlaysSavedTitle => 'Overlays saved';

  @override
  String get reelStatsPosted => 'Posted';

  @override
  String reelStatsReportPost(String owner) {
    return 'post by $owner';
  }

  @override
  String reelStatsReportReel(String owner) {
    return 'reel by $owner';
  }

  @override
  String get reelStatsReportReelBtn => 'Report reel';

  @override
  String get reelStatsThisReel => 'this reel';

  @override
  String reelStatsViewsLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'views',
      one: 'view',
    );
    return '$_temp0';
  }

  @override
  String get reelStickerEmojiSection => 'Emoji';

  @override
  String get reelStickerGroupEmojis => 'Group emojis';

  @override
  String get reelStickerGroupEmojisVip => 'Group emojis (VIP)';

  @override
  String get reelStickerGroupFallback => 'Group';

  @override
  String get reelStickerPickTitle => 'Pick a sticker';

  @override
  String get reelsViewerComments => 'Comments';

  @override
  String get reelsViewerEmpty => 'No reels to play.';

  @override
  String get reelsViewerErrLike => 'Liking reel';

  @override
  String get reelsViewerLike => 'Like';

  @override
  String reelsViewerOpenProfile(String name) {
    return 'Open $name\'s profile';
  }

  @override
  String get reelsViewerReport => 'Report';

  @override
  String get reelsViewerUnlike => 'Unlike';

  @override
  String get reelTabAudio => 'Audio';

  @override
  String get reelTabOverlays => 'Overlays';

  @override
  String get reelTabStyle => 'Style';

  @override
  String get reelTextAdd => 'Add';

  @override
  String get reelTextEditTitle => 'Edit overlay';

  @override
  String get reelTextHint => 'Type something…';

  @override
  String get reelTextLabelColor => 'COLOR';

  @override
  String get reelTextLabelSize => 'SIZE';

  @override
  String get reelTextNewTitle => 'New text overlay';

  @override
  String get reelTextSizeLarge => 'Large';

  @override
  String get reelTextSizeMedium => 'Medium';

  @override
  String get reelTextSizeSmall => 'Small';

  @override
  String get reelTimelineLoadingDuration => 'Loading video duration…';

  @override
  String get reelTimelineOrig => 'ORIG';

  @override
  String get reelTimelineVideoLabel => 'VIDEO';

  @override
  String get reelTimelineVoice => 'VOICE';

  @override
  String get reelTopBarSkip => 'Skip';

  @override
  String get reelTopBarTitle => 'Add overlays';

  @override
  String get reelVideoEffectBlur => 'Blur';

  @override
  String get reelVideoEffectMirror => 'Mirror';

  @override
  String get reelVideoEffectNone => 'No effect';

  @override
  String get reelVideoEffectReverse => 'Reverse';

  @override
  String get reelVideoEffectVignette => 'Vignette';

  @override
  String get reelVideoFilterBw => 'B&W';

  @override
  String get reelVideoFilterCool => 'Cool';

  @override
  String get reelVideoFilterNone => 'None';

  @override
  String get reelVideoFilterSepia => 'Sepia';

  @override
  String get reelVideoFilterVintage => 'Vintage';

  @override
  String get reelVideoFilterVivid => 'Vivid';

  @override
  String get reelVideoFilterWarm => 'Warm';

  @override
  String get reelVoiceMicNeededBody =>
      'Voice-over needs microphone access. Enable it in Settings, then tap Record again.';

  @override
  String get reelVoiceMicNeededTitle => 'Microphone access needed';

  @override
  String get reelVoiceOpenSettings => 'Open Settings';

  @override
  String get reelVoiceOverLabel => 'Voice-over';

  @override
  String get reelVoiceRecord => 'Record voice-over';

  @override
  String get reelVoiceRecorded => 'Voice-over recorded';

  @override
  String get reelVoiceRecording => 'Recording…';

  @override
  String get reelVoiceReRecord => 'Re-record';

  @override
  String get reelVoiceStartOp => 'Starting voice-over recording';

  @override
  String get reelVoiceUse => 'Use voice-over';

  @override
  String get reportDetailActionCrisisSubtitle =>
      'Sends the author a warm \'thinking of you\' push with a list of queer-affirming crisis resources. Doesn\'t resolve the reports. Pick a resolution below.';

  @override
  String get reportDetailActionCrisisTitle => 'Send crisis support';

  @override
  String get reportDetailActionDismissSubtitle =>
      'Mark every report on this target as resolved. Content is left in place. Pick this for false alarms.';

  @override
  String get reportDetailActionDismissTitle => 'Dismiss reports';

  @override
  String get reportDetailActionHardSubtitle =>
      'Bypass the 7-day undo window and hard-delete now. Super-admin only. For clearly illegal content.';

  @override
  String get reportDetailActionHardTitle => 'Remove permanently';

  @override
  String get reportDetailActionRemoveSubtitle =>
      'Hide it from members and resolve the reports. Restorable within 7 days; auto-purges after that.';

  @override
  String get reportDetailActionRemoveTitle => 'Remove content';

  @override
  String reportDetailByReporter(String name) {
    return 'by $name';
  }

  @override
  String get reportDetailCrisisConfirmBody =>
      'We\'ll send the author a warm \'thinking of you\' push with a curated list of crisis resources. The push body is non-revealing; they (and anyone glancing at their screen) won\'t see what content prompted it.\n\nThis doesn\'t resolve the report. Pick a resolution after.';

  @override
  String get reportDetailCrisisConfirmTitle => 'Send crisis support?';

  @override
  String get reportDetailCrisisSend => 'Send';

  @override
  String get reportDetailCrisisSentBody =>
      'They\'ll get a warm \"thinking of you\" push with a list of queer-affirming crisis resources. The push body is deliberately non-revealing about what triggered it.';

  @override
  String get reportDetailCrisisSentRubric => 'CRISIS SUPPORT SENT';

  @override
  String get reportDetailCrisisSentTitle => 'Support sent';

  @override
  String get reportDetailErrResolve => 'Couldn\'t resolve report';

  @override
  String get reportDetailErrSendSupport => 'Couldn\'t send support';

  @override
  String get reportDetailHardConfirmAction => 'Permanently remove';

  @override
  String get reportDetailHardConfirmBody =>
      'Hard delete bypasses the 7-day undo window. The row is gone immediately and cannot be restored. Reserved for clearly illegal content.';

  @override
  String get reportDetailHardConfirmTitle => 'Permanently remove?';

  @override
  String reportDetailLoadError(String error) {
    return 'We couldn\'t load this report right now. Try again in a moment. ($error)';
  }

  @override
  String get reportDetailNoReports => 'No open reports.';

  @override
  String get reportDetailNotesHint =>
      'Internal note: visible to staff/admins only.';

  @override
  String get reportDetailNotesLabel => 'Resolution notes (optional)';

  @override
  String reportDetailReportsLine(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'closed $count reports',
      one: 'closed 1 report',
      zero: 'no reports were open',
    );
    return '$_temp0';
  }

  @override
  String get reportDetailRubricDismissed => 'DISMISSED';

  @override
  String get reportDetailRubricRemoved => 'REMOVED';

  @override
  String get reportDetailSoftConfirmAction => 'Remove';

  @override
  String get reportDetailSoftConfirmBody =>
      'The content will be hidden from members and can be restored within 7 days. After that it is purged automatically.';

  @override
  String get reportDetailSoftConfirmTitle => 'Remove this content?';

  @override
  String reportDetailSuccessDismiss(String reports) {
    return 'Dismissed. $reports.';
  }

  @override
  String reportDetailSuccessHardRemove(String reports) {
    return 'Permanently removed. $reports. No undo.';
  }

  @override
  String reportDetailSuccessSoftRemove(String reports) {
    return 'Removed. $reports. Restore within 7 days from the reported message.';
  }

  @override
  String get reportDetailTitleComment => 'Reports about this comment';

  @override
  String get reportDetailTitleConfession => 'Reports about this confession';

  @override
  String get reportDetailTitleFeedback => 'Reports about this suggestion';

  @override
  String get reportDetailTitleFeedbackComment =>
      'Reports about this feedback comment';

  @override
  String get reportDetailTitleIcebreakerAnswer =>
      'Reports about this icebreaker answer';

  @override
  String get reportDetailTitleIcebreakerReply =>
      'Reports about this icebreaker reply';

  @override
  String get reportDetailTitleLobby => 'Reports about this Live Lobby';

  @override
  String get reportDetailTitleMessage => 'Reports about this message';

  @override
  String get reportDetailTitlePost => 'Reports about this post';

  @override
  String get reportDetailTitleReel => 'Reports about this reel';

  @override
  String get reportDetailTitleRollCall =>
      'Reports about this roll-call check-in';

  @override
  String get reportDetailTitleShoutout => 'Reports about this shoutout';

  @override
  String get reportDetailTitleUser => 'Reports about this user';

  @override
  String get reportDetailTitleWeeklyPromptReply =>
      'Reports about this prompt reply';

  @override
  String get reportDetailTitleWeeklyPromptResponse =>
      'Reports about this prompt response';

  @override
  String get reportDetailUnknownReporter => 'Unknown';

  @override
  String get reportDetailViewBtn => 'View';

  @override
  String get reportReasonHarassment => 'Harassment or bullying';

  @override
  String get reportReasonHateSpeech => 'Hate speech';

  @override
  String get reportReasonImpersonation => 'Impersonation';

  @override
  String get reportReasonOther => 'Something else';

  @override
  String get reportReasonSelfHarm => 'Self-harm or suicide';

  @override
  String get reportReasonSexualContent => 'Unwanted sexual content';

  @override
  String get reportReasonSpam => 'Spam';

  @override
  String get reportSheetDetailsHint => 'Add context for the moderator…';

  @override
  String get reportSheetDetailsLabel => 'Anything else? (optional)';

  @override
  String get reportSheetErrSubmit => 'Couldn\'t submit report';

  @override
  String get reportSheetRouteGroupAdmins =>
      'Group admins will review this. If they don\'t respond within 48 hours, it escalates to Luney staff.';

  @override
  String get reportSheetRouteLuneyStaff =>
      'This goes straight to Luney staff for fast review.';

  @override
  String get reportSheetSubmit => 'Submit';

  @override
  String get reportSheetSubtitle =>
      'Tell us what\'s going on. Our moderators will review.';

  @override
  String get reportSheetSuccessBody =>
      'A Luney moderator will review this. You\'ll get a push when there\'s a resolution. If urgent or you spot the same behaviour elsewhere, report again with the new context.';

  @override
  String get reportSheetSuccessRubric => 'REPORT SUBMITTED';

  @override
  String get reportSheetSuccessTitle => 'Thanks for telling us';

  @override
  String reportSheetTitle(String target) {
    return 'Report $target';
  }

  @override
  String get reportsInboxBadgeEscalated => 'Escalated';

  @override
  String get reportsInboxBadgeSevere => 'Severe';

  @override
  String get reportsInboxEmptyBody =>
      'Reports landing here will show up automatically.';

  @override
  String get reportsInboxEmptyTitle => 'Nothing in the queue.';

  @override
  String get reportsInboxJump => 'Jump';

  @override
  String get reportsInboxKindComment => 'Comment';

  @override
  String get reportsInboxKindConfession => 'Confession';

  @override
  String get reportsInboxKindFeedback => 'Suggestion';

  @override
  String get reportsInboxKindFeedbackComment => 'Feedback comment';

  @override
  String get reportsInboxKindGroupComment => 'Group comment';

  @override
  String get reportsInboxKindGroupMessage => 'Group chat message';

  @override
  String get reportsInboxKindGroupPost => 'Group post';

  @override
  String get reportsInboxKindIcebreakerAnswer => 'Icebreaker answer';

  @override
  String get reportsInboxKindIcebreakerReply => 'Icebreaker reply';

  @override
  String get reportsInboxKindLobby => 'Live Lobby';

  @override
  String get reportsInboxKindPost => 'Post';

  @override
  String get reportsInboxKindReel => 'Reel';

  @override
  String get reportsInboxKindRollCall => 'Roll-call check-in';

  @override
  String get reportsInboxKindShoutout => 'Shoutout';

  @override
  String get reportsInboxKindUser => 'User';

  @override
  String get reportsInboxKindWeeklyPromptReply => 'Weekly prompt reply';

  @override
  String get reportsInboxKindWeeklyPromptResponse => 'Weekly prompt response';

  @override
  String reportsInboxLoadError(String error) {
    return 'We couldn\'t load your reports right now. Try again in a moment. ($error)';
  }

  @override
  String reportsInboxMoreReasons(int count) {
    return '+$count more';
  }

  @override
  String get reportsInboxPreviewContentGone =>
      'This content is no longer available.';

  @override
  String get reportsInboxPreviewError => 'Could not load preview.';

  @override
  String get reportsInboxPreviewImageFallback => 'image';

  @override
  String get reportsInboxPreviewLoading => 'Loading reported content…';

  @override
  String get reportsInboxPreviewNoContentProfile =>
      'No content. Profile-level report.';

  @override
  String get reportsInboxPreviewNoText => '(no text)';

  @override
  String get reportsInboxPreviewProfileGone => 'Profile no longer exists.';

  @override
  String get reportsInboxPreviewRemoved => '🛡️ Removed by Luney moderation';

  @override
  String reportsInboxReportCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count reports',
      one: '1 report',
    );
    return '$_temp0';
  }

  @override
  String resendLinkCooldown(int seconds) {
    return 'Resend in ${seconds}s';
  }

  @override
  String get resendLinkCta => 'Resend link';

  @override
  String get resendLinkErr => 'Couldn\'t resend link';

  @override
  String get resendLinkSending => 'Sending…';

  @override
  String resendLinkSentBody(String email) {
    return 'We sent a fresh link to $email. The previous one still works too if you find it.';
  }

  @override
  String get resendLinkSentRubric => 'LINK SENT';

  @override
  String get resendLinkSentTitle => 'Check your inbox again';

  @override
  String get resetPasswordConfirmLabel => 'Confirm new password';

  @override
  String get resetPasswordErrMismatch => 'Passwords don\'t match.';

  @override
  String get resetPasswordErrSave => 'Couldn\'t save the new password';

  @override
  String get resetPasswordErrTooShort => 'Use at least 8 characters.';

  @override
  String get resetPasswordHeading => 'Pick a new password';

  @override
  String get resetPasswordNewLabel => 'New password';

  @override
  String get resetPasswordSave => 'Save and sign in';

  @override
  String get resetPasswordSaving => 'Saving…';

  @override
  String get resetPasswordSubtitle =>
      'At least 8 characters. You will be signed in once it saves.';

  @override
  String get resetPasswordSuccessBody =>
      'Your new password is active. Use it next time you sign in on another device.';

  @override
  String get resetPasswordSuccessRubric => 'PASSWORD UPDATED';

  @override
  String get resetPasswordSuccessTitle => 'You are signed in';

  @override
  String get reviewPoliciesAcceptErrorOp => 'Couldn\'t save acceptance';

  @override
  String get reviewPoliciesAgreeBoth => 'I agree to both';

  @override
  String get reviewPoliciesAgreeOne => 'I agree';

  @override
  String reviewPoliciesDocVersionRead(String version) {
    return 'Version $version · read ✓';
  }

  @override
  String reviewPoliciesDocVersionUnread(String version) {
    return 'Version $version · tap to read';
  }

  @override
  String reviewPoliciesIntro(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Please review and accept both documents below before continuing.',
      one: 'Please review and accept the document below before continuing.',
    );
    return '$_temp0';
  }

  @override
  String reviewPoliciesLoadError(String error) {
    return 'We couldn\'t load the policies right now. Try again in a moment. ($error)';
  }

  @override
  String get reviewPoliciesOpenFirstBoth => 'Open both documents first.';

  @override
  String get reviewPoliciesOpenFirstOne => 'Open the document above first.';

  @override
  String get reviewPoliciesReadFirstBoth => 'Read both to continue';

  @override
  String get reviewPoliciesReadFirstOne => 'Tap above to read first';

  @override
  String get reviewPoliciesSignOutBody =>
      'You can sign back in anytime. Using Luney requires agreeing to the documents.';

  @override
  String get reviewPoliciesSignOutConfirm => 'Sign out';

  @override
  String get reviewPoliciesSignOutErrorOp => 'Couldn\'t sign out';

  @override
  String get reviewPoliciesSignOutInstead => 'Sign out instead';

  @override
  String get reviewPoliciesSignOutTitle => 'Sign out?';

  @override
  String get reviewPoliciesTitle => 'A quick update';

  @override
  String get rewindClosingLabel => 'THAT\'S A WRAP';

  @override
  String get rewindClosingSubtitle =>
      'Tap the share button to post any\nslide as an Instagram Story.';

  @override
  String get rewindClosingTitle => 'Thanks for being here.';

  @override
  String rewindDmsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'DMs sent. You\'ve been talking.',
      one: 'DM. (We see you, lurker.)',
    );
    return '$_temp0';
  }

  @override
  String get rewindDmsLabel => 'MESSAGES SENT';

  @override
  String get rewindErrShare => 'Couldn\'t share your Rewind slide';

  @override
  String get rewindFirstPostBody =>
      'you broke the silence?\nThat was your first post this year.';

  @override
  String rewindFirstPostDate(String month, int day) {
    return '$month $day';
  }

  @override
  String get rewindFirstPostLabel => 'YOUR FIRST POST THIS YEAR';

  @override
  String get rewindFirstPostTitle => 'Remember when';

  @override
  String get rewindFriendFallback => 'friend';

  @override
  String rewindFriendMessages(String count) {
    return '$count messages';
  }

  @override
  String get rewindFriendNameFallback => 'A friend';

  @override
  String get rewindGroupFallback => 'Your group';

  @override
  String rewindGroupMessages(String count) {
    return '$count messages from you.';
  }

  @override
  String rewindGroupsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'new groups joined.',
      one: 'new group joined.',
    );
    return '$_temp0';
  }

  @override
  String get rewindGroupsLabel => 'YOUR COMMUNITIES';

  @override
  String rewindJoinedDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'days on Luney so far.\nWe\'re glad you\'re here.',
      one: 'day on Luney.',
    );
    return '$_temp0';
  }

  @override
  String get rewindJoinedLabel => 'YOUR LUNEY ANNIVERSARY';

  @override
  String rewindLobbiesCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lobbies hosted. The mic was on.',
      one: 'lobby hosted. The mic was on.',
    );
    return '$_temp0';
  }

  @override
  String get rewindLobbiesLabel => 'LOBBIES YOU HOSTED';

  @override
  String get rewindMostActiveLabel => 'YOUR MOST ACTIVE GROUP';

  @override
  String rewindPreparing(int year) {
    return 'Preparing your $year Rewind…';
  }

  @override
  String get rewindPreparingBody => 'Hang tight, we\'re still baking.';

  @override
  String get rewindPromoDismiss => 'Dismiss';

  @override
  String get rewindPromoPreparingSubtitle =>
      'We\'re baking it now. Check back in a few minutes.';

  @override
  String rewindPromoPreparingTitle(int year) {
    return 'Your $year Rewind is on the way';
  }

  @override
  String get rewindPromoReadySubtitle => 'Tap to see your year on Luney.';

  @override
  String rewindPromoReadyTitle(int year) {
    return 'Your $year Rewind is here ✨';
  }

  @override
  String rewindReelsPostedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'reels posted.',
      one: 'reel posted.',
    );
    return '$_temp0';
  }

  @override
  String get rewindReelsPostedLabel => 'YOUR REEL ERA';

  @override
  String rewindReelsWatchedCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'reels watched this year.',
      one: 'reel watched.',
    );
    return '$_temp0';
  }

  @override
  String get rewindReelsWatchedLabel => 'REELS YOU WATCHED';

  @override
  String get rewindSettingsTileSubtitle => 'Open + share your year on Luney';

  @override
  String rewindSettingsTileTitle(int year) {
    return 'Your $year Rewind';
  }

  @override
  String rewindShareSubject(int year) {
    return 'My Luney Rewind $year';
  }

  @override
  String get rewindShareText => 'My year on Luney 💖';

  @override
  String get rewindShareTooltip => 'Share this slide';

  @override
  String get rewindSlideLoading => 'Slide is still loading. Tap share again.';

  @override
  String get rewindTopFriendsLabel => 'YOUR TOP FRIENDS';

  @override
  String get rewindTopFriendsTitle => 'The people you talked to most.';

  @override
  String get rewindTopHashtagLabel => 'TOP HASHTAG';

  @override
  String get rewindUnavailableBody => 'Check back when the next season opens.';

  @override
  String get rewindUnavailableTitle => 'Luney Rewind isn\'t open right now.';

  @override
  String get rewindWelcomeLabel => 'YOUR YEAR ON LUNEY';

  @override
  String get rewindWelcomeSubtitle => 'Tap or swipe to keep going.';

  @override
  String rewindWelcomeTitle(String name) {
    return 'Hey $name,\nlet\'s look back.';
  }

  @override
  String get rollCallCardCheckInOp => 'Couldn\'t check in';

  @override
  String rollCallCardCheckInWithEmoji(String emoji) {
    return 'Check in with emoji $emoji';
  }

  @override
  String get rollCallCardHeader => 'ROLL CALL';

  @override
  String get rollCallCardReportTarget => 'this check-in';

  @override
  String get rollCallCardToday => 'Today';

  @override
  String rollCallCardTodayCount(int count) {
    return 'Today · $count here';
  }

  @override
  String get rollCallCardYou => 'You';

  @override
  String get routerChildSafetyTitle => 'Child Safety';

  @override
  String get routerErrorNoMatch => 'No matching route';

  @override
  String get routerErrorOpeningPage => 'Opening page';

  @override
  String get routerWhatsNewTitle => 'What\'s New';

  @override
  String get safetyScreenAccountRestrictions => 'Account restrictions';

  @override
  String get safetyScreenBlockedUsers => 'Blocked Users';

  @override
  String get safetyScreenCrisisResources => 'Crisis support resources';

  @override
  String get safetyScreenDateCheckin => 'Date Check-in';

  @override
  String get safetyScreenPanicMode => 'Panic Mode';

  @override
  String get safetyScreenSectionAccount => 'YOUR ACCOUNT';

  @override
  String get safetyScreenSectionCheckOn => 'PEOPLE WHO CAN CHECK ON YOU';

  @override
  String get safetyScreenSectionPeople => 'PEOPLE';

  @override
  String get safetyScreenSectionPhoneGrabbed => 'IF YOUR PHONE GETS GRABBED';

  @override
  String get safetyScreenSectionTalkTo => 'IF YOU NEED SOMEONE TO TALK TO';

  @override
  String get safetyScreenTitle => 'Safety';

  @override
  String get safetyScreenTrustedCircle => 'Trusted Circle';

  @override
  String get screenCaptureGuardBody =>
      'Luney hides your content while the screen is being recorded or mirrored. Stop the recording to return to the app. The people in any open chat have been told a recording started.';

  @override
  String get screenCaptureGuardTitle => 'Screen recording detected';

  @override
  String get screenshotNotifierPostMessage =>
      'Heads up: Luney told the post\'s author you took a screenshot. The notification doesn\'t include the screenshot itself, just that one was taken.';

  @override
  String get screenshotNotifierPostTitle => 'The post owner was notified';

  @override
  String get screenshotNotifierProfileMessage =>
      'Heads up: Luney told the profile owner you took a screenshot. The notification doesn\'t include the screenshot itself, just that one was taken.';

  @override
  String get screenshotNotifierProfileTitle => 'The profile owner was notified';

  @override
  String get screenshotNotifierReelMessage =>
      'Heads up: Luney told the reel\'s creator you took a screenshot. The notification doesn\'t include the screenshot itself, just that one was taken.';

  @override
  String get screenshotNotifierReelTitle => 'The reel owner was notified';

  @override
  String get screenshotNotifierRubric => 'SCREENSHOT TAKEN';

  @override
  String get searchClear => 'Clear search';

  @override
  String searchFailed(String error) {
    return 'Your search didn\'t go through. Try again in a moment. ($error)';
  }

  @override
  String get searchHashtagSubtitle => 'See posts and reels with this tag';

  @override
  String get searchHint => 'Search people or #hashtags…';

  @override
  String get searchMinChars => 'Type at least 2 characters to search.';

  @override
  String get searchNoMatches => 'No matches.';

  @override
  String get securityChange => 'Change';

  @override
  String get securityChangePassword => 'Change Password';

  @override
  String securityConnectionsLinked(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count third-party providers linked.',
      one: '1 third-party provider linked.',
    );
    return '$_temp0';
  }

  @override
  String get securityConnectionsNone =>
      'Link Apple, Google, or Discord to sign in faster.';

  @override
  String get securityEmailLabel => 'Email Address';

  @override
  String get securityEmailSentMsg =>
      'Tap the link in the email to confirm the change. Your current email stays active until you click the link.';

  @override
  String get securityEmailSentRubric => 'CHECK YOUR INBOX';

  @override
  String get securityEmailSentTitle => 'Verification email sent';

  @override
  String securityLoadError(String error) {
    return 'We couldn\'t load your security settings right now. Try again in a moment. ($error)';
  }

  @override
  String get securityNoEmail => 'No email on file.';

  @override
  String get securityPasswordLabel => 'Email + Password';

  @override
  String get securityPasswordLinked => 'Linked. Tap to change your password.';

  @override
  String get securityPasswordUnset =>
      'No password set yet. Tap to set one as a fallback.';

  @override
  String get securityPwSetMsg =>
      'Your account now has a password as a fallback sign-in. The OAuth links you already have still work too.';

  @override
  String get securityPwSetRubric => 'PASSWORD SET';

  @override
  String get securityPwSetTitle => 'Password set';

  @override
  String get securityPwUpdatedMsg => 'Your account now uses the new password.';

  @override
  String get securityPwUpdatedRubric => 'PASSWORD UPDATED';

  @override
  String get securityPwUpdatedTitle => 'Password updated';

  @override
  String get securitySectionAccount => 'ACCOUNT';

  @override
  String get securitySectionSignIn => 'SIGN-IN METHODS';

  @override
  String get securitySetPassword => 'Set Password';

  @override
  String get securityTitle => 'Security';

  @override
  String get securityWidgetsLink => 'Link';

  @override
  String get securityWidgetsLinked => 'LINKED';

  @override
  String get securityWidgetsUnlink => 'Unlink';

  @override
  String get sendAnniversaryCardErrSend => 'Couldn\'t send anniversary card';

  @override
  String get sendAnniversaryCardNoteHint => 'Add a note (optional)';

  @override
  String get sendAnniversaryCardPreviewError => 'Couldn\'t load preview';

  @override
  String get sendAnniversaryCardSendCta => 'Send card';

  @override
  String get sendAnniversaryCardSentBody =>
      'They\'ll get a push + a full-screen card view they can open any time. The card stays a keepsake for both of you.';

  @override
  String get sendAnniversaryCardSentRubric => 'CARD SENT';

  @override
  String get sendAnniversaryCardSentTitle => 'Card sent 💌';

  @override
  String sendAnniversaryCardTemplateA11y(String label) {
    return 'Template: $label';
  }

  @override
  String get sendAnniversaryCardTitle => 'Send a friendiversary card';

  @override
  String sessionsActiveAgo(String when) {
    return 'Active $when';
  }

  @override
  String sessionsAppVersion(String version, String build) {
    return 'App $version ($build)';
  }

  @override
  String sessionsDayAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days ago',
      one: '1 day ago',
    );
    return '$_temp0';
  }

  @override
  String get sessionsEmpty =>
      'Nothing to show. You\'re signed in here, that\'s it.';

  @override
  String sessionsHourAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours ago',
      one: '1 hour ago',
    );
    return '$_temp0';
  }

  @override
  String get sessionsIntro =>
      'Every device that\'s signed in to your account. Tap Sign out on any device that isn\'t yours.';

  @override
  String get sessionsJustNow => 'just now';

  @override
  String sessionsLoadError(String error) {
    return 'Couldn\'t load sessions: $error';
  }

  @override
  String sessionsMinAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count min ago',
      one: '1 min ago',
    );
    return '$_temp0';
  }

  @override
  String sessionsRevokedSheetMessage(String device) {
    return '$device is signed out. The device will sign itself out completely the next time it pings (within ~4 hours); until then it can no longer send DMs or post on your account.';
  }

  @override
  String get sessionsRevokedSheetRubric => 'DEVICE SIGNED OUT';

  @override
  String get sessionsRevokedSheetTitle => 'Device signed out';

  @override
  String get sessionsRevokeErrorOp => 'Couldn\'t sign out that device';

  @override
  String get sessionsSignOut => 'Sign out';

  @override
  String get sessionsSignOutOthersConfirm => 'Sign out other devices';

  @override
  String get sessionsSignOutOthersDecline => 'Keep them signed in';

  @override
  String get sessionsSignOutOthersDoneMessage =>
      'Each of them will need to sign in again with your new password. Your current device stays signed in.';

  @override
  String get sessionsSignOutOthersDoneRubric => 'OTHER DEVICES SIGNED OUT';

  @override
  String sessionsSignOutOthersDoneTitle(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count other devices signed out',
      one: '1 other device signed out',
      zero: 'No other devices were signed in',
    );
    return '$_temp0';
  }

  @override
  String get sessionsSignOutOthersErrorOp => 'Couldn\'t sign out other devices';

  @override
  String get sessionsSignOutOthersMessage =>
      'For safety, you can sign out every other device that\'s currently logged in with your old password. This one stays signed in.';

  @override
  String get sessionsSignOutOthersRubric => 'PASSWORD CHANGED';

  @override
  String get sessionsSignOutOthersTitle => 'Sign out other devices?';

  @override
  String get sessionsThisDevice => 'THIS DEVICE';

  @override
  String get sessionsTileLabel => 'Active sessions';

  @override
  String get sessionsTileSubtitle =>
      'See every device signed in to your account and sign any of them out.';

  @override
  String get sessionsTitle => 'Active sessions';

  @override
  String sessionsWeekAgo(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count weeks ago',
      one: '1 week ago',
    );
    return '$_temp0';
  }

  @override
  String get settingsAboutLuney => 'About Luney';

  @override
  String get settingsAccountViolations => 'Account Violations';

  @override
  String get settingsEditProfile => 'Edit Profile';

  @override
  String get settingsFeedback => 'Feedback';

  @override
  String get settingsFriendRequests => 'Friend Requests';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get settingsNotifications => 'Notifications';

  @override
  String get settingsOnAdminDuty => 'On Admin Duty';

  @override
  String get settingsOnAdminDutyDesc => 'Reveals admin actions on long-press.';

  @override
  String settingsPermsLoaded(int count) {
    return 'Loaded ($count)';
  }

  @override
  String get settingsPermsNone => 'No permissions loaded.';

  @override
  String get settingsPreferences => 'Preferences';

  @override
  String get settingsPrivacy => 'Privacy';

  @override
  String get settingsRecordingMode => 'Recording Mode';

  @override
  String get settingsRecordingModeError => 'Couldn\'t change recording mode';

  @override
  String get settingsRecordingModeOff =>
      'Temporarily lift the screenshot / recording block on this device for moderation evidence (60 min).';

  @override
  String get settingsRecordingModeOn =>
      'Screen protection is OFF on this device. Auto-ends after 60 min; turn off when done.';

  @override
  String get settingsSafety => 'Safety';

  @override
  String get settingsSectionAbout => 'ABOUT';

  @override
  String get settingsSectionAccount => 'ACCOUNT';

  @override
  String get settingsSectionAppearance => 'APPEARANCE';

  @override
  String get settingsSectionDuty => 'DUTY';

  @override
  String get settingsSectionLanguage => 'LANGUAGE';

  @override
  String get settingsSectionPermissions => 'PERMISSIONS';

  @override
  String get settingsSectionQueues => 'QUEUES';

  @override
  String get settingsSectionSupport => 'SUPPORT';

  @override
  String get settingsSecurity => 'Security';

  @override
  String get settingsSignOut => 'Sign Out';

  @override
  String get settingsStaffInbox => 'Staff Inbox';

  @override
  String get settingsStaffLounge => 'Staff Lounge';

  @override
  String get settingsSupportTickets => 'Support Tickets';

  @override
  String get settingsTabSettings => 'Settings';

  @override
  String get settingsTabStaff => 'Staff';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsVipMembership => 'VIP Membership';

  @override
  String get shareableContentPost => 'post';

  @override
  String get shareableContentProfile => 'profile';

  @override
  String get shareableContentReel => 'reel';

  @override
  String shareablePostBody(String excerpt, String handle, String url) {
    return '$excerpt\n\nvia @$handle on Luney\n$url';
  }

  @override
  String shareablePostSubject(String handle) {
    return 'Luney post by @$handle';
  }

  @override
  String shareableProfileBody(String displayName, String handle, String url) {
    return 'Find $displayName on Luney\n@$handle\n$url';
  }

  @override
  String shareableProfileSubject(String handle) {
    return '@$handle on Luney';
  }

  @override
  String shareableReelBody(String caption, String owner, String url) {
    return '${caption}Reel by $owner on Luney\n$url';
  }

  @override
  String get shareableReelOwnerFallback => 'a friend';

  @override
  String shareableReelSubject(String owner) {
    return 'Reel by $owner on Luney';
  }

  @override
  String get sharedContentEmbedAFriend => 'a friend';

  @override
  String get sharedContentEmbedKindPost => 'POST';

  @override
  String get sharedContentEmbedKindReel => 'REEL';

  @override
  String get sharedContentEmbedKindUser => 'PROFILE';

  @override
  String get sharedContentEmbedPhotoPost => 'Photo post';

  @override
  String get sharedContentEmbedPost => 'Post';

  @override
  String get sharedContentEmbedReel => 'Reel';

  @override
  String get sharedContentEmbedUnavailable =>
      'This post is no longer available.';

  @override
  String get shareSheetClose => 'Close share sheet';

  @override
  String get shareSheetCopyLink => 'Copy link';

  @override
  String get shareSheetDisabled =>
      'The creator turned off external sharing for this.';

  @override
  String get shareSheetErrExternal => 'Opening external share';

  @override
  String shareSheetErrPostGroup(String kind) {
    return 'Posting $kind to group';
  }

  @override
  String shareSheetErrSendChat(String kind) {
    return 'Sending $kind to chat';
  }

  @override
  String get shareSheetFriendFallback => 'friend';

  @override
  String get shareSheetGroupsError => 'Couldn\'t load your groups.';

  @override
  String get shareSheetLinkCopied => 'Link copied.';

  @override
  String get shareSheetNoChats =>
      'You don\'t have any chats yet. Start one from a friend\'s profile.';

  @override
  String get shareSheetNoGroups => 'You\'re not in any groups yet.';

  @override
  String get shareSheetNoHandlerBody =>
      'Your device doesn\'t have an app installed that can handle this link. Try a different share destination.';

  @override
  String get shareSheetNoHandlerRubric => 'CAN\'T OPEN THIS';

  @override
  String get shareSheetNoHandlerTitle => 'Couldn\'t open the share link';

  @override
  String get shareSheetPostedBody => 'Members can see it on the Posts tab now.';

  @override
  String get shareSheetPostedRubric => 'POSTED';

  @override
  String shareSheetPostedTitle(String group) {
    return 'Posted to $group';
  }

  @override
  String get shareSheetSectionChat => 'Send to chat';

  @override
  String get shareSheetSectionGroup => 'Send to group';

  @override
  String get shareSheetSectionMore => 'More';

  @override
  String get shareSheetSentBody =>
      'They\'ll see it in chat next time they open the thread.';

  @override
  String get shareSheetSentRubric => 'SENT';

  @override
  String shareSheetSentTitle(String handle) {
    return 'Sent to @$handle';
  }

  @override
  String get shareSheetShareVia => 'Share via…';

  @override
  String get shareSheetTitle => 'Share';

  @override
  String get shoutoutsCardErrorLabel => 'Shoutouts';

  @override
  String get shoutoutsCardHeader => 'SHOUTOUT WALL';

  @override
  String get shoutoutsCardHeart => 'Heart shoutout';

  @override
  String get shoutoutsCardReportTarget => 'this shoutout';

  @override
  String get shoutoutsCardUnheart => 'Unheart shoutout';

  @override
  String get signInCreateAccount => 'Create an account';

  @override
  String get signInEmailHint => 'you@domain.com';

  @override
  String get signInEmailLabel => 'Email';

  @override
  String get signInErrSignIn => 'Couldn\'t sign in';

  @override
  String get signInForgotPassword => 'Forgot password?';

  @override
  String get signInHeading => 'Sign in to continue';

  @override
  String get signInMagicLink => 'Email me a magic link instead';

  @override
  String get signInNewHere => 'New here? ';

  @override
  String get signInOr => 'or';

  @override
  String get signInPasswordHint => 'Password';

  @override
  String get signInPasswordLabel => 'Password';

  @override
  String get signInRememberMe => 'Remember me';

  @override
  String get signInRememberOffA11y => 'Remember me, off';

  @override
  String get signInRememberOnA11y => 'Remember me, on';

  @override
  String get signInSignIn => 'Sign in';

  @override
  String get signInSigningIn => 'Signing in…';

  @override
  String get signUpAlreadyHaveOne => 'Already have one? ';

  @override
  String get signUpBackToSignIn => 'Back to sign in';

  @override
  String get signUpConfirmPasswordHint => 'Type it again';

  @override
  String get signUpConfirmPasswordLabel => 'Confirm password';

  @override
  String get signUpCreateAccount => 'Create account';

  @override
  String get signUpCreatingAccount => 'Creating account…';

  @override
  String get signUpDobA11yNotSet =>
      'Date of birth, not set. Double tap to choose.';

  @override
  String signUpDobA11ySet(String date) {
    return 'Date of birth, $date. Double tap to change.';
  }

  @override
  String get signUpDobHelpText => 'Your date of birth';

  @override
  String get signUpDobLabel => 'DATE OF BIRTH';

  @override
  String get signUpDobNote => 'Luney is 18+ only.';

  @override
  String get signUpDobTapToChoose => 'Tap to choose';

  @override
  String get signUpEmailHint => 'you@domain.com';

  @override
  String get signUpEmailLabel => 'Email';

  @override
  String get signUpErrCreate => 'Couldn\'t create your account';

  @override
  String get signUpErrPasswordMismatch => 'Passwords don\'t match.';

  @override
  String get signUpErrPasswordTooShort =>
      'Password must be at least 8 characters.';

  @override
  String get signUpErrPolicies =>
      'Please review and agree to the Terms of Service and Privacy Policy.';

  @override
  String get signUpErrUnder18 => 'You must be 18 or older to use Luney.';

  @override
  String get signUpHeading => 'Create your account';

  @override
  String get signUpOr => 'or';

  @override
  String get signUpPasswordHint => 'Min 8 characters';

  @override
  String get signUpPasswordLabel => 'Password';

  @override
  String get signUpPolicyAgreePrefix => 'I agree to the ';

  @override
  String get signUpPolicyAnd => ' and ';

  @override
  String get signUpPolicyPrivacy => 'Privacy Policy';

  @override
  String get signUpPolicySuffix => '.';

  @override
  String get signUpPolicyTos => 'Terms of Service';

  @override
  String get signUpSignInLink => 'Sign in';

  @override
  String get signUpVerifyDidntGet => 'Didn\'t get it? Check spam, or:';

  @override
  String get signUpVerifySentTo => 'We sent a verification link to';

  @override
  String get signUpVerifyTitle => 'Check your inbox';

  @override
  String slashAccountNotFoundMessage(String handle) {
    return 'I couldn\'t find @$handle. Double-check the handle and try again.';
  }

  @override
  String get slashAccountNotFoundTitle => 'Account not found';

  @override
  String get slashBanModsOnly =>
      'Only admins and mods can ban members from this group.';

  @override
  String slashBannedMessage(String handle) {
    return 'They\'ve been removed from the group and can\'t rejoin. Use /unban @$handle to lift the ban.';
  }

  @override
  String slashBannedTitle(String handle) {
    return '@$handle was banned';
  }

  @override
  String slashBanOp(String handle) {
    return 'Couldn\'t ban @$handle';
  }

  @override
  String get slashCmdDescBan => 'Remove + block rejoin.';

  @override
  String get slashCmdDescHelp => 'Show available commands (only you see it).';

  @override
  String get slashCmdDescKick => 'Remove a member. They can rejoin.';

  @override
  String get slashCmdDescMute =>
      'Silence chat for a window (default 1h, max 30d).';

  @override
  String get slashCmdDescRules => 'Post the group rules to everyone.';

  @override
  String get slashCmdDescUnban => 'Lift a ban.';

  @override
  String get slashCmdDescUnmute => 'Clear an active mute.';

  @override
  String get slashDurationNeededMessage =>
      'Mute duration must be positive. Try 5m, 1h, or 1d after the handle.';

  @override
  String get slashDurationNeededTitle => 'Duration needed';

  @override
  String get slashHelpSubtitle => 'Type a slash at the start of a message.';

  @override
  String get slashHelpTitle => 'Chat commands';

  @override
  String get slashKickedMessage =>
      'They can still rejoin the group if it\'s public. Use /ban if you need to block them from coming back.';

  @override
  String slashKickedTitle(String handle) {
    return '@$handle was kicked';
  }

  @override
  String get slashKickModsOnly =>
      'Only admins and mods can kick members from this group.';

  @override
  String slashKickOp(String handle) {
    return 'Couldn\'t kick @$handle';
  }

  @override
  String slashMemberNotFoundMessage(String handle) {
    return 'I couldn\'t find @$handle in this group. Double-check the handle and try again.';
  }

  @override
  String get slashMemberNotFoundTitle => 'Member not found';

  @override
  String get slashMissingTargetMessage =>
      'Add a @handle after the command. For example, /kick @alice or /mute @alice 1h spamming.';

  @override
  String get slashMissingTargetTitle => 'Tell me who';

  @override
  String get slashModsOnlyTitle => 'Mods only';

  @override
  String slashMutedMessage(String duration, String handle) {
    return 'They\'re silenced in chat for $duration. They\'ll still see messages but can\'t post until the mute lifts. Use /unmute @$handle to lift it early.';
  }

  @override
  String slashMutedTitle(String handle) {
    return '@$handle muted';
  }

  @override
  String get slashMuteModsOnly => 'Only admins and mods can mute members.';

  @override
  String slashMuteOp(String handle) {
    return 'Couldn\'t mute @$handle';
  }

  @override
  String get slashReasonActionBan => 'Ban';

  @override
  String get slashReasonActionKick => 'Kick';

  @override
  String get slashReasonActionMute => 'Mute';

  @override
  String slashReasonConfirm(String action) {
    return 'Confirm $action';
  }

  @override
  String get slashReasonHint => 'Reason (required)';

  @override
  String get slashReasonRequiredError => 'Reason is required for this action.';

  @override
  String get slashReasonSubtitle =>
      'A reason is recorded with the action so other staff can see the context later.';

  @override
  String slashReasonTitle(String action, String handle) {
    return '$action @$handle';
  }

  @override
  String get slashRulesHeader => 'Group rules';

  @override
  String get slashRulesNoneAdminMessage =>
      'Open Group Settings -> Info and tap \"Add rule\" to write the first one. The rules show on the Details tab + drop into chat whenever someone runs /rules.';

  @override
  String get slashRulesNoneMemberMessage =>
      'Ping an admin to set the group rules. Once they\'re written, /rules drops them into chat for everyone to see.';

  @override
  String get slashRulesNoneTitle => 'No rules set yet';

  @override
  String get slashRulesPostOp => 'Couldn\'t post rules';

  @override
  String get slashUnbanModsOnly => 'Only admins and mods can unban members.';

  @override
  String get slashUnbannedMessage =>
      'They can rejoin the group again if they want to.';

  @override
  String slashUnbannedTitle(String handle) {
    return '@$handle is unbanned';
  }

  @override
  String slashUnbanOp(String handle) {
    return 'Couldn\'t unban @$handle';
  }

  @override
  String slashUnknownMessage(String verb) {
    return '\"/$verb\" isn\'t a command I know. Type /help to see the full list.';
  }

  @override
  String get slashUnknownTitle => 'Unknown command';

  @override
  String get slashUnmutedMessage =>
      'They can post in chat again. The mute audit row stays in the moderation log.';

  @override
  String slashUnmutedTitle(String handle) {
    return '@$handle is unmuted';
  }

  @override
  String get slashUnmuteModsOnly => 'Only admins and mods can unmute members.';

  @override
  String slashUnmuteOp(String handle) {
    return 'Couldn\'t unmute @$handle';
  }

  @override
  String get spoilerImageTapToReveal => 'Spoiler · tap to reveal';

  @override
  String get spoilerToggleOff => 'Mark as spoiler';

  @override
  String get spoilerToggleOn => 'Spoiler';

  @override
  String get staffActionExtras1Day => '1 day';

  @override
  String get staffActionExtras30Days => '30 days';

  @override
  String get staffActionExtras7Days => '7 days';

  @override
  String get staffActionExtras90Days => '90 days';

  @override
  String get staffActionExtrasAdd30Days => '+ 30 days';

  @override
  String get staffActionExtrasAdd7Days => '+ 7 days';

  @override
  String get staffActionExtrasAdd90Days => '+ 90 days';

  @override
  String get staffActionExtrasAddDay => '+ 1 day';

  @override
  String get staffActionExtrasDuration => 'Duration';

  @override
  String get staffActionExtrasErrApply => 'Couldn\'t apply staff action';

  @override
  String get staffActionExtrasExtendCta => 'Extend';

  @override
  String get staffActionExtrasExtendNoteHint => 'Why the extension was issued.';

  @override
  String get staffActionExtrasExtendTitle => 'Extend suspension';

  @override
  String get staffActionExtrasInternalNote => 'Internal note (staff only)';

  @override
  String get staffActionExtrasKindFrozen => 'Frozen';

  @override
  String get staffActionExtrasKindFrozenBlurb =>
      'Members cannot read OR write. They see the suspension banner only.';

  @override
  String get staffActionExtrasKindViewOnly => 'View-only';

  @override
  String get staffActionExtrasKindViewOnlyBlurb =>
      'Members can read but cannot post / comment / message / react.';

  @override
  String get staffActionExtrasLiftCta => 'Lift';

  @override
  String staffActionExtrasLiftGroupTitle(String group) {
    return 'Lift suspension on $group';
  }

  @override
  String get staffActionExtrasLiftInternalHint =>
      'Optional context for other moderators.';

  @override
  String get staffActionExtrasMemberFacingHint =>
      'Shown to every group member as the suspension reason.';

  @override
  String get staffActionExtrasMemberFacingNote => 'Member-facing note';

  @override
  String get staffActionExtrasMemberNoteRequired =>
      'Member-facing note is required.';

  @override
  String get staffActionExtrasNewDuration => 'New duration (added to current)';

  @override
  String get staffActionExtrasPermanent => 'Permanent';

  @override
  String get staffActionExtrasResolutionNote =>
      'Resolution note (sent to user)';

  @override
  String get staffActionExtrasResolveBody =>
      'Closes the conversation. The user will see your resolution note as a final staff message; this does NOT lift / restore the underlying action. Do that separately.';

  @override
  String get staffActionExtrasResolveCta => 'Resolve';

  @override
  String get staffActionExtrasResolveNoteHint =>
      'Optional final message to the user.';

  @override
  String get staffActionExtrasResolveTitle => 'Resolve ticket';

  @override
  String get staffActionExtrasSuspendGroupCta => 'Suspend group';

  @override
  String staffActionExtrasSuspendGroupTitle(String group) {
    return 'Suspend $group';
  }

  @override
  String get staffActionExtrasSuspendInternalHint =>
      'What you want other moderators to know.';

  @override
  String get staffActionExtrasSuspensionKind => 'Suspension kind';

  @override
  String get staffInboxEmptyBody =>
      'No open tickets need staff attention right now.';

  @override
  String staffInboxEmptyFilteredBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Switch the filter to \"All\" to see the $count tickets hidden by this filter.',
      one:
          'Switch the filter to \"All\" to see the 1 ticket hidden by this filter.',
    );
    return '$_temp0';
  }

  @override
  String staffInboxEmptyFilteredTitle(String filter) {
    return 'No $filter tickets in the queue.';
  }

  @override
  String get staffInboxEmptyTitle => 'Inbox is empty.';

  @override
  String staffInboxLoadError(String error) {
    return 'We couldn\'t load the inbox right now. Try again in a moment. ($error)';
  }

  @override
  String get staffInboxNoPermBody =>
      'You need at least one support permission (triage_reports, warn_users, suspend_users, moderate_content) to view the inbox.';

  @override
  String get staffInboxNoPermTitle => 'Staff only';

  @override
  String get staffInboxReportsEmptyBody =>
      'New reports filed against feed posts, comments, users, and DMs land here. Group-scoped reports show up too once they\'ve been sitting for 48 hours without a group admin acting on them.';

  @override
  String get staffInboxReportsEmptyTitle => 'No open reports.';

  @override
  String get staffInboxTabReports => 'Reports';

  @override
  String get staffInboxTabTickets => 'Tickets';

  @override
  String get staffInboxTitle => 'Staff Inbox';

  @override
  String get supportTicketKindAppeal => 'Appeal';

  @override
  String get supportTicketKindGroupAppeal => 'Group appeal';

  @override
  String get supportTicketKindSupport => 'Support';

  @override
  String get supportTicketStatusActionNeeded => 'Action needed';

  @override
  String get supportTicketStatusClosed => 'Closed';

  @override
  String get supportTicketStatusResolved => 'Resolved';

  @override
  String get supportTicketStatusWaiting => 'Waiting on Luney';

  @override
  String get suspensionErrorAccountSuspended =>
      'Your account is suspended. See Settings → Support → Account violations for details.';

  @override
  String get suspensionErrorGroupSuspended =>
      'This group is suspended by Luney moderation. Read-only mode.';

  @override
  String get suspensionKindAppWide => 'App-wide lockout';

  @override
  String get suspensionKindViewOnly => 'View-only';

  @override
  String get themeNameMidnight => 'Midnight';

  @override
  String get themeNameOcean => 'Ocean';

  @override
  String get themeNamePrism => 'Prism';

  @override
  String get themeNameSunrise => 'Sunrise';

  @override
  String get ticketDetailActionContentRemoved => 'Content removed';

  @override
  String get ticketDetailActionExtend => 'Extend';

  @override
  String get ticketDetailActionLift => 'Lift';

  @override
  String get ticketDetailActionResolve => 'Resolve';

  @override
  String get ticketDetailActionRestore => 'Restore';

  @override
  String get ticketDetailActionSuspension => 'Suspension';

  @override
  String get ticketDetailActionWarning => 'Warning';

  @override
  String get ticketDetailAttachImage => 'Attach image';

  @override
  String get ticketDetailCloseAction => 'Close ticket';

  @override
  String get ticketDetailCloseBody =>
      'You won\'t be able to reply after this. Luney moderation can still update it for the record.';

  @override
  String get ticketDetailClosed => 'This ticket is closed.';

  @override
  String get ticketDetailCloseTitle => 'Close this ticket?';

  @override
  String get ticketDetailCopyLink => 'Copy link';

  @override
  String get ticketDetailErrClose => 'Couldn\'t close ticket';

  @override
  String ticketDetailErrReact(String error) {
    return 'We couldn\'t add your reaction just now. Try again in a moment. ($error)';
  }

  @override
  String get ticketDetailErrReactOp => 'Couldn\'t add your reaction';

  @override
  String get ticketDetailErrSendReply => 'Couldn\'t send reply';

  @override
  String get ticketDetailFromModeration => 'From Luney moderation';

  @override
  String get ticketDetailGroupFallback => 'group';

  @override
  String get ticketDetailGroupSuspension => 'Group suspension';

  @override
  String ticketDetailGroupSuspPermanent(String kind) {
    return ' · $kind · permanent';
  }

  @override
  String ticketDetailGroupSuspUntil(String kind, String until) {
    return ' · $kind · until $until';
  }

  @override
  String get ticketDetailImageGone => 'Image no longer available.';

  @override
  String get ticketDetailImageUnavailable => 'Image unavailable';

  @override
  String get ticketDetailInternalNote => 'INTERNAL NOTE (staff only)';

  @override
  String get ticketDetailKindViewOnly => 'View-only';

  @override
  String ticketDetailLinkCopied(String label) {
    return '$label link copied to clipboard.';
  }

  @override
  String get ticketDetailLinkGeneric => 'Ticket link';

  @override
  String ticketDetailLinkNumbered(String number) {
    return 'Ticket #$number';
  }

  @override
  String ticketDetailLoadError(String error) {
    return 'We couldn\'t load this ticket right now. Try again in a moment. ($error)';
  }

  @override
  String get ticketDetailModerationTeam => 'Luney moderation team';

  @override
  String ticketDetailOriginallyPosted(String when) {
    return 'Originally posted $when';
  }

  @override
  String get ticketDetailRemovedContent => 'Removed content';

  @override
  String get ticketDetailReplyHint => 'Reply to Luney moderation…';

  @override
  String get ticketDetailSnapshotPurged =>
      'Content already purged. Snapshot unavailable.';

  @override
  String get ticketDetailSomeone => 'Someone';

  @override
  String ticketDetailSuspPermanent(String kind) {
    return '$kind · permanent';
  }

  @override
  String ticketDetailSuspUntil(String kind, String until) {
    return '$kind · until $until';
  }

  @override
  String get ticketDetailTitleFallback => 'Ticket';

  @override
  String get ticketDetailYou => 'You';

  @override
  String ticketEmbedCardLabel(String kind) {
    return 'Ticket · $kind';
  }

  @override
  String ticketEmbedCardLabelNumbered(int number, String kind) {
    return 'Ticket #$number · $kind';
  }

  @override
  String get ticketsEmptyBody =>
      'Open one with the + above, or appeals on moderation actions will show up here automatically.';

  @override
  String ticketsEmptyFilteredBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Switch the filter to \"All\" to see your $count other tickets.',
      one: 'Switch the filter to \"All\" to see your 1 other ticket.',
    );
    return '$_temp0';
  }

  @override
  String ticketsEmptyFilteredTitle(String filter) {
    return 'No $filter tickets.';
  }

  @override
  String get ticketsEmptyTitle => 'No tickets yet.';

  @override
  String ticketsLoadError(String error) {
    return 'We couldn\'t load your tickets right now. Try again in a moment. ($error)';
  }

  @override
  String get ticketsNewTooltip => 'New ticket';

  @override
  String get ticketStatusFilterAll => 'All';

  @override
  String get ticketStatusFilterClosed => 'Closed';

  @override
  String get ticketStatusFilterOpen => 'Open';

  @override
  String get ticketsTitle => 'Support Tickets';

  @override
  String ticketsUpdated(String time) {
    return 'updated $time';
  }

  @override
  String get trustedCircleAccept => 'Accept';

  @override
  String get trustedCircleAcceptSemantic => 'Accept circle invite';

  @override
  String get trustedCircleAddContact => 'Add a trusted contact';

  @override
  String get trustedCircleAllFriendsAdded =>
      'Every friend is already in your Circle (or has a pending request).';

  @override
  String get trustedCircleDecline => 'Decline';

  @override
  String get trustedCircleDeclineSemantic => 'Decline circle invite';

  @override
  String get trustedCircleEmptyContactFor =>
      'No one has you in their Circle yet. When friends add you and you accept, you\'ll see them here.';

  @override
  String get trustedCircleEmptyRequests =>
      'No pending requests. People who add you will show up here so you can accept or decline.';

  @override
  String get trustedCircleEmptyYours =>
      'No trusted contacts yet. Add up to 5 friends. They\'ll be alerted if you activate Panic Mode and don\'t check back in within 5 minutes.';

  @override
  String get trustedCircleFull =>
      'Circle full (5/5). Revoke someone above to add a new contact.';

  @override
  String get trustedCircleHowItWorks => 'How it works';

  @override
  String get trustedCircleHowItWorksBody =>
      'Pick up to 5 friends. They\'re alerted if you activate Panic Mode and don\'t exit within 5 minutes, so someone knows to check on you. They have to accept first; either side can leave anytime.';

  @override
  String get trustedCircleLeave => 'Leave';

  @override
  String get trustedCircleNoFriends =>
      'You need to add some Luney friends first. Trusted Circle is friends-only.';

  @override
  String get trustedCirclePending => 'Pending';

  @override
  String get trustedCirclePickFriend => 'Pick a friend';

  @override
  String get trustedCircleRemove => 'Remove';

  @override
  String get trustedCircleRequestSentBody =>
      'They\'ll get a push asking to join your Trusted Circle. Once they accept, they\'ll appear here and be on standby for Panic Mode + Date Check-in alerts.';

  @override
  String get trustedCircleRequestSentRubric => 'REQUEST SENT';

  @override
  String get trustedCircleRequestSentTitle => 'Trusted Circle invite sent';

  @override
  String get trustedCircleSectionContactFor => 'YOU\'RE A CONTACT FOR';

  @override
  String get trustedCircleSectionRequests => 'REQUESTS WAITING ON YOU';

  @override
  String get trustedCircleSectionYours => 'YOUR CIRCLE';

  @override
  String get trustedCircleSendRequestError => 'Couldn\'t send request';

  @override
  String trustedCircleSlotsLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count left',
      one: '1 left',
    );
    return '$_temp0';
  }

  @override
  String get trustedCircleTitle => 'Trusted Circle';

  @override
  String trustedCircleWantsYou(String handle) {
    return '@$handle wants you in their Circle';
  }

  @override
  String get typingIndicatorMany => 'Several people are typing…';

  @override
  String typingIndicatorOne(String name) {
    return '$name is typing…';
  }

  @override
  String typingIndicatorTwo(String name1, String name2) {
    return '$name1 and $name2 are typing…';
  }

  @override
  String get undoSnackDeletedGhost => 'deleted';

  @override
  String get undoSnackRestoredGhost => 'restored';

  @override
  String get undoSnackUndo => 'UNDO';

  @override
  String get updateRequiredBodyDefault =>
      'A new version of Luney is required to keep going. Update from the store and we\'ll pick up right where you left off.';

  @override
  String get updateRequiredCta => 'Update now';

  @override
  String get updateRequiredDebugRefreshDone => 'Version-floor check complete.';

  @override
  String get updateRequiredDebugRefreshLabel => 'Refresh version floor now';

  @override
  String get updateRequiredLaunchError =>
      'Couldn\'t open the store app. Tap again, or open the Luney listing manually.';

  @override
  String get updateRequiredTitle => 'Time to update Luney';

  @override
  String get vipBadge => 'VIP';

  @override
  String vipFinePrintAutoRenew(String store) {
    return 'Subscriptions auto-renew unless cancelled at least 24 hours before the end of the current period. Manage or cancel any time in your $store subscription settings.';
  }

  @override
  String vipFinePrintPayment(String store) {
    return 'Payment is charged to your $store account. Free trial (when offered) ends 24 hours before renewal unless cancelled.';
  }

  @override
  String get vipFreeTrial => 'Free trial';

  @override
  String get vipHeaderSubtitle =>
      'Unlock animated avatars, larger uploads, unlimited GIF favourites, custom display-name styles, and more.';

  @override
  String get vipHeaderSubtitleActive => 'Thank you for supporting Luney.';

  @override
  String get vipHeaderTitleActive => 'You\'re a VIP ✨';

  @override
  String get vipLoadError => 'Couldn\'t load your VIP status. Pull to retry.';

  @override
  String get vipManageAppStore => 'Manage in App Store';

  @override
  String get vipManageError => 'Couldn\'t open subscription management';

  @override
  String get vipManagePlayStore => 'Manage in Play Store';

  @override
  String get vipNeverExpires => 'Never expires.';

  @override
  String get vipNoActiveBody =>
      'We didn\'t find a current VIP subscription on this Apple ID / Google account. If you bought VIP on a different account, sign in to the store with that one and tap Restore again.';

  @override
  String get vipNoActiveRubric => 'NO ACTIVE VIP';

  @override
  String get vipNoActiveTitle => 'No active VIP found';

  @override
  String get vipNoPlans =>
      'No VIP plans are available right now. Try again later.';

  @override
  String get vipOfferingsErrorBody =>
      'Check your network connection and try again.';

  @override
  String get vipOfferingsErrorTitle => 'Couldn\'t load subscription options.';

  @override
  String get vipPerk1Body =>
      'GIFs animate in profile + chat instead of flattening to a still.';

  @override
  String get vipPerk1Title => 'Animated avatars + banners';

  @override
  String get vipPerk2Body =>
      'Up to 50 MB instead of 15 MB across photos, music, attachments.';

  @override
  String get vipPerk2Title => 'Larger uploads';

  @override
  String get vipPerk3Body => 'Free caps at 10 saved GIFs. VIP is uncapped.';

  @override
  String get vipPerk3Title => 'Unlimited GIF favourites';

  @override
  String get vipPerk4Body =>
      'Custom font, colour, and effects (gradient, neon, drop shadow).';

  @override
  String get vipPerk4Title => 'Display name styles';

  @override
  String get vipPerk5Body => 'Different identity per group, Discord-style.';

  @override
  String get vipPerk5Title => 'Per-group nicknames + avatars';

  @override
  String get vipPerk6Body =>
      'A separate header banner for each group you are in.';

  @override
  String get vipPerk6Title => 'Per-group banners';

  @override
  String get vipPerk7Body =>
      'Use any of your groups\' emojis in any other group you\'re in.';

  @override
  String get vipPerk7Title => 'Cross-group custom emojis';

  @override
  String get vipPerksHeader => 'WHAT VIP UNLOCKS';

  @override
  String get vipPerMonth => '/ month';

  @override
  String get vipPerYear => '/ year';

  @override
  String get vipPlanAnnual => 'Annual';

  @override
  String get vipPlanMonthly => 'Monthly';

  @override
  String get vipPlatformOnly =>
      'VIP can only be purchased from the iOS or Android app.';

  @override
  String vipPriceLine(String price, String period) {
    return '$price $period';
  }

  @override
  String get vipPurchaseError => 'Couldn\'t complete the purchase';

  @override
  String get vipPurchaseUnavailableBody =>
      'The store didn\'t respond in time. Try again in a moment; if it keeps happening, restart the app and head back to Settings -> VIP.';

  @override
  String get vipPurchaseUnavailableRubric => 'VIP UNAVAILABLE';

  @override
  String get vipPurchaseUnavailableTitle => 'Purchase is unavailable right now';

  @override
  String get vipRestore => 'Restore Purchases';

  @override
  String get vipRestoredBody =>
      'Your perks reappear as soon as the store confirms with us. Welcome back.';

  @override
  String get vipRestoredRubric => 'VIP RESTORED';

  @override
  String get vipRestoredTitle => 'VIP restored 👑';

  @override
  String get vipRestoreError => 'Couldn\'t restore purchases';

  @override
  String get vipRestoreUnavailableBody =>
      'The store didn\'t respond in time. Try again in a moment; if it keeps happening, restart the app and try from Settings -> VIP again.';

  @override
  String get vipRestoreUnavailableRubric => 'RESTORE UNAVAILABLE';

  @override
  String get vipRestoreUnavailableTitle => 'Restore is unavailable right now';

  @override
  String vipStatusCancelledEnds(String date) {
    return 'Cancelled. Ends on $date.';
  }

  @override
  String get vipStatusGift => 'VIP gift';

  @override
  String get vipStatusGrantedByLuney => 'Granted by Luney';

  @override
  String vipStatusRenews(String date) {
    return 'Renews on $date.';
  }

  @override
  String vipStatusSubscribedVia(String store) {
    return 'Subscribed via $store';
  }

  @override
  String vipStatusUntil(String date) {
    return 'Until $date.';
  }

  @override
  String get vipTempUnavailableTitle =>
      'VIP purchase is temporarily unavailable.';

  @override
  String get vipTitle => 'Luney VIP';

  @override
  String get vipTryLater => 'Please try again later.';

  @override
  String get vipWelcomeBody =>
      'Your perks unlock as soon as the store confirms with us (usually a few seconds). Animated avatars, larger uploads, unlimited GIF favourites, display-name styles, per-group identity, and cross-group custom emoji are all yours.';

  @override
  String get vipWelcomeRubric => 'WELCOME TO VIP';

  @override
  String get vipWelcomeTitle => 'Welcome to VIP 👑';

  @override
  String get visibilityFoFDesc => 'Friends, plus theirs';

  @override
  String get visibilityFoFLabel => 'Friends of friends';

  @override
  String get visibilityFriendsDesc => 'Only your friends';

  @override
  String get visibilityFriendsLabel => 'Friends';

  @override
  String get visibilityInnerCircleDesc => 'A close subset of your friends';

  @override
  String get visibilityInnerCircleLabel => 'Inner circle';

  @override
  String get visibilityPickerTitle => 'Who can see this?';

  @override
  String get visibilityPrivateDesc => 'Just you can see this';

  @override
  String get visibilityPrivateLabel => 'Only me';

  @override
  String get visibilityPublicDesc => 'Anyone on Luney';

  @override
  String get visibilityPublicLabel => 'Public';

  @override
  String get weeklyPromptCardErrorLabel => 'Weekly Prompt';

  @override
  String get weeklyPromptCardErrShare => 'Couldn\'t share your response';

  @override
  String weeklyPromptCardHeader(String day) {
    return 'WEEKLY PROMPT · $day';
  }

  @override
  String get weeklyPromptCardHideResponses => 'Hide responses';

  @override
  String get weeklyPromptCardHint => 'your thing…';

  @override
  String get weeklyPromptCardLoadError => 'Couldn\'t load responses.';

  @override
  String get weeklyPromptCardNoReplies => 'No replies yet. Be the first.';

  @override
  String weeklyPromptCardReplyCount(int count, String comma) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$comma replies',
      one: '1 reply',
    );
    return '$_temp0';
  }

  @override
  String get weeklyPromptCardReportTarget => 'this response';

  @override
  String get weeklyPromptCardSeeResponses => 'See responses';

  @override
  String get weeklyPromptCardThanks =>
      'Thanks for sharing. Your reply is in the gallery.';

  @override
  String get weeklyPromptThreadAddEmoji => 'Add emoji';

  @override
  String get weeklyPromptThreadAddReactionA11y => 'Add a reaction';

  @override
  String get weeklyPromptThreadCancelReplyA11y => 'Cancel reply';

  @override
  String get weeklyPromptThreadCap => 'Showing the first 400 replies.';

  @override
  String get weeklyPromptThreadComposeChild => 'Write a reply…';

  @override
  String get weeklyPromptThreadComposeRoot => 'Reply to this response…';

  @override
  String get weeklyPromptThreadDeleteBody =>
      'This removes your reply from the thread. You can\'t undo this.';

  @override
  String get weeklyPromptThreadDeleteErrorOp => 'Couldn\'t delete reply';

  @override
  String get weeklyPromptThreadDeleteMyReplyA11y => 'Delete my reply';

  @override
  String get weeklyPromptThreadDeleteTitle => 'Delete reply?';

  @override
  String get weeklyPromptThreadEditErrorOp => 'Couldn\'t save your edit';

  @override
  String get weeklyPromptThreadGoBack => 'Go back';

  @override
  String get weeklyPromptThreadNoReplies => 'No replies yet, be the first.';

  @override
  String get weeklyPromptThreadReactionErrorOp =>
      'Couldn\'t update your reaction';

  @override
  String get weeklyPromptThreadReplies => 'REPLIES';

  @override
  String weeklyPromptThreadRepliesError(String error) {
    return 'We couldn\'t load the replies right now. Try again in a moment. ($error)';
  }

  @override
  String get weeklyPromptThreadReply => 'Reply';

  @override
  String get weeklyPromptThreadReplyErrorOp => 'Couldn\'t post your reply';

  @override
  String weeklyPromptThreadReplyingTo(String name) {
    return 'Replying to $name';
  }

  @override
  String get weeklyPromptThreadReportLabel => 'this reply';

  @override
  String get weeklyPromptThreadReportResponseLabel => 'this response';

  @override
  String get weeklyPromptThreadSend => 'Send';

  @override
  String get weeklyPromptThreadSendA11y => 'Send reply';

  @override
  String weeklyPromptThreadShowMore(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Show $count more replies',
      one: 'Show 1 more reply',
    );
    return '$_temp0';
  }

  @override
  String get weeklyPromptThreadUnavailableBody =>
      'It may have been deleted, or its author is no longer visible.';

  @override
  String get weeklyPromptThreadUnavailableTitle =>
      'This response isn\'t available anymore.';

  @override
  String get welcomeSheetDismiss => 'Got it, let\'s go';

  @override
  String get welcomeSheetSubtitle =>
      'Here\'s a quick tour of what\'s on offer.';

  @override
  String get welcomeSheetTip1Body =>
      'Posts from your friends, shared interests, and community surfaces like the Weekly Prompt land here.';

  @override
  String get welcomeSheetTip1Title => 'Home is your feed';

  @override
  String get welcomeSheetTip2Body =>
      'Join or create groups around interests, communities, or close friends. Each one has its own chat, posts, and reels.';

  @override
  String get welcomeSheetTip2Title => 'Groups for shared spaces';

  @override
  String get welcomeSheetTip3Body =>
      'Send a friend request from someone\'s profile, then start a 1:1 conversation. Photos and drafts stay encrypted on your device.';

  @override
  String get welcomeSheetTip3Title => 'DMs for private chats';

  @override
  String get welcomeSheetTip4Body =>
      'Share a short video reel, a longer post, or join the daily Weekly Prompt to hear what the community thinks.';

  @override
  String get welcomeSheetTip4Title => 'Reels, posts, and prompts';

  @override
  String get welcomeSheetTip5Body =>
      'Settings → Privacy hides your activity, locks your account in Panic Mode, and lets you mute or block anyone, any time.';

  @override
  String get welcomeSheetTip5Title => 'Safety + privacy controls';

  @override
  String get welcomeSheetTitle => 'Welcome to Luney';

  @override
  String get whatsNewSheetDismiss => 'Got it';

  @override
  String get whatsNewSheetSubtitle =>
      'A quick tour of what we\'ve added in this update.';

  @override
  String get whatsNewSheetTitle => 'What\'s New';
}
