// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Str {
  Str();

  static Str? _current;

  static Str get current {
    assert(_current != null,
        'No instance of Str was loaded. Try to initialize the Str delegate before accessing Str.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Str> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Str();
      Str._current = instance;

      return instance;
    });
  }

  static Str of(BuildContext context) {
    final instance = Str.maybeOf(context);
    assert(instance != null,
        'No instance of Str present in the widget tree. Did you add Str.delegate in localizationsDelegates?');
    return instance!;
  }

  static Str? maybeOf(BuildContext context) {
    return Localizations.of<Str>(context, Str);
  }

  /// `Bienvenue`
  String get loginWelcomeTitle {
    return Intl.message(
      'Bienvenue',
      name: 'loginWelcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Bienvenue`
  String get onboardingNameTitle {
    return Intl.message(
      'Bienvenue',
      name: 'onboardingNameTitle',
      desc: '',
      args: [],
    );
  }

  /// `Votre prénom`
  String get onboardingNameInputTitle {
    return Intl.message(
      'Votre prénom',
      name: 'onboardingNameInputTitle',
      desc: '',
      args: [],
    );
  }

  /// `Votre prénom`
  String get onboardingNameInputPlaceholder {
    return Intl.message(
      'Votre prénom',
      name: 'onboardingNameInputPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `C'est le nom qui sera affiché sur votre profil et que les autres Twelvies verront.`
  String get onboardingNameDescription {
    return Intl.message(
      'C\'est le nom qui sera affiché sur votre profil et que les autres Twelvies verront.',
      name: 'onboardingNameDescription',
      desc: '',
      args: [],
    );
  }

  /// `Continuer`
  String get commonContinue {
    return Intl.message(
      'Continuer',
      name: 'commonContinue',
      desc: '',
      args: [],
    );
  }

  /// `Echec de la localisation`
  String get placesTextFieldErrorMessage {
    return Intl.message(
      'Echec de la localisation',
      name: 'placesTextFieldErrorMessage',
      desc:
          'J\'ai un doute sur le texte. Je ne sais pas à quel écran ça correspond',
      args: [],
    );
  }

  /// `Pas de résultat trouvé`
  String get placesTextFieldNoResultsMessage {
    return Intl.message(
      'Pas de résultat trouvé',
      name: 'placesTextFieldNoResultsMessage',
      desc:
          'J\'ai un doute sur la traduction. Je ne suis pas sûre que le texte corresponde à l\'écran',
      args: [],
    );
  }

  /// `Explorer`
  String get homeTabBarExplorer {
    return Intl.message(
      'Explorer',
      name: 'homeTabBarExplorer',
      desc: '',
      args: [],
    );
  }

  /// `Twelvscope`
  String get homeTabBarHoroscope {
    return Intl.message(
      'Twelvscope',
      name: 'homeTabBarHoroscope',
      desc: '',
      args: [],
    );
  }

  /// `Matches`
  String get homeTabBarMatches {
    return Intl.message(
      'Matches',
      name: 'homeTabBarMatches',
      desc: '',
      args: [],
    );
  }

  /// `Profil`
  String get homeTabBarProfil {
    return Intl.message(
      'Profil',
      name: 'homeTabBarProfil',
      desc: '',
      args: [],
    );
  }

  /// `Patience, votre bonne étoile continue à chercher un Twelvy`
  String get homeEmptyListTitleMessage {
    return Intl.message(
      'Patience, votre bonne étoile continue à chercher un Twelvy',
      name: 'homeEmptyListTitleMessage',
      desc: '',
      args: [],
    );
  }

  /// `Modifier mes filtres`
  String get homeEmptyListModifyFiltersButton {
    return Intl.message(
      'Modifier mes filtres',
      name: 'homeEmptyListModifyFiltersButton',
      desc: '',
      args: [],
    );
  }

  /// `Votre profil astro`
  String get onboardingBirthDataTitle {
    return Intl.message(
      'Votre profil astro',
      name: 'onboardingBirthDataTitle',
      desc: '',
      args: [],
    );
  }

  /// `Votre date de naissance`
  String get onboardingBirthDataDateInputTitle {
    return Intl.message(
      'Votre date de naissance',
      name: 'onboardingBirthDataDateInputTitle',
      desc: '',
      args: [],
    );
  }

  /// `Votre lieu de naissance`
  String get onboardingBirthDataPlaceInputTitle {
    return Intl.message(
      'Votre lieu de naissance',
      name: 'onboardingBirthDataPlaceInputTitle',
      desc: '',
      args: [],
    );
  }

  /// `Rechercher`
  String get onboardingBirthDataPlaceInputPlaceholder {
    return Intl.message(
      'Rechercher',
      name: 'onboardingBirthDataPlaceInputPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Votre heure de naissance`
  String get onboardingBirthDataTimeInputTitle {
    return Intl.message(
      'Votre heure de naissance',
      name: 'onboardingBirthDataTimeInputTitle',
      desc: '',
      args: [],
    );
  }

  /// `Ces données nous permettent de calculer votre ascendant et de relever précisément la position des planètes le jour de votre naissance.\nVos compatibilités astrologiques n’auront pas la même précision sans ces informations.\nEn l’absence de votre heure de naissance, nous prendrons midi comme heure par défaut.`
  String get onboardingBirthDataDescription {
    return Intl.message(
      'Ces données nous permettent de calculer votre ascendant et de relever précisément la position des planètes le jour de votre naissance.\nVos compatibilités astrologiques n’auront pas la même précision sans ces informations.\nEn l’absence de votre heure de naissance, nous prendrons midi comme heure par défaut.',
      name: 'onboardingBirthDataDescription',
      desc: '',
      args: [],
    );
  }

  /// `Votre numéro de téléphone`
  String get loginWelcomeSubtitle {
    return Intl.message(
      'Votre numéro de téléphone',
      name: 'loginWelcomeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get loginWelcomeTypePhoneNumDescription {
    return Intl.message(
      '',
      name: 'loginWelcomeTypePhoneNumDescription',
      desc: '',
      args: [],
    );
  }

  /// `Ou connectez-vous avec `
  String get loginWelcomeSocialAuthSectionTitle {
    return Intl.message(
      'Ou connectez-vous avec ',
      name: 'loginWelcomeSocialAuthSectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Continuez avec Apple`
  String get loginWelcomeLoginByAppleBtnTitle {
    return Intl.message(
      'Continuez avec Apple',
      name: 'loginWelcomeLoginByAppleBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Continuez avec Facebook`
  String get loginWelcomeLoginByFacebookBtnTitle {
    return Intl.message(
      'Continuez avec Facebook',
      name: 'loginWelcomeLoginByFacebookBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Votre numéro de téléphone`
  String get loginWelcomePhoneNumberHint {
    return Intl.message(
      'Votre numéro de téléphone',
      name: 'loginWelcomePhoneNumberHint',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get commonOk {
    return Intl.message(
      'OK',
      name: 'commonOk',
      desc: '',
      args: [],
    );
  }

  /// `Bienvenue`
  String get verifySmsWelcomeTitle {
    return Intl.message(
      'Bienvenue',
      name: 'verifySmsWelcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Code SMS`
  String get verifySmsWelcomeSubtitle {
    return Intl.message(
      'Code SMS',
      name: 'verifySmsWelcomeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Votre code SMS`
  String get verifySmsCodeFieldHint {
    return Intl.message(
      'Votre code SMS',
      name: 'verifySmsCodeFieldHint',
      desc: '',
      args: [],
    );
  }

  /// `Veuillez saisir le code que vous avez reçu par SMS`
  String get verifySmsCodeFieldDescription {
    return Intl.message(
      'Veuillez saisir le code que vous avez reçu par SMS',
      name: 'verifySmsCodeFieldDescription',
      desc: '',
      args: [],
    );
  }

  /// `Renvoyer le code`
  String get verifySmsResendBtnTitle {
    return Intl.message(
      'Renvoyer le code',
      name: 'verifySmsResendBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Le numéro de téléphone fourni n'est pas valide`
  String get errorLoginInvalidPhoneNumMessage {
    return Intl.message(
      'Le numéro de téléphone fourni n\'est pas valide',
      name: 'errorLoginInvalidPhoneNumMessage',
      desc: '',
      args: [],
    );
  }

  /// `Le code SMS n'est pas bon`
  String get errorLoginWrongSmsCodeMessage {
    return Intl.message(
      'Le code SMS n\'est pas bon',
      name: 'errorLoginWrongSmsCodeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Quelque chose ne va pas. Merci de nous contacter pour résoudre ce problème.`
  String get errorLoginUserIssuesMessage {
    return Intl.message(
      'Quelque chose ne va pas. Merci de nous contacter pour résoudre ce problème.',
      name: 'errorLoginUserIssuesMessage',
      desc: '',
      args: [],
    );
  }

  /// `Votre compte a été temporairement bloqué. Veuillez essayer plus tard.`
  String get errorLoginTemporarilyBlockedMessage {
    return Intl.message(
      'Votre compte a été temporairement bloqué. Veuillez essayer plus tard.',
      name: 'errorLoginTemporarilyBlockedMessage',
      desc: '',
      args: [],
    );
  }

  /// `Quelque chose ne va pas. Veuillez essayer plus tard.`
  String get errorLoginGeneralMessage {
    return Intl.message(
      'Quelque chose ne va pas. Veuillez essayer plus tard.',
      name: 'errorLoginGeneralMessage',
      desc: '',
      args: [],
    );
  }

  /// `Le code SMS a expiré. Veuillez renvoyer une demande pour obtenir un nouveau code.`
  String get errorLoginSmsCodeTimedOutMessage {
    return Intl.message(
      'Le code SMS a expiré. Veuillez renvoyer une demande pour obtenir un nouveau code.',
      name: 'errorLoginSmsCodeTimedOutMessage',
      desc: '',
      args: [],
    );
  }

  /// `Votre profil astro`
  String get onboardingZodiacTitle {
    return Intl.message(
      'Votre profil astro',
      name: 'onboardingZodiacTitle',
      desc: '',
      args: [],
    );
  }

  /// `Votre signe`
  String get onboardingZodiacSignTitle {
    return Intl.message(
      'Votre signe',
      name: 'onboardingZodiacSignTitle',
      desc: '',
      args: [],
    );
  }

  /// `Votre ascendant`
  String get onboardingZodiacAscendantSignTitle {
    return Intl.message(
      'Votre ascendant',
      name: 'onboardingZodiacAscendantSignTitle',
      desc: '',
      args: [],
    );
  }

  /// `Signaler le profil`
  String get profileCardReportProfileBtnTitle {
    return Intl.message(
      'Signaler le profil',
      name: 'profileCardReportProfileBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Like`
  String get profileCardLikeBtnTitle {
    return Intl.message(
      'Like',
      name: 'profileCardLikeBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Star Like`
  String get profileCardSuperlikeBtnTitle {
    return Intl.message(
      'Star Like',
      name: 'profileCardSuperlikeBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get profileCardProfilNextBtnTitle {
    return Intl.message(
      'Next',
      name: 'profileCardProfilNextBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Vos compatibilités`
  String get profileCardCompatibilitiesHeaderTitle {
    return Intl.message(
      'Vos compatibilités',
      name: 'profileCardCompatibilitiesHeaderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Affinités`
  String get profileCardCompatibilitiesAffinitiesSubtitle {
    return Intl.message(
      'Affinités',
      name: 'profileCardCompatibilitiesAffinitiesSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Sexualité`
  String get profileCardCompatibilitiesSexualitySubtitle {
    return Intl.message(
      'Sexualité',
      name: 'profileCardCompatibilitiesSexualitySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Engagement`
  String get profileCardCompatibilitiesStabilitySubtitle {
    return Intl.message(
      'Engagement',
      name: 'profileCardCompatibilitiesStabilitySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Complicité`
  String get profileCardCompatibilitiesComplicitySubtitle {
    return Intl.message(
      'Complicité',
      name: 'profileCardCompatibilitiesComplicitySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Sentiments`
  String get profileCardCompatibilitiesFeelingsSubtitle {
    return Intl.message(
      'Sentiments',
      name: 'profileCardCompatibilitiesFeelingsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Photos`
  String get profileCardPhotosHeaderTitle {
    return Intl.message(
      'Photos',
      name: 'profileCardPhotosHeaderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Une erreur est survenue, veuillez essayer plus tard!`
  String get errorGeneric {
    return Intl.message(
      'Une erreur est survenue, veuillez essayer plus tard!',
      name: 'errorGeneric',
      desc: '',
      args: [],
    );
  }

  /// `Une erreur est survenue, veuillez essayer plus tard!`
  String get errorHttpGeneric {
    return Intl.message(
      'Une erreur est survenue, veuillez essayer plus tard!',
      name: 'errorHttpGeneric',
      desc: '',
      args: [],
    );
  }

  /// `Donnée invalide`
  String get errorHttpValidation {
    return Intl.message(
      'Donnée invalide',
      name: 'errorHttpValidation',
      desc: '',
      args: [],
    );
  }

  /// `Vous semblez ne pas être connecté`
  String get errorNoInternetConnection {
    return Intl.message(
      'Vous semblez ne pas être connecté',
      name: 'errorNoInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Votre profil perso`
  String get genderEditViewTitle {
    return Intl.message(
      'Votre profil perso',
      name: 'genderEditViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Je suis`
  String get genderMySectionHeaderTitle {
    return Intl.message(
      'Je suis',
      name: 'genderMySectionHeaderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Une femme`
  String get genderMyWomanSelectionTitle {
    return Intl.message(
      'Une femme',
      name: 'genderMyWomanSelectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Un homme`
  String get genderMyManSelectionTitle {
    return Intl.message(
      'Un homme',
      name: 'genderMyManSelectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Autre`
  String get genderMyOtherSelectionTitle {
    return Intl.message(
      'Autre',
      name: 'genderMyOtherSelectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Les femmes`
  String get genderInterestedInWomanSelectionTitle {
    return Intl.message(
      'Les femmes',
      name: 'genderInterestedInWomanSelectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Les hommes`
  String get genderInterestedInManSelectionTitle {
    return Intl.message(
      'Les hommes',
      name: 'genderInterestedInManSelectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Les autres`
  String get genderInterestedInOtherSelectionTitle {
    return Intl.message(
      'Les autres',
      name: 'genderInterestedInOtherSelectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Intéressé(e) par`
  String get genderInterestedInSectionHeaderTitle {
    return Intl.message(
      'Intéressé(e) par',
      name: 'genderInterestedInSectionHeaderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Vos photos`
  String get photosHeaderSubtitle {
    return Intl.message(
      'Vos photos',
      name: 'photosHeaderSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Ajoutez au moins une photo pour pouvoir continuer et avoir une chance de décrocher la Lune.`
  String get photosInfoDescriptionText {
    return Intl.message(
      'Ajoutez au moins une photo pour pouvoir continuer et avoir une chance de décrocher la Lune.',
      name: 'photosInfoDescriptionText',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get photosHelpDescriptionLine1Text {
    return Intl.message(
      '',
      name: 'photosHelpDescriptionLine1Text',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get onboardingNotificationsTitle {
    return Intl.message(
      'Notifications',
      name: 'onboardingNotificationsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Autorisez les notifications pour profiter au mieux de votre expérience sur Twelv. Vous pourrez affiner vos choix dans les réglages de votre profil.`
  String get onboardingNotificationsDescription {
    return Intl.message(
      'Autorisez les notifications pour profiter au mieux de votre expérience sur Twelv. Vous pourrez affiner vos choix dans les réglages de votre profil.',
      name: 'onboardingNotificationsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Activer les notifications`
  String get onboardingNotificationsActivateBtnTitle {
    return Intl.message(
      'Activer les notifications',
      name: 'onboardingNotificationsActivateBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Plus tard`
  String get commonSkip {
    return Intl.message(
      'Plus tard',
      name: 'commonSkip',
      desc: '',
      args: [],
    );
  }

  /// `Choisissez une source`
  String get imagePickerSelectSourceDialogTitle {
    return Intl.message(
      'Choisissez une source',
      name: 'imagePickerSelectSourceDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Choisissez une source pour télécharger une image`
  String get imagePickerSelectSourceDialogMessage {
    return Intl.message(
      'Choisissez une source pour télécharger une image',
      name: 'imagePickerSelectSourceDialogMessage',
      desc: '',
      args: [],
    );
  }

  /// `Galerie`
  String get imagePickerSelectSourceGalleryName {
    return Intl.message(
      'Galerie',
      name: 'imagePickerSelectSourceGalleryName',
      desc: '',
      args: [],
    );
  }

  /// `Appareil photo`
  String get imagePickerSelectSourceCameraName {
    return Intl.message(
      'Appareil photo',
      name: 'imagePickerSelectSourceCameraName',
      desc: '',
      args: [],
    );
  }

  /// `Votre profil perso`
  String get userDescriptionEditViewTitle {
    return Intl.message(
      'Votre profil perso',
      name: 'userDescriptionEditViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Décrivez-vous (optionnel)`
  String get userDescriptionEditViewSubtitle {
    return Intl.message(
      'Décrivez-vous (optionnel)',
      name: 'userDescriptionEditViewSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Quels sont vos centres d’intérêt et vos passions? C’est le moment de briller.`
  String get userDescriptionEditTextFieldHint {
    return Intl.message(
      'Quels sont vos centres d’intérêt et vos passions? C’est le moment de briller.',
      name: 'userDescriptionEditTextFieldHint',
      desc: '',
      args: [],
    );
  }

  /// `Cette description sera visible sur votre profil`
  String get userDescriptionEditViewBottomMessage {
    return Intl.message(
      'Cette description sera visible sur votre profil',
      name: 'userDescriptionEditViewBottomMessage',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get photosHelpURL {
    return Intl.message(
      '',
      name: 'photosHelpURL',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get photosHelpDescriptionLine2Text {
    return Intl.message(
      '',
      name: 'photosHelpDescriptionLine2Text',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get photosHelpDescriptionLine2URLText {
    return Intl.message(
      '',
      name: 'photosHelpDescriptionLine2URLText',
      desc: '',
      args: [],
    );
  }

  /// `Votre profil perso`
  String get photosEditViewTitle {
    return Intl.message(
      'Votre profil perso',
      name: 'photosEditViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Echec d'ouverture de l'URL`
  String get errorCantOpenUrl {
    return Intl.message(
      'Echec d\'ouverture de l\'URL',
      name: 'errorCantOpenUrl',
      desc: '',
      args: [],
    );
  }

  /// `Localisation`
  String get locationPermissionViewTitle {
    return Intl.message(
      'Localisation',
      name: 'locationPermissionViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Votre emplacement servira uniquement à vous proposer des profils qui se trouvent à proximité.`
  String get locationPermissionViewMessage {
    return Intl.message(
      'Votre emplacement servira uniquement à vous proposer des profils qui se trouvent à proximité.',
      name: 'locationPermissionViewMessage',
      desc: '',
      args: [],
    );
  }

  /// `Activer la localisation`
  String get locationPermissionActivateButton {
    return Intl.message(
      'Activer la localisation',
      name: 'locationPermissionActivateButton',
      desc: '',
      args: [],
    );
  }

  /// `Sans le partage votre localisation, vous ne pourrez pas profiter pleinement de l'expérience Twelv`
  String get locationPermissionDeniedErrorMessage {
    return Intl.message(
      'Sans le partage votre localisation, vous ne pourrez pas profiter pleinement de l\'expérience Twelv',
      name: 'locationPermissionDeniedErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Compatibilités`
  String get compatibilitiesPopupTitle {
    return Intl.message(
      'Compatibilités',
      name: 'compatibilitiesPopupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Modifiez votre profil`
  String get myProfilEditButton {
    return Intl.message(
      'Modifiez votre profil',
      name: 'myProfilEditButton',
      desc: '',
      args: [],
    );
  }

  /// `Abonnement`
  String get myProfilSubscriptionAbonamentTitle {
    return Intl.message(
      'Abonnement',
      name: 'myProfilSubscriptionAbonamentTitle',
      desc: '',
      args: [],
    );
  }

  /// `Vous êtes TwelVIP`
  String get myProfilSubscriptionAbonamentSubtitle {
    return Intl.message(
      'Vous êtes TwelVIP',
      name: 'myProfilSubscriptionAbonamentSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `[TBD] Free Plan`
  String get myProfilSubscriptionFreeTitle {
    return Intl.message(
      '[TBD] Free Plan',
      name: 'myProfilSubscriptionFreeTitle',
      desc: 'Que faut-il mettre ici? C\'est quel écran?',
      args: [],
    );
  }

  /// `Devenir TwelVIP`
  String get myProfilSubscriptionFreeSubtitle {
    return Intl.message(
      'Devenir TwelVIP',
      name: 'myProfilSubscriptionFreeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Étoiles`
  String get myProfilCreditsNumber {
    return Intl.message(
      'Étoiles',
      name: 'myProfilCreditsNumber',
      desc: '',
      args: [],
    );
  }

  /// `Acheter des Étoiles`
  String get myProfilCreditsSubtitle {
    return Intl.message(
      'Acheter des Étoiles',
      name: 'myProfilCreditsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Wow!`
  String get matchTitleText {
    return Intl.message(
      'Wow!',
      name: 'matchTitleText',
      desc: '',
      args: [],
    );
  }

  /// `Vos planètes matchent avec`
  String get matchSubtitleText {
    return Intl.message(
      'Vos planètes matchent avec',
      name: 'matchSubtitleText',
      desc: '',
      args: [],
    );
  }

  /// `Envoyer un message`
  String get matchSendMessageButtonTitle {
    return Intl.message(
      'Envoyer un message',
      name: 'matchSendMessageButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Retour`
  String get matchViewReturnButtonTitle {
    return Intl.message(
      'Retour',
      name: 'matchViewReturnButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Star Like`
  String get profileCardSuperlikeBadgeTitle {
    return Intl.message(
      'Star Like',
      name: 'profileCardSuperlikeBadgeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Likes reçus`
  String get profilesListLikedMeNavigationTitle {
    return Intl.message(
      'Likes reçus',
      name: 'profilesListLikedMeNavigationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Ces Twelvies s'intéressent à vous et ont confiance en leur bonne étoile.`
  String get profilesListLikedMeDescription {
    return Intl.message(
      'Ces Twelvies s\'intéressent à vous et ont confiance en leur bonne étoile.',
      name: 'profilesListLikedMeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Bélier`
  String get zodiacBelierName {
    return Intl.message(
      'Bélier',
      name: 'zodiacBelierName',
      desc: '',
      args: [],
    );
  }

  /// `Taureau`
  String get zodiacTaureauName {
    return Intl.message(
      'Taureau',
      name: 'zodiacTaureauName',
      desc: '',
      args: [],
    );
  }

  /// `Gémeaux`
  String get zodiacGemeauxName {
    return Intl.message(
      'Gémeaux',
      name: 'zodiacGemeauxName',
      desc: '',
      args: [],
    );
  }

  /// `Cancer`
  String get zodiacCancerName {
    return Intl.message(
      'Cancer',
      name: 'zodiacCancerName',
      desc: '',
      args: [],
    );
  }

  /// `Lion`
  String get zodiacLionName {
    return Intl.message(
      'Lion',
      name: 'zodiacLionName',
      desc: '',
      args: [],
    );
  }

  /// `Vierge`
  String get zodiacViergeName {
    return Intl.message(
      'Vierge',
      name: 'zodiacViergeName',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get zodiacBalanceName {
    return Intl.message(
      'Balance',
      name: 'zodiacBalanceName',
      desc: '',
      args: [],
    );
  }

  /// `Scorpion`
  String get zodiacScorpionName {
    return Intl.message(
      'Scorpion',
      name: 'zodiacScorpionName',
      desc: '',
      args: [],
    );
  }

  /// `Sagittaire`
  String get zodiacSagittaireName {
    return Intl.message(
      'Sagittaire',
      name: 'zodiacSagittaireName',
      desc: '',
      args: [],
    );
  }

  /// `Capricorne`
  String get zodiacCapricorneName {
    return Intl.message(
      'Capricorne',
      name: 'zodiacCapricorneName',
      desc: '',
      args: [],
    );
  }

  /// `Verseau`
  String get zodiacVerseauName {
    return Intl.message(
      'Verseau',
      name: 'zodiacVerseauName',
      desc: '',
      args: [],
    );
  }

  /// `Poissons`
  String get zodiacPoissonsName {
    return Intl.message(
      'Poissons',
      name: 'zodiacPoissonsName',
      desc: '',
      args: [],
    );
  }

  /// `ascendant`
  String get zodiacAscendantText {
    return Intl.message(
      'ascendant',
      name: 'zodiacAscendantText',
      desc: '',
      args: [],
    );
  }

  /// `Les informations relatives à votre orientation sexuelle, collectées pour l'inscription à TWELV, constituent des informations sensibles. Nous les utilisons uniquement pour afficher des profils qui correspondent à vos attentes. Si vous ne souhaitez pas indiquer cette information, nous vous proposerons des profils qui correspondent à vos autres critères de recherche uniquement.`
  String get genderPrivacyDialogMainText {
    return Intl.message(
      'Les informations relatives à votre orientation sexuelle, collectées pour l\'inscription à TWELV, constituent des informations sensibles. Nous les utilisons uniquement pour afficher des profils qui correspondent à vos attentes. Si vous ne souhaitez pas indiquer cette information, nous vous proposerons des profils qui correspondent à vos autres critères de recherche uniquement.',
      name: 'genderPrivacyDialogMainText',
      desc: '',
      args: [],
    );
  }

  /// `J’accepte que [[a href="privacy_policy"]]mes données sensibles[[/a]] soient traitées par TWELV pour afficher des profils qui correspondent à mes préférences.`
  String get genderPrivacyDialogCheckboxText {
    return Intl.message(
      'J’accepte que [[a href="privacy_policy"]]mes données sensibles[[/a]] soient traitées par TWELV pour afficher des profils qui correspondent à mes préférences.',
      name: 'genderPrivacyDialogCheckboxText',
      desc: '',
      args: [],
    );
  }

  /// `Données sensibles`
  String get genderPrivacyDialogTitle {
    return Intl.message(
      'Données sensibles',
      name: 'genderPrivacyDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `J’ai compris`
  String get genderPrivacyDialogContinueButtonTitle {
    return Intl.message(
      'J’ai compris',
      name: 'genderPrivacyDialogContinueButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Les informations recueillies par TWELV lors de votre inscription sont nécessaires à la création de votre compte et à la fourniture de nos services. A tout moment, vous pouvez paramétrer vos préférences en matière de confidentialité dans la rubrique « préférence de confidentialité » de votre profil.\n\nVous disposez d’un droit d’accès de rectification, de suppression et, le cas échéant, de portabilité, d’opposition et de limitation de vos données personnelles. Vous pouvez enfin définir des directives relatives au sort de vos données en cas de décès. Ces droits peuvent être exercés directement auprès de TWELV. Au besoin, vous bénéficiez du droit d’introduire une réclamation auprès de la CNIL. Les informations recueillies sont destinées à TWELV et ses partenaires. Nous prenons les mesures appropriées pour garantir la protection de vos données en cas de transfert hors de l’Union Européenne.\n\nPour en savoir plus sur l’utilisation de vos données personnelles, veuillez consulter notre politique de protection des données personnelles.`
  String get GDPRScreenMainText {
    return Intl.message(
      'Les informations recueillies par TWELV lors de votre inscription sont nécessaires à la création de votre compte et à la fourniture de nos services. A tout moment, vous pouvez paramétrer vos préférences en matière de confidentialité dans la rubrique « préférence de confidentialité » de votre profil.\n\nVous disposez d’un droit d’accès de rectification, de suppression et, le cas échéant, de portabilité, d’opposition et de limitation de vos données personnelles. Vous pouvez enfin définir des directives relatives au sort de vos données en cas de décès. Ces droits peuvent être exercés directement auprès de TWELV. Au besoin, vous bénéficiez du droit d’introduire une réclamation auprès de la CNIL. Les informations recueillies sont destinées à TWELV et ses partenaires. Nous prenons les mesures appropriées pour garantir la protection de vos données en cas de transfert hors de l’Union Européenne.\n\nPour en savoir plus sur l’utilisation de vos données personnelles, veuillez consulter notre politique de protection des données personnelles.',
      name: 'GDPRScreenMainText',
      desc: '',
      args: [],
    );
  }

  /// `Je certifie être majeur(e), avoir pris connaissance et accepter les [[a href="terms_of_use"]]conditions générales d’utilisation[[/a]] et la [[a href="privacy_policy"]]politique de protection des données personnelles.[[/a]]`
  String get GDPRScreenCheckboxText {
    return Intl.message(
      'Je certifie être majeur(e), avoir pris connaissance et accepter les [[a href="terms_of_use"]]conditions générales d’utilisation[[/a]] et la [[a href="privacy_policy"]]politique de protection des données personnelles.[[/a]]',
      name: 'GDPRScreenCheckboxText',
      desc: '',
      args: [],
    );
  }

  /// `Protection des données personnelles`
  String get GDPRScreenTitleText {
    return Intl.message(
      'Protection des données personnelles',
      name: 'GDPRScreenTitleText',
      desc: '',
      args: [],
    );
  }

  /// `Accepter`
  String get GDPRScreenAcceptButtonTitle {
    return Intl.message(
      'Accepter',
      name: 'GDPRScreenAcceptButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Les compatibilités astrologiques`
  String get onboardingTutorial1Title {
    return Intl.message(
      'Les compatibilités astrologiques',
      name: 'onboardingTutorial1Title',
      desc: '',
      args: [],
    );
  }

  /// `Les planètes nous permettent de savoir si deux personnes peuvent s'entendre et former un couple durable ou non.\n\nLe résultat que vous verrez en haut à gauche de chaque profil correspond à vos affinités avec ce Twelvy.\n\nLes compatibilités astrologiques reposent sur la comparaison des planètes de deux personnes en fonction du jour, de l’heure et du lieu de naissance.\n\nCes données sont fournies par la NASA puis analysées grâce à un algorithme développé par des astrologues professionnelles reconnues (Christine Haas et Zoé Lafont) et des ingénieurs spécialisés dans la Data.`
  String get onboardingTutorial1Description {
    return Intl.message(
      'Les planètes nous permettent de savoir si deux personnes peuvent s\'entendre et former un couple durable ou non.\n\nLe résultat que vous verrez en haut à gauche de chaque profil correspond à vos affinités avec ce Twelvy.\n\nLes compatibilités astrologiques reposent sur la comparaison des planètes de deux personnes en fonction du jour, de l’heure et du lieu de naissance.\n\nCes données sont fournies par la NASA puis analysées grâce à un algorithme développé par des astrologues professionnelles reconnues (Christine Haas et Zoé Lafont) et des ingénieurs spécialisés dans la Data.',
      name: 'onboardingTutorial1Description',
      desc: '',
      args: [],
    );
  }

  /// `Vos résultats`
  String get onboardingTutorial2Title {
    return Intl.message(
      'Vos résultats',
      name: 'onboardingTutorial2Title',
      desc: '',
      args: [],
    );
  }

  /// `Nous avons défini 5 domaines de compatibilités:\n\n*Les affinités (les points communs)\n*La complicité (l’entente intellectuelle)\n*La sexualité\n*Les sentiments (l’entente affective)\n*L'engagement (la capacité à s'investir dans la relation)\n\nPour chaque domaine, vous aurez un résultat compris entre 0 et 100%. Tout résultat supérieur à 50% montre une bonne compatibilité astrologique.\n\nATTENTION: Un résultat faible ne veut pas dire qu’il y a incompatibilité. Il montre que ce domaine nécessitera des efforts de la part de chacun.`
  String get onboardingTutorial2Description {
    return Intl.message(
      'Nous avons défini 5 domaines de compatibilités:\n\n*Les affinités (les points communs)\n*La complicité (l’entente intellectuelle)\n*La sexualité\n*Les sentiments (l’entente affective)\n*L\'engagement (la capacité à s\'investir dans la relation)\n\nPour chaque domaine, vous aurez un résultat compris entre 0 et 100%. Tout résultat supérieur à 50% montre une bonne compatibilité astrologique.\n\nATTENTION: Un résultat faible ne veut pas dire qu’il y a incompatibilité. Il montre que ce domaine nécessitera des efforts de la part de chacun.',
      name: 'onboardingTutorial2Description',
      desc: '',
      args: [],
    );
  }

  /// `L’univers Twelv `
  String get onboardingTutorial3Title {
    return Intl.message(
      'L’univers Twelv ',
      name: 'onboardingTutorial3Title',
      desc: '',
      args: [],
    );
  }

  /// `***WIP Wording***\nProfile.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam cursus ultricies fermentum. Quisque vel ante imperdiet felis tempus fringilla id eget eros. Nulla scelerisque feugiat ligula nec tempor`
  String get onboardingTutorial3Description {
    return Intl.message(
      '***WIP Wording***\nProfile.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam cursus ultricies fermentum. Quisque vel ante imperdiet felis tempus fringilla id eget eros. Nulla scelerisque feugiat ligula nec tempor',
      name: 'onboardingTutorial3Description',
      desc: '',
      args: [],
    );
  }

  /// `L'univers Twelv`
  String get onboardingTutorial4Title {
    return Intl.message(
      'L\'univers Twelv',
      name: 'onboardingTutorial4Title',
      desc: '',
      args: [],
    );
  }

  /// `1. Pour liker un Twelvy, swipez vers la droite.\n\n2. Pour passer et découvrir d'autres Twelvies, swipez vers la gauche.\n\n3. Pour attirer l'attention d'un Twelvy qui vous plaît beaucoup, appuyez sur le bouton Star Like.`
  String get onboardingTutorial4Description {
    return Intl.message(
      '1. Pour liker un Twelvy, swipez vers la droite.\n\n2. Pour passer et découvrir d\'autres Twelvies, swipez vers la gauche.\n\n3. Pour attirer l\'attention d\'un Twelvy qui vous plaît beaucoup, appuyez sur le bouton Star Like.',
      name: 'onboardingTutorial4Description',
      desc: '',
      args: [],
    );
  }

  /// `Twelvy du jour`
  String get onboardingTutorial5Title {
    return Intl.message(
      'Twelvy du jour',
      name: 'onboardingTutorial5Title',
      desc: '',
      args: [],
    );
  }

  /// `* Suivez votre bonne étoile avec le profil mystère du jour sélectionné rien que pour vous.\n\n* Vous ne voyez pas sa photo, mais vous savez que votre compatibilité astrologique est très élevée. Allez-vous dépasser les apparences et matcher?`
  String get onboardingTutorial5Description {
    return Intl.message(
      '* Suivez votre bonne étoile avec le profil mystère du jour sélectionné rien que pour vous.\n\n* Vous ne voyez pas sa photo, mais vous savez que votre compatibilité astrologique est très élevée. Allez-vous dépasser les apparences et matcher?',
      name: 'onboardingTutorial5Description',
      desc: '',
      args: [],
    );
  }

  /// `Bienvenue dans notre univers!`
  String get onboardingWelcomeTitle {
    return Intl.message(
      'Bienvenue dans notre univers!',
      name: 'onboardingWelcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `\n\nVous faites maintenant partie de la communauté des Twelvies.\n\nLe respect et la bienveillance sont des valeurs fondamentales pour nous.\nL’amour est universel. Il ne connait ni race, ni genre, ni âge, ni frontière.\nLes commentaires déplacés, rabaissants ou dévalorisants sont interdits.\nLa différence fait la richesse de l’humanité. A ce titre, l’homophobie, la grossophobie, la transphobie, le racisme ou encore le machisme ne font pas partie de notre ADN.\n\nMaintenant, c’est parti !\nSuivez votre bonne étoile pour faire de belles rencontres et trouver le Twelvy idéal.`
  String get onboardingWelcomeDescription {
    return Intl.message(
      '\n\nVous faites maintenant partie de la communauté des Twelvies.\n\nLe respect et la bienveillance sont des valeurs fondamentales pour nous.\nL’amour est universel. Il ne connait ni race, ni genre, ni âge, ni frontière.\nLes commentaires déplacés, rabaissants ou dévalorisants sont interdits.\nLa différence fait la richesse de l’humanité. A ce titre, l’homophobie, la grossophobie, la transphobie, le racisme ou encore le machisme ne font pas partie de notre ADN.\n\nMaintenant, c’est parti !\nSuivez votre bonne étoile pour faire de belles rencontres et trouver le Twelvy idéal.',
      name: 'onboardingWelcomeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Démarrer`
  String get onboardingWelcomeStart {
    return Intl.message(
      'Démarrer',
      name: 'onboardingWelcomeStart',
      desc: '',
      args: [],
    );
  }

  /// `Réglages`
  String get settingsTitle {
    return Intl.message(
      'Réglages',
      name: 'settingsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get settingsNotificationSectionTitle {
    return Intl.message(
      'Notifications',
      name: 'settingsNotificationSectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Gérer mes notifications`
  String get settingsNotificationManageButtonTitle {
    return Intl.message(
      'Gérer mes notifications',
      name: 'settingsNotificationManageButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Assistance`
  String get settingsAssistanceSectionTitle {
    return Intl.message(
      'Assistance',
      name: 'settingsAssistanceSectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Règles de la communauté & tutoriels`
  String get settingsCommunicationBtnTitle {
    return Intl.message(
      'Règles de la communauté & tutoriels',
      name: 'settingsCommunicationBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Politique de confidentialité`
  String get settingsPrivacyPolicyBtnTitle {
    return Intl.message(
      'Politique de confidentialité',
      name: 'settingsPrivacyPolicyBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Conditions d’utilisation`
  String get settingsTermsBtnTitle {
    return Intl.message(
      'Conditions d’utilisation',
      name: 'settingsTermsBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Préférences de confidentialité`
  String get settingsPrivacyPreferencesBtnTitle {
    return Intl.message(
      'Préférences de confidentialité',
      name: 'settingsPrivacyPreferencesBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Déconnexion`
  String get settingsLogoutBtnTitle {
    return Intl.message(
      'Déconnexion',
      name: 'settingsLogoutBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Supprimer le compte`
  String get settingsDeleteAccountBtnTitle {
    return Intl.message(
      'Supprimer le compte',
      name: 'settingsDeleteAccountBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Filtres`
  String get filtersTitle {
    return Intl.message(
      'Filtres',
      name: 'filtersTitle',
      desc: '',
      args: [],
    );
  }

  /// `Tranche d’âge`
  String get filtersAgeRangeTitle {
    return Intl.message(
      'Tranche d’âge',
      name: 'filtersAgeRangeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Distance maximale`
  String get filtersDistanceRangeTitle {
    return Intl.message(
      'Distance maximale',
      name: 'filtersDistanceRangeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enregistrer`
  String get filtersApplyButtonTitle {
    return Intl.message(
      'Enregistrer',
      name: 'filtersApplyButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get settingsNotificationsTitle {
    return Intl.message(
      'Notifications',
      name: 'settingsNotificationsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Choisissez les notifications que vous souhaitez recevoir pour profiter au mieux de votre expérience sur Twelv`
  String get settingsNotificationsDescription {
    return Intl.message(
      'Choisissez les notifications que vous souhaitez recevoir pour profiter au mieux de votre expérience sur Twelv',
      name: 'settingsNotificationsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Nouveau match`
  String get settingsNotificationsMatchSwitchTitle {
    return Intl.message(
      'Nouveau match',
      name: 'settingsNotificationsMatchSwitchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get settingsNotificationsMessagesSwitchTitle {
    return Intl.message(
      'Messages',
      name: 'settingsNotificationsMessagesSwitchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Star Likes`
  String get settingsNotificationsSuperlikesSwitchTitle {
    return Intl.message(
      'Star Likes',
      name: 'settingsNotificationsSuperlikesSwitchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Twelscope du jour`
  String get settingsNotificationsHoroscopeSwitchTitle {
    return Intl.message(
      'Twelscope du jour',
      name: 'settingsNotificationsHoroscopeSwitchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enregistrer`
  String get settingsNotificationsSaveBtnTitle {
    return Intl.message(
      'Enregistrer',
      name: 'settingsNotificationsSaveBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Test de compatibilités`
  String get myProfilTestCompatibility {
    return Intl.message(
      'Test de compatibilités',
      name: 'myProfilTestCompatibility',
      desc: '',
      args: [],
    );
  }

  /// `http://twelv.love/astro`
  String get testCompatibilityUrl {
    return Intl.message(
      'http://twelv.love/astro',
      name: 'testCompatibilityUrl',
      desc: '',
      args: [],
    );
  }

  /// `Conditions Générales d'Utilisation`
  String get documentTermOfUseTitle {
    return Intl.message(
      'Conditions Générales d\'Utilisation',
      name: 'documentTermOfUseTitle',
      desc: '',
      args: [],
    );
  }

  /// `Politique de confidentialité`
  String get documentPrivacyPolicyTitle {
    return Intl.message(
      'Politique de confidentialité',
      name: 'documentPrivacyPolicyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mon profil`
  String get profilEditTitle {
    return Intl.message(
      'Mon profil',
      name: 'profilEditTitle',
      desc: '',
      args: [],
    );
  }

  /// `Aperçu de mon profil`
  String get profilPreviewBtnTitle {
    return Intl.message(
      'Aperçu de mon profil',
      name: 'profilPreviewBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Vos informations personnelles`
  String get profilPersonalSectionTitle {
    return Intl.message(
      'Vos informations personnelles',
      name: 'profilPersonalSectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get profilDescriptionTitle {
    return Intl.message(
      'Description',
      name: 'profilDescriptionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Prénom`
  String get profilNameTitle {
    return Intl.message(
      'Prénom',
      name: 'profilNameTitle',
      desc: '',
      args: [],
    );
  }

  /// `Date de naissance`
  String get profilDateBirthTitle {
    return Intl.message(
      'Date de naissance',
      name: 'profilDateBirthTitle',
      desc: '',
      args: [],
    );
  }

  /// `Heure de naissance`
  String get profilTimeBirthTitle {
    return Intl.message(
      'Heure de naissance',
      name: 'profilTimeBirthTitle',
      desc: '',
      args: [],
    );
  }

  /// `Lieu de naissance`
  String get profilPlaceBirthTitle {
    return Intl.message(
      'Lieu de naissance',
      name: 'profilPlaceBirthTitle',
      desc: '',
      args: [],
    );
  }

  /// `Je suis`
  String get profilGenderTitle {
    return Intl.message(
      'Je suis',
      name: 'profilGenderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Intéressé.e par`
  String get profilInterestedInTitle {
    return Intl.message(
      'Intéressé.e par',
      name: 'profilInterestedInTitle',
      desc: '',
      args: [],
    );
  }

  /// `Débloquer des fonctionnalités`
  String get compalibilitesSectionBlockedButtonTitle {
    return Intl.message(
      'Débloquer des fonctionnalités',
      name: 'compalibilitesSectionBlockedButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Vous n'avez plus de Like disponible`
  String get noAccessPopupFreeExplorerTitle {
    return Intl.message(
      'Vous n\'avez plus de Like disponible',
      name: 'noAccessPopupFreeExplorerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Accéder à tous les Twelvies`
  String get noAccessPopupFreeExplorerMessage {
    return Intl.message(
      'Accéder à tous les Twelvies',
      name: 'noAccessPopupFreeExplorerMessage',
      desc: '',
      args: [],
    );
  }

  /// `Vous n'avez plus de Star Like disponible`
  String get noAccessPopupFreeSuperlikeTitle {
    return Intl.message(
      'Vous n\'avez plus de Star Like disponible',
      name: 'noAccessPopupFreeSuperlikeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Avec 1 étoile, envoyez un Star Like et mettez toutes les chances de votre côté`
  String get noAccessPopupFreeSuperlikeMessage {
    return Intl.message(
      'Avec 1 étoile, envoyez un Star Like et mettez toutes les chances de votre côté',
      name: 'noAccessPopupFreeSuperlikeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Vous n'avez plus de Star Like disponible`
  String get noAccessPopupPremiumSuperlikeTitle {
    return Intl.message(
      'Vous n\'avez plus de Star Like disponible',
      name: 'noAccessPopupPremiumSuperlikeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Avec 1 étoile, envoyez un Star Like et mettez toutes les chances de votre côté`
  String get noAccessPopupPremiumSuperlikeMessage {
    return Intl.message(
      'Avec 1 étoile, envoyez un Star Like et mettez toutes les chances de votre côté',
      name: 'noAccessPopupPremiumSuperlikeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Vous ne pouvez pas voir le profil de ce Twelvy`
  String get noAccessPopupBlurredImageLikesTitle {
    return Intl.message(
      'Vous ne pouvez pas voir le profil de ce Twelvy',
      name: 'noAccessPopupBlurredImageLikesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Pour déflouter le profil de ce Twelvy, vous pouvez rejoindre notre communauté en vous abonnant ou en achetant des Étoiles.`
  String get noAccessPopupBlurredImageLikesMessage {
    return Intl.message(
      'Pour déflouter le profil de ce Twelvy, vous pouvez rejoindre notre communauté en vous abonnant ou en achetant des Étoiles.',
      name: 'noAccessPopupBlurredImageLikesMessage',
      desc: '',
      args: [],
    );
  }

  /// `Découvrez l'ensemble de vos résultats`
  String get noAccessPopupCompatibilitiesDisabledTitle {
    return Intl.message(
      'Découvrez l\'ensemble de vos résultats',
      name: 'noAccessPopupCompatibilitiesDisabledTitle',
      desc: '',
      args: [],
    );
  }

  /// `Si vous voulez voir vos compatibilités astrologiques dans tous les domaines, vous pouvez vous abonner ou acheter des étoiles`
  String get noAccessPopupCompatibilitiesDisabledMessage {
    return Intl.message(
      'Si vous voulez voir vos compatibilités astrologiques dans tous les domaines, vous pouvez vous abonner ou acheter des étoiles',
      name: 'noAccessPopupCompatibilitiesDisabledMessage',
      desc: '',
      args: [],
    );
  }

  /// `Devenez TwelVIP pour débloquer toutes les fonctionnalités. À partir de`
  String get noAccessPopupPremiumMessage {
    return Intl.message(
      'Devenez TwelVIP pour débloquer toutes les fonctionnalités. À partir de',
      name: 'noAccessPopupPremiumMessage',
      desc: '',
      args: [],
    );
  }

  /// `Devenir TwelVIP`
  String get noAccessPopupPremiumButtonTitle {
    return Intl.message(
      'Devenir TwelVIP',
      name: 'noAccessPopupPremiumButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Choisissez les fonctionnalités qui vous intéressent. À partir de`
  String get noAccessPopupCreditsMessage {
    return Intl.message(
      'Choisissez les fonctionnalités qui vous intéressent. À partir de',
      name: 'noAccessPopupCreditsMessage',
      desc: '',
      args: [],
    );
  }

  /// `Acheter des Étoiles`
  String get noAccessPopupCreditsButtonTitle {
    return Intl.message(
      'Acheter des Étoiles',
      name: 'noAccessPopupCreditsButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Plus tard`
  String get noAccessPopupNotNowButtonTitle {
    return Intl.message(
      'Plus tard',
      name: 'noAccessPopupNotNowButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Gestion des cookies`
  String get cookiesSettingsTitle {
    return Intl.message(
      'Gestion des cookies',
      name: 'cookiesSettingsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Nous utilisons des cookies techniques nécessaires au bon fonctionnement de l’application. Si vous y consentez, nos partenaires et nous utiliserons également des cookies et autres traceurs de mesure d’audience pour améliorer les services proposés sur l’Application.[[br]][[br]]Vous pouvez paramétrer le dépôt de ces cookies et autres traceurs via ce bandeau cookie ou à tout moment dans vos paramètres. Pour plus d’informations, veuillez consulter notre [[a href="consent_policy"]]politique de gestion des cookies.[[/a]]`
  String get cookiesSettingsMessage {
    return Intl.message(
      'Nous utilisons des cookies techniques nécessaires au bon fonctionnement de l’application. Si vous y consentez, nos partenaires et nous utiliserons également des cookies et autres traceurs de mesure d’audience pour améliorer les services proposés sur l’Application.[[br]][[br]]Vous pouvez paramétrer le dépôt de ces cookies et autres traceurs via ce bandeau cookie ou à tout moment dans vos paramètres. Pour plus d’informations, veuillez consulter notre [[a href="consent_policy"]]politique de gestion des cookies.[[/a]]',
      name: 'cookiesSettingsMessage',
      desc: '',
      args: [],
    );
  }

  /// `Gestion des cookies`
  String get cookiesSettingsChoiceSectionTitle {
    return Intl.message(
      'Gestion des cookies',
      name: 'cookiesSettingsChoiceSectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Besoins analytiques`
  String get cookiesSettingsMainSwitchTitle {
    return Intl.message(
      'Besoins analytiques',
      name: 'cookiesSettingsMainSwitchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mesure d’audience & analyse de la navigation`
  String get cookiesSettingsNavigationSwitchTitle {
    return Intl.message(
      'Mesure d’audience & analyse de la navigation',
      name: 'cookiesSettingsNavigationSwitchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Suivi d’interruption de l’application`
  String get cookiesSettingsCrashSwitchTitle {
    return Intl.message(
      'Suivi d’interruption de l’application',
      name: 'cookiesSettingsCrashSwitchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enregistrer`
  String get generalSaveAPIButtonTitle {
    return Intl.message(
      'Enregistrer',
      name: 'generalSaveAPIButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Page de consentement`
  String get documentConsentPageTitle {
    return Intl.message(
      'Page de consentement',
      name: 'documentConsentPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mettre à jour`
  String get generalUpdateAPIButtonTitle {
    return Intl.message(
      'Mettre à jour',
      name: 'generalUpdateAPIButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mes Twelvies`
  String get chatMyMatchesTitle {
    return Intl.message(
      'Mes Twelvies',
      name: 'chatMyMatchesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mes messages`
  String get chatMyConversationsTitle {
    return Intl.message(
      'Mes messages',
      name: 'chatMyConversationsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Toutes les Étoiles seront perdues. Êtes-vous sûr de vouloir supprimer votre compte ?`
  String get deleteAccountPopupStandardUserMessage {
    return Intl.message(
      'Toutes les Étoiles seront perdues. Êtes-vous sûr de vouloir supprimer votre compte ?',
      name: 'deleteAccountPopupStandardUserMessage',
      desc: '',
      args: [],
    );
  }

  /// `Toutes les Étoiles seront perdues. Êtes-vous sûr de vouloir supprimer votre compte ? N'oubliez pas d'arrêter votre abonnement dans le store`
  String get deleteAccountPopupPremiumMessage {
    return Intl.message(
      'Toutes les Étoiles seront perdues. Êtes-vous sûr de vouloir supprimer votre compte ? N\'oubliez pas d\'arrêter votre abonnement dans le store',
      name: 'deleteAccountPopupPremiumMessage',
      desc: '',
      args: [],
    );
  }

  /// `Oui`
  String get commonPopupOkButtonTitle {
    return Intl.message(
      'Oui',
      name: 'commonPopupOkButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Non`
  String get commonPopupCancelButtonTitle {
    return Intl.message(
      'Non',
      name: 'commonPopupCancelButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Aucune discussion pour le moment`
  String get chatNoOngoingConversationsMessage {
    return Intl.message(
      'Aucune discussion pour le moment',
      name: 'chatNoOngoingConversationsMessage',
      desc: '',
      args: [],
    );
  }

  /// `Supprimer le compte`
  String get deleteAccountPopupTitle {
    return Intl.message(
      'Supprimer le compte',
      name: 'deleteAccountPopupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Twelvscope du jour`
  String get horoscopeTitle {
    return Intl.message(
      'Twelvscope du jour',
      name: 'horoscopeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Twelvies illimités`
  String get premiumSliderSubscriptionNo1Tittle {
    return Intl.message(
      'Twelvies illimités',
      name: 'premiumSliderSubscriptionNo1Tittle',
      desc: '',
      args: [],
    );
  }

  /// `Star Like`
  String get premiumSliderSubscriptionNo2Tittle {
    return Intl.message(
      'Star Like',
      name: 'premiumSliderSubscriptionNo2Tittle',
      desc: '',
      args: [],
    );
  }

  /// `Likes reçus`
  String get premiumSliderSubscriptionNo3Tittle {
    return Intl.message(
      'Likes reçus',
      name: 'premiumSliderSubscriptionNo3Tittle',
      desc: '',
      args: [],
    );
  }

  /// `Vos compatibilités astrologiques`
  String get premiumSliderSubscriptionNo4Tittle {
    return Intl.message(
      'Vos compatibilités astrologiques',
      name: 'premiumSliderSubscriptionNo4Tittle',
      desc: '',
      args: [],
    );
  }

  /// `Accédez en toute liberté à tous les profils de l'univers Twelv`
  String get premiumSliderSubscriptionNo1Message {
    return Intl.message(
      'Accédez en toute liberté à tous les profils de l\'univers Twelv',
      name: 'premiumSliderSubscriptionNo1Message',
      desc: '',
      args: [],
    );
  }

  /// `Avec 1 Étoile, envoyez un Star Like et mettez toutes les chances de votre côté`
  String get premiumSliderSubscriptionNo2Message {
    return Intl.message(
      'Avec 1 Étoile, envoyez un Star Like et mettez toutes les chances de votre côté',
      name: 'premiumSliderSubscriptionNo2Message',
      desc: '',
      args: [],
    );
  }

  /// `Découvrez les Twelvies qui ont liké votre profil`
  String get premiumSliderSubscriptionNo3Message {
    return Intl.message(
      'Découvrez les Twelvies qui ont liké votre profil',
      name: 'premiumSliderSubscriptionNo3Message',
      desc: '',
      args: [],
    );
  }

  /// `Accédez à l'intégralité de vos résultats dans les 5 domaines (affinités, complicité, sexualité, sentiments, engagement)`
  String get premiumSliderSubscriptionNo4Message {
    return Intl.message(
      'Accédez à l\'intégralité de vos résultats dans les 5 domaines (affinités, complicité, sexualité, sentiments, engagement)',
      name: 'premiumSliderSubscriptionNo4Message',
      desc: '',
      args: [],
    );
  }

  /// `Continuez à swiper`
  String get premiumSliderCreditsNo1Title {
    return Intl.message(
      'Continuez à swiper',
      name: 'premiumSliderCreditsNo1Title',
      desc: '',
      args: [],
    );
  }

  /// `Star Like`
  String get premiumSliderCreditsNo2Title {
    return Intl.message(
      'Star Like',
      name: 'premiumSliderCreditsNo2Title',
      desc: '',
      args: [],
    );
  }

  /// `Likes reçus`
  String get premiumSliderCreditsNo3Title {
    return Intl.message(
      'Likes reçus',
      name: 'premiumSliderCreditsNo3Title',
      desc: '',
      args: [],
    );
  }

  /// `Vos compatibilités astrologiques`
  String get premiumSliderCreditsNo4Title {
    return Intl.message(
      'Vos compatibilités astrologiques',
      name: 'premiumSliderCreditsNo4Title',
      desc: '',
      args: [],
    );
  }

  /// `Avec 1 Étoile, découvrez 36 Twelvies de plus`
  String get premiumSliderCreditsNo1Message {
    return Intl.message(
      'Avec 1 Étoile, découvrez 36 Twelvies de plus',
      name: 'premiumSliderCreditsNo1Message',
      desc: '',
      args: [],
    );
  }

  /// `Avec 1 Étoile, envoyez un Star Like et mettez toutes les chances de votre côté`
  String get premiumSliderCreditsNo2Message {
    return Intl.message(
      'Avec 1 Étoile, envoyez un Star Like et mettez toutes les chances de votre côté',
      name: 'premiumSliderCreditsNo2Message',
      desc: '',
      args: [],
    );
  }

  /// `Avec 1 Étoile, découvrez le profil d'un Twelvy qui vous a liké`
  String get premiumSliderCreditsNo3Message {
    return Intl.message(
      'Avec 1 Étoile, découvrez le profil d\'un Twelvy qui vous a liké',
      name: 'premiumSliderCreditsNo3Message',
      desc: '',
      args: [],
    );
  }

  /// `Avec 1 Étoile, accédez à l'intégralité de vos résultats avec le Twelvy de votre choix`
  String get premiumSliderCreditsNo4Message {
    return Intl.message(
      'Avec 1 Étoile, accédez à l\'intégralité de vos résultats avec le Twelvy de votre choix',
      name: 'premiumSliderCreditsNo4Message',
      desc: '',
      args: [],
    );
  }

  /// `Voir les [[a href="terms_of_use"]]termes & conditions[[/a]]`
  String get premiumProductsPopupTermsMessage {
    return Intl.message(
      'Voir les [[a href="terms_of_use"]]termes & conditions[[/a]]',
      name: 'premiumProductsPopupTermsMessage',
      desc: '',
      args: [],
    );
  }

  /// `Code promotionnel`
  String get premiumProductsPopupPromoCodeMessage {
    return Intl.message(
      'Code promotionnel',
      name: 'premiumProductsPopupPromoCodeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Préférences de confidentialité`
  String get privacySettingsTitle {
    return Intl.message(
      'Préférences de confidentialité',
      name: 'privacySettingsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Paramétrez vos réglages selon vos préférences. Pour en savoir plus sur l’utilisation de vos données par TWELV, vous pouvez consulter [[a href="privacy_policy"]]notre politique de protection des données personnelles.[[/a]]`
  String get privacySettingsDescription {
    return Intl.message(
      'Paramétrez vos réglages selon vos préférences. Pour en savoir plus sur l’utilisation de vos données par TWELV, vous pouvez consulter [[a href="privacy_policy"]]notre politique de protection des données personnelles.[[/a]]',
      name: 'privacySettingsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Communications par sms`
  String get privacySettingsSmsTitle {
    return Intl.message(
      'Communications par sms',
      name: 'privacySettingsSmsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Offres commerciales`
  String get privacySettingsSmsSwitchTitle {
    return Intl.message(
      'Offres commerciales',
      name: 'privacySettingsSmsSwitchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Gestion des cookies`
  String get privacySettingsCookiesTitle {
    return Intl.message(
      'Gestion des cookies',
      name: 'privacySettingsCookiesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mesure d’audience & analyse de la navigation`
  String get privacySettingsNavigationSwitchTitle {
    return Intl.message(
      'Mesure d’audience & analyse de la navigation',
      name: 'privacySettingsNavigationSwitchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Suivi d’interruption de l’application`
  String get privacySettingsCrashSwitchTitle {
    return Intl.message(
      'Suivi d’interruption de l’application',
      name: 'privacySettingsCrashSwitchTitle',
      desc: '',
      args: [],
    );
  }

  /// `J’accepte que [[a href="privacy_policy"]]mes données sensibles[[/a]] soient traités par TWELV pour afficher des profils qui correspondent à mes préférences*`
  String get privacySettingsSensitiveDataDescription {
    return Intl.message(
      'J’accepte que [[a href="privacy_policy"]]mes données sensibles[[/a]] soient traités par TWELV pour afficher des profils qui correspondent à mes préférences*',
      name: 'privacySettingsSensitiveDataDescription',
      desc: '',
      args: [],
    );
  }

  /// `Quelque chose ne va pas. Certaines fonctionnalités du tchat pourraient ne pas être accessibles`
  String get errorChatGenericMessage {
    return Intl.message(
      'Quelque chose ne va pas. Certaines fonctionnalités du tchat pourraient ne pas être accessibles',
      name: 'errorChatGenericMessage',
      desc: '',
      args: [],
    );
  }

  /// `Aujourd'hui`
  String get commonToday {
    return Intl.message(
      'Aujourd\'hui',
      name: 'commonToday',
      desc: '',
      args: [],
    );
  }

  /// `Hier`
  String get commonYesterday {
    return Intl.message(
      'Hier',
      name: 'commonYesterday',
      desc: '',
      args: [],
    );
  }

  /// `Écrire votre message… `
  String get chatConversationInputMessagePlaceholder {
    return Intl.message(
      'Écrire votre message… ',
      name: 'chatConversationInputMessagePlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Dématcher`
  String get chatUnmatchActionTitle {
    return Intl.message(
      'Dématcher',
      name: 'chatUnmatchActionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Signaler le profil`
  String get chatReportProfileActionTitle {
    return Intl.message(
      'Signaler le profil',
      name: 'chatReportProfileActionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Il n'y a pas encore de message\ndans cette discussion`
  String get chatNoMessagesYetTitle {
    return Intl.message(
      'Il n\'y a pas encore de message\ndans cette discussion',
      name: 'chatNoMessagesYetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Utiliser une Étoile`
  String get standardAccountSpendCreditAlertTitle {
    return Intl.message(
      'Utiliser une Étoile',
      name: 'standardAccountSpendCreditAlertTitle',
      desc: '',
      args: [],
    );
  }

  /// `Voulez-vous utiliser une Étoile pour voir plus de Twelvies?`
  String get standardAccountSpendCreditPerSwipeAlertMessage {
    return Intl.message(
      'Voulez-vous utiliser une Étoile pour voir plus de Twelvies?',
      name: 'standardAccountSpendCreditPerSwipeAlertMessage',
      desc: '',
      args: [],
    );
  }

  /// `Voulez-vous utiliser une Étoile pour envoyer un Star Like à ce Twelvy?`
  String get standardAccountSpendCreditPerSuperlikeAlertMessage {
    return Intl.message(
      'Voulez-vous utiliser une Étoile pour envoyer un Star Like à ce Twelvy?',
      name: 'standardAccountSpendCreditPerSuperlikeAlertMessage',
      desc: '',
      args: [],
    );
  }

  /// `Voulez-vous utiliser une Étoile pour voir plus de Twelvies?`
  String get premiumAccountSpendCreditPerSuperlikeAlertMessage {
    return Intl.message(
      'Voulez-vous utiliser une Étoile pour voir plus de Twelvies?',
      name: 'premiumAccountSpendCreditPerSuperlikeAlertMessage',
      desc: '',
      args: [],
    );
  }

  /// `Voulez-vous utiliser une Étoile pour voir ce Twelvy?`
  String get freeAccountSpendCreditPerBlurredAlertMessage {
    return Intl.message(
      'Voulez-vous utiliser une Étoile pour voir ce Twelvy?',
      name: 'freeAccountSpendCreditPerBlurredAlertMessage',
      desc: '',
      args: [],
    );
  }

  /// `Êtes-vous sûr de vouloir signaler ce Twelvy?`
  String get profileCardReportConfirmPopupTitle {
    return Intl.message(
      'Êtes-vous sûr de vouloir signaler ce Twelvy?',
      name: 'profileCardReportConfirmPopupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Ce Twelvy a bien été signalé`
  String get profileCardProfileReportedSuccessTitle {
    return Intl.message(
      'Ce Twelvy a bien été signalé',
      name: 'profileCardProfileReportedSuccessTitle',
      desc: '',
      args: [],
    );
  }

  /// `Twelvy du jour`
  String get profileCardProfileOfDayBadgeTitle {
    return Intl.message(
      'Twelvy du jour',
      name: 'profileCardProfileOfDayBadgeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Utiliser une Étoile`
  String get compalibilitesSectionBlockedUseCreditButtonTitle {
    return Intl.message(
      'Utiliser une Étoile',
      name: 'compalibilitesSectionBlockedUseCreditButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Tout le monde`
  String get settingsGenderNullInterestedIn {
    return Intl.message(
      'Tout le monde',
      name: 'settingsGenderNullInterestedIn',
      desc: '',
      args: [],
    );
  }

  /// `Paiement`
  String get paymentDialogTitle {
    return Intl.message(
      'Paiement',
      name: 'paymentDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Paiement réussi`
  String get paymentSuccessMessage {
    return Intl.message(
      'Paiement réussi',
      name: 'paymentSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Paiement restauré avec succès`
  String get paymentSuccessRestoredMessage {
    return Intl.message(
      'Paiement restauré avec succès',
      name: 'paymentSuccessRestoredMessage',
      desc: '',
      args: [],
    );
  }

  /// `Il n'y a pas de paiement en attente`
  String get paymentNoneRestoredMessage {
    return Intl.message(
      'Il n\'y a pas de paiement en attente',
      name: 'paymentNoneRestoredMessage',
      desc: '',
      args: [],
    );
  }

  /// `Erreur de paiement`
  String get paymentErrorMessage {
    return Intl.message(
      'Erreur de paiement',
      name: 'paymentErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Restaurer mes achats`
  String get paymentRestorePurchasesButton {
    return Intl.message(
      'Restaurer mes achats',
      name: 'paymentRestorePurchasesButton',
      desc: '',
      args: [],
    );
  }

  /// `Not found chat member profile`
  String get chatNotFoundProfileError {
    return Intl.message(
      'Not found chat member profile',
      name: 'chatNotFoundProfileError',
      desc: '',
      args: [],
    );
  }

  /// `Voir le profil`
  String get chatPreviewMemberProfilButtonTitle {
    return Intl.message(
      'Voir le profil',
      name: 'chatPreviewMemberProfilButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Vous avez envoyé un Star Like!`
  String get superlikedAlertMessage {
    return Intl.message(
      'Vous avez envoyé un Star Like!',
      name: 'superlikedAlertMessage',
      desc: '',
      args: [],
    );
  }

  /// `Votre signe`
  String get horoscopeZodiacSignsEqualsTitle {
    return Intl.message(
      'Votre signe',
      name: 'horoscopeZodiacSignsEqualsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Fin:`
  String get myProfilSubscriptionDatePrefix {
    return Intl.message(
      'Fin:',
      name: 'myProfilSubscriptionDatePrefix',
      desc: '',
      args: [],
    );
  }

  /// `Rafraîchir les profils`
  String get homeEmptyListRefreshProfilesButton {
    return Intl.message(
      'Rafraîchir les profils',
      name: 'homeEmptyListRefreshProfilesButton',
      desc: '',
      args: [],
    );
  }

  /// `Pour trouver votre bonne étoile, vous devez autoriser le partage de votre localisation`
  String get homeRecommendationsEmptyNoLocationMessage {
    return Intl.message(
      'Pour trouver votre bonne étoile, vous devez autoriser le partage de votre localisation',
      name: 'homeRecommendationsEmptyNoLocationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Ouvrir les paramètres`
  String get homeRecommendationsEmptyAllowLocationButton {
    return Intl.message(
      'Ouvrir les paramètres',
      name: 'homeRecommendationsEmptyAllowLocationButton',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Str> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Str> load(Locale locale) => Str.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
