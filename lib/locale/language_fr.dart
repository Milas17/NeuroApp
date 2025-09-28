import 'package:kivicare_flutter/locale/base_language_key.dart';

class LanguageFr extends BaseLanguage {
  @override
  String get appName => 'NeuroCare Connect';

  // --- Boutique / Coupons / Panier ---
  @override
  String get lblDiscountValidationText => 'La remise ne peut pas dépasser le total des frais.';
  @override
  String get lblRemoveCouponConfirmation => 'Supprimer ce coupon ?';
  @override
  String get lblNoCouponAvailable => 'Aucun coupon disponible';
  @override
  String get lblVisitingDays => 'Jours de visite';
  @override
  String get lblCouponApplicable => 'Coupon applicable ! 🎉';
  @override
  String get lblMinimumSpent => 'Dépense minimale';
  @override
  String get lblMaximumSpent => 'Dépense maximale';
  @override
  String get lblExpiresOn => 'Expire le';
  @override
  String get lblMinimumSpentText => 'Activez la remise en atteignant le minimum.';
  @override
  String get lblMaximumSpentText => 'Le montant du panier dépasse la limite.';
  @override
  String get lblRemovedFromWishList => 'Retiré des favoris';
  @override
  String get lblAddedToWishList => 'Ajouté aux favoris';
  @override
  String get lblWishList => 'Favoris';
  @override
  String get lblCart => 'Panier';
  @override
  String get lblEditAddressDetails => "Modifier l'adresse";
  @override
  String get lblEmptyWishList => 'Votre liste de favoris est vide';
  @override
  String get lblWishListSubTitle => 'Retrouvez vos articles enregistrés';
  @override
  String get lblWishListTitle => 'Vos favoris';
  @override
  String get lblSearchProducts => 'Rechercher des produits';
  @override
  String get lblContinue => 'Continuer';
  @override
  String get lblShippingCost => 'Frais de livraison';
  @override
  String get lblNoPaymentMethods => 'Aucun moyen de paiement';
  @override
  String get lblAddOrderNotes => 'Ajouter une note de commande';
  @override
  String get lblNotesAboutOrder => 'Note sur la commande';
  @override
  String get lblOptional => 'Optionnel';
  @override
  String get lblCouponRemoved => 'Coupon supprimé';
  @override
  String get lblBuyThisOnWordpressStore => 'Acheter sur la boutique WordPress';
  @override
  String get lblChooseFromCollection => 'Choisir dans la collection';
  @override
  String get lblViewCoupons => 'Voir les coupons';
  @override
  String get lblExperiencePractitioner => 'Professionnel expérimenté';
  @override
  String get lblShopFromWordpress => 'Boutique WordPress';
  @override
  String get lblShop => 'Boutique';
  @override
  String get lblAddressSubTitle => 'Adresse de livraison';
  @override
  String get lblOrders => 'Commandes';
  @override
  String get lblOrdersSubtitle => 'Historique des commandes';
  @override
  String get lblCoupons => 'Coupons';
  @override
  String get lblCouponsSubtitle => 'Vos remises disponibles';
  @override
  String get lblAny => 'Tous';
  @override
  String get lblProcessing => 'En traitement';
  @override
  String get lblOnHold => 'En attente';
  @override
  String get lblRefunded => 'Remboursé';
  @override
  String get lblFailed => 'Échec';
  @override
  String get lblTrash => 'Corbeille';
  @override
  String get lblPermissionDenied => 'Permission de localisation refusée';
  @override
  String get lblSetAddress => 'Définir l’adresse';
  @override
  String get lblPickAddress => 'Choisir une adresse';
  @override
  String get lblSwipeRightNote => 'Astuce : balayez vers la droite pour supprimer';
  @override
  String get lblCompany => 'Entreprise';
  @override
  String get lblSale => 'Promo';
  @override
  String get lblEnterValidCouponCode => 'Entrez un code coupon valide';
  @override
  String get lblNoProductsFound => 'Aucun produit trouvé';
  @override
  String get lblCantFindProductYouSearchedFor => 'Désolé, aucun produit correspondant';
  @override
  String get lblAverageRating => 'Note moyenne';
  @override
  String get lblPopularity => 'Popularité';
  @override
  String get lblPrice => 'Prix';
  @override
  String get lblReasonForCancellation => "Raison de l'annulation";
  @override
  String get lblCancelOrder => 'Annuler';
  @override
  String get lblCouponDiscount => 'Remise coupon';
  @override
  String get lblReviewHint => 'Votre avis nous aide';
  @override
  String get lblViewProducts => 'Voir les produits';
  @override
  String get lblPleaseSelectProduct => 'Sélectionnez un produit dans la liste';
  @override
  String get lblPleaseAddQuantity => 'Ajoutez une quantité';
  @override
  String get lblPleaseSelectCountry => 'Sélectionnez d’abord le pays';
  @override
  String get lblCopiedToClipboard => 'Copié dans le presse-papier';
  @override
  String get lblCartUpdated => 'Panier mis à jour';
  @override
  String get lblOrderDeleted => 'Commande supprimée';
  @override
  String get lblEnterValidBllling => 'Saisissez une facturation valide';
  @override
  String get lblYourCarIsEmpty => 'Votre panier est vide';

  // --- Temps relatifs ---
  @override
  String get ago => 'plus tôt';
  @override
  String get day => 'jour';
  @override
  String get hour => 'heure';
  @override
  String get minute => 'minute';
  @override
  String get second => 'seconde';
  @override
  String get justNow => 'à l’instant';

  // --- Localisation ---
  @override
  String get currentLocation => 'Utiliser la position actuelle';
  @override
  String get chooseFromMap => 'Choisir sur la carte';

  // --- Commandes / détails ---
  @override
  String get orderCancelledSuccessfully => 'Commande annulée';
  @override
  String get cancelOrderConfirmation => 'Voulez-vous annuler cette commande ?';
  @override
  String get orderStatus => 'Statut';
  @override
  String get orderNumber => 'N° de commande';
  @override
  String get paymentMethod => 'Moyen de paiement';
  @override
  String get date => 'Date';
  @override
  String get customerReview => 'Avis client';
  @override
  String get chooseAnOption => 'Choisir une option';
  @override
  String get sku => 'Référence';
  @override
  String get category => 'Catégorie';
  @override
  String get reviewAddedSuccessfully => 'Avis ajouté';
  @override
  String get pleaseAddReview => 'Ajoutez un avis';
  @override
  String get pleaseAddRating => 'Ajoutez une note';
  @override
  String get reviews => 'Avis';
  @override
  String get editReview => 'Modifier l’avis';
  @override
  String get addAReview => 'Ajouter un avis';
  @override
  String get rating => 'Note';
  @override
  String get writeReview => 'Votre avis';
  @override
  String get reviewUpdatedSuccessfully => 'Avis mis à jour';
  @override
  String get reviewDeletedSuccessfully => 'Avis supprimé';
  @override
  String get deleteReviewConfirmation => 'Supprimer cet avis ?';
  @override
  String get yourCartIsCurrentlyEmpty => 'Votre panier est vide.';
  @override
  String get returnToShop => 'Retour à la boutique';
  @override
  String get cartUpdated => 'Panier mis à jour';
  @override
  String get itemRemovedSuccessfully => 'Article retiré';
  @override
  String get removeFromCartConfirmation => 'Retirer cet article du panier ?';
  @override
  String get appliedCoupons => 'Coupons appliqués';
  @override
  String get successfullyAddedToCart => 'Ajouté au panier';
  @override
  String get addToCart => 'Ajouter au panier';
  @override
  String get clickToRefresh => 'Appuyez pour actualiser';
  @override
  String get state => 'Région';
  @override
  String get pleaseEnterDescription => 'Saisissez une description';
  @override
  String get replyTo => 'Répondre à';
  @override
  String get enterValidCouponCode => 'Code coupon invalide';
  @override
  String get code => 'Code';
  @override
  String get shippingAddress => 'Adresse de livraison';
  @override
  String get billingAndShippingAddresses => 'Facturation = livraison';
  @override
  String get copiedToClipboard => 'Copié dans le presse-papier';
  @override
  String get expiresOn => 'Expire le';
  @override
  String get off => 'de réduction';
  @override
  String get myWishlist => 'Mes favoris';
  @override
  String get sortBy => 'Trier par';
  @override
  String get selectCategory => 'Choisir une catégorie';
  @override
  String get shop => 'Boutique';
  @override
  String get outOfStock => 'Rupture de stock';
  @override
  String get goToCart => 'Aller au panier';
  @override
  String get relatedProducts => 'Produits associés';
  @override
  String get additionalInformation => 'Informations complémentaires';
  @override
  String get discount => 'Remise';
  @override
  String get couponCode => 'Code promo';
  @override
  String get applyCoupon => 'Appliquer';
  @override
  String get cartTotals => 'Total du panier';
  @override
  String get proceedToCheckout => 'Passer au paiement';
  @override
  String get checkout => 'Paiement';
  @override
  String get products => 'Produits';
  @override
  String get qty => 'Qté';
  @override
  String get billingAddress => 'Adresse de facturation';
  @override
  String get selectPaymentMethod => 'Choisir un moyen de paiement';
  @override
  String get paymentGatewaysNotFound => 'Aucune passerelle de paiement';
  @override
  String get placeOrder => 'Confirmer la commande';
  @override
  String get placeOrderText =>
      'Vos données seront utilisées pour traiter votre commande comme décrit dans notre politique de confidentialité.';
  @override
  String get orderDetails => 'Détails de la commande';

  // --- Libellés spécifiques (annulations, etc.) ---
  @override
  String get lblOrderCancelledSuccessfully => 'Commande annulée avec succès';
  @override
  String get lblCancelOrderMessageSix => 'Commande passée par erreur';
  @override
  String get lblCancelOrderMessageFive => 'Mauvais avis reçus après commande';
  @override
  String get lblCancelOrderMessageFour => 'Prix du produit en baisse';
  @override
  String get lblCancelOrderMessageThree => 'Alternative moins chère disponible';
  @override
  String get lblCancelOrderMessageTwo => 'Le produit n’est plus nécessaire';
  @override
  String get lblCancelOrderMessageOne => 'Adresse de livraison incorrecte';

  // --- Tableau de bord médical / généraux ---
  @override
  String get lblBill => 'Facture';
  @override
  String get lblStripeTestCredential => 'Montant invalide';
  @override
  String get lblTodayIsHoliday => "Aujourd’hui est férié";
  @override
  String get lblTotalTax => 'Total taxes';
  @override
  String get lblStart => 'Démarrer';
  @override
  String get lblJoin => 'Rejoindre';
  @override
  String get lblTotalDoctors => 'Total médecins';
  @override
  String get lblTax => 'Taxe';
  @override
  String get lblTaxRate => 'Taux de taxe';
  @override
  String get lblSubTotal => 'Sous-total';
  @override
  String get lblThisServiceAlreadyExistInClinic =>
      'Ce service existe déjà pour cette clinique';
  @override
  String get lblPleaseSelectPayment => 'Choisissez un moyen de paiement';
  @override
  String get lblChargesIsNegative => 'Les frais doivent être ≥ 0';
  @override
  String get lblServiceCategoryIsRequired => 'Catégorie requise';
  @override
  String get lblServiceNameIsRequired => 'Nom du service requis';
  @override
  String get lblDurationIsRequired => 'Durée requise';
  @override
  String get lblChargesIsRequired => 'Frais requis';
  @override
  String get lblNoLatestAppointmentFound => 'Aucun dernier rendez-vous trouvé';
  @override
  String get lblNoPendingAppointmentFound => 'Aucun rendez-vous en attente';
  @override
  String get lblNoCompletedAppointmentFound => 'Aucun rendez-vous terminé';
  @override
  String get lblNoCancelledAppointmentFound => 'Aucun rendez-vous annulé';
  @override
  String get clinicIdRequired => 'Clinique requise';
  @override
  String get roleIsRequired => 'Rôle requis';
  @override
  String get confirmPasswordIsRequired => 'Confirmation requise';
  @override
  String get passwordIsRequired => 'Mot de passe requis';
  @override
  String get contactNumberIsRequired => 'Téléphone requis';
  @override
  String get lblSwipeLeftToEdit => 'Balayez vers la gauche pour modifier/supprimer';
  @override
  String get lblNoEncounterFoundAtYourClinic =>
      'Aucune consultation trouvée dans votre clinique';
  @override
  String get lblAvailableAtClinics => 'Disponible dans les cliniques';
  @override
  String get lblClinicsSelected => 'Cliniques sélectionnées';
  @override
  String get lblClinicsAvailable => 'Cliniques disponibles';
  @override
  String get lblSelectRole => 'Sélectionner un rôle';
  @override
  String get lblPwdDoesNotMatch => 'Les mots de passe ne correspondent pas';
  @override
  String get lblSelectPaymentMethod => 'Sélectionner un paiement';
  @override
  String get lblAmount => 'Montant';
  @override
  String get lblPaymentId => 'ID de paiement';
  @override
  String get lblPaymentMethod => 'Moyen de paiement';
  @override
  String get lblVPA => 'VPA';
  @override
  String get lblCardId => 'ID carte';
  @override
  String get lblTransactionId => 'ID transaction';
  @override
  String get lblReportUpdatedSuccessfully => 'Rapport mis à jour';
  @override
  String get lblNoPrescriptionFound => 'Aucune ordonnance';
  @override
  String get lblBookAppointment => 'Prendre rendez-vous';
  @override
  String get lblNoNotesFound => 'Aucune note';
  @override
  String get lblNoObservationsFound => 'Aucune observation';
  @override
  String get lblNoProblemFound => 'Aucun problème';
  @override
  String get lblDoYouWantToUpdateEncounter => 'Mettre à jour la consultation ?';
  @override
  String get lblDoYouWantToAddEncounter => 'Ajouter une consultation ?';
  @override
  String get lblDoYouWantToUpdateYourDetails =>
      'Mettre à jour vos informations ?';
  @override
  String get lblNoBillsFound => 'Aucune facture';
  @override
  String get lblDoYouWantToDeleteProblem => 'Supprimer ce problème ?';
  @override
  String get lblDoYouWantToDeleteObservation => 'Supprimer cette observation ?';
  @override
  String get lblDoYouWantToDeleteNote => 'Supprimer cette note ?';
  @override
  String get lblDoYouWantToDeleteDoctor => 'Supprimer ce médecin ?';
  @override
  String get lblLoginSuccessfullyAsAPatient => 'Connecté en tant que patient';
  @override
  String get lblLoginSuccessfullyAsAReceptionist =>
      'Connecté en tant que réceptionniste';
  @override
  String get lblLoginSuccessfullyAsADoctor => 'Connecté en tant que médecin';
  @override
  String get lblSelectEncounterDate => 'Choisir la date de consultation';
  @override
  String get lblSelectReportDate => 'Choisir la date du rapport';
  @override
  String get lblSelectBirthDate => 'Choisir la date de naissance';
  @override
  String get lblDoYouWantToLogout => 'Se déconnecter ?';
  @override
  String get lblDoYouWantToDeleteAccountPermanently =>
      'Supprimer définitivement le compte ?';
  @override
  String get lblDoYouWantToDeleteSession => 'Supprimer cette session ?';
  @override
  String get lblDoYouWantToAddSession => 'Ajouter cette session ?';
  @override
  String get lblDoYouWantToUpdateSession => 'Mettre à jour cette session ?';
  @override
  String get lblDoYouWantToChangeThePassword => 'Changer le mot de passe ?';
  @override
  String get lblDoYouWantToDeleteReview => 'Supprimer cet avis ?';
  @override
  String get lblDoYouWantToDeleteHolidayOf => 'Supprimer ce jour de congé ?';
  @override
  String get lblDoYouWantToDeleteService => 'Supprimer ce service ?';
  @override
  String get lblDoYouWantToUpdateService => 'Mettre à jour ce service ?';
  @override
  String get lblDoYouWantToAddNewService => 'Ajouter un service ?';
  @override
  String get lblDoYouWantToUpdateAppointmentOf =>
      'Mettre à jour le rendez-vous ?';
  @override
  String get lblDoYouWantToAddNewAppointmentFor => 'Ajouter un rendez-vous ?';
  @override
  String get lblDoYouWantToDeleteAppointmentOf =>
      'Supprimer ce rendez-vous ?';
  @override
  String get lblDoYouWantToDeleteReport => 'Supprimer ce rapport ?';
  @override
  String get lblDoYouWantToUpdateReport => 'Mettre à jour ce rapport ?';
  @override
  String get lblDoYouWantToAddReport => 'Ajouter un rapport ?';
  @override
  String get lblDoYouWantToDeletePrescription => 'Supprimer cette ordonnance ?';
  @override
  String get lblDoYouWantToUpdatePrescription => 'Mettre à jour l’ordonnance ?';
  @override
  String get lblDoYouWantToAddPrescription => 'Ajouter une ordonnance ?';
  @override
  String get lblDoYouWantToSwitchYourClinicTo =>
      'Changer votre clinique active ?';
  @override
  String get lblDoYouWantToUpdatePatientDetails =>
      'Mettre à jour les infos patient ?';
  @override
  String get lblDoYouWantToSaveNewPatientDetails =>
      'Enregistrer ce nouveau patient ?';
  @override
  String get lblDoYouWantToUpdateDoctorDetails =>
      'Mettre à jour les infos médecin ?';
  @override
  String get lblDoYouWantToSaveNewDoctorDetails =>
      'Enregistrer ce nouveau médecin ?';
  @override
  String get lblDoYouWantToDeleteEncounterDetailsOf =>
      'Supprimer ces détails de consultation ?';
  @override
  String get lblDoYouWantToCheckoutAppointment =>
      'Clôturer ce rendez-vous ?';

  @override
  String get lblTermsConditionSubTitle =>
      'Veuillez lire ces informations importantes.';
  @override
  String get lblYears => 'Années';
  @override
  String get lblDeleteAccountSubTitle =>
      'Confirmez la suppression de votre compte ?';
  @override
  String get lblThemeSubTitle => 'Personnalisez les couleurs de l’app';
  @override
  String get lblHelpAndSupportSubTitle => 'Nous sommes là pour vous aider';
  @override
  String get lblRateUsSubTitle => 'Votre avis nous aide à nous améliorer';
  @override
  String get lblChangePasswordSubtitle => 'Modifiez votre mot de passe';
  @override
  String get lblNoArticlesFound => 'Aucun article trouvé';
  @override
  String get lblNoSessionAvailable => 'Aucune session disponible';
  @override
  String get lblTelemedServiceAvailable => 'Téléconsultation disponible';
  @override
  String get lblAvailableDoctor => 'Médecin disponible';
  @override
  String get lblAvailableDoctors => 'Médecins disponibles';
  @override
  String get lblWeekDaysDataNotFound => 'Non disponible';
  @override
  String get lblPleaseUploadReport => 'Téléversez un rapport';
  @override
  String get lblIncorrectPwd => 'Mot de passe incorrect';
  @override
  String get lblPleaseChoose =>
      'Veuillez choisir le statut / multi-sélection / télémed.';
  @override
  String get lblPatientList => 'Liste des patients';
  @override
  String get lblBillSwipe =>
      'Glissez vers la gauche pour modifier la quantité ou supprimer un poste';
  @override
  String get lblViewDoctorMsg => 'Appuyez pour voir le profil';
  @override
  String get lblMyAppointments => 'Mes rendez-vous';
  @override
  String get lblIsOnLeave => 'est en congé';
  @override
  String get lblEditHolidayRestriction => 'Modification non possible maintenant';
  @override
  String get lblNoAppointmentForThisDay =>
      "Aucun créneau de rendez-vous ce jour";
  @override
  String get lblDoctorsSelected => 'Médecins sélectionnés';
  @override
  String get lblDoctorAvailable => 'Médecin disponible';
  @override
  String get lblPending => 'En attente';
  @override
  String get lblPleaseTryAgainAfterSometimes =>
      'Réessayez un peu plus tard';
  @override
  String get lblTapToSelect => 'Appuyez pour sélectionner';
  @override
  String get lblDoctorTapMsg =>
      'Touchez un nom pour modifier les détails du service';
  @override
  String get lblCantFindClinicYouSearchedFor =>
      'Aucune clinique correspondante';
  @override
  String get lblCantFindDoctorYouSearchedFor => 'Aucun médecin correspondant';
  @override
  String get lblCantFindPatientYouSearchedFor => 'Aucun patient correspondant';
  @override
  String get lblCantFindServiceYouSearchedFor => 'Aucun service correspondant';
  @override
  String get lblNoActiveClinicAvailable => 'Toutes les cliniques sont fermées';
  @override
  String get lblRecheckPassword =>
      'Vérifiez le nouveau mot de passe et la confirmation';
  @override
  String get lblDoctorsAvailable => 'Médecins disponibles';
  @override
  String get lblSessionTapMsg => 'Appuyez sur une session pour modifier';
  @override
  String get lblHolidayTapMsg => 'Appuyez sur un congé pour modifier';
  @override
  String get lblYourRating => 'Votre note';
  @override
  String get lblSearchPatient => 'Rechercher un patient';
  @override
  String get lblStayNotified => 'Restez informé';
  @override
  String get lblNotificationSubTitle =>
      'Ne manquez aucune information importante';
  @override
  String get lblNotifications => 'Notifications';
  @override
  String get lblGoodAfternoon => 'Bon après-midi';
  @override
  String get lblGoodEvening => 'Bonsoir';
  @override
  String get lblGoodMorning => 'Bonjour';
  @override
  String get lblDr => 'Dr';
  @override
  String get lblNoActivePatientAvailable => 'Aucun patient actif';
  @override
  String get lblNoActiveServicesAvailable => 'Aucun service actif';
  @override
  String get lblNoActiveDoctorAvailable => 'Aucun médecin actif';
  @override
  String get lblSearchServices => 'Rechercher un service';
  @override
  String get lblSearchDoctor => 'Rechercher un médecin';
  @override
  String get lblSearchClinic => 'Rechercher une clinique';
  @override
  String get lblTapMsg => 'Appuyez sur le service pour modifier';

  // --- Onboarding ---
  @override
  String get lblWalkThroughTitle1 => 'Bienvenue';
  @override
  String get lblWalkThroughTitle2 => 'Trouvez un médecin';
  @override
  String get lblWalkThroughTitle3 => 'Gérez vos rendez-vous';
  @override
  String get lblWalkThroughTitle4 => 'Parlez au médecin';
  @override
  String get lblWalkThroughSubTitle1 =>
      'KiviCare : votre dossier de santé et vos rendez-vous, au même endroit.';
  @override
  String get lblWalkThroughSubTitle2 =>
      'Repérez facilement un médecin près de chez vous.';
  @override
  String get lblWalkThroughSubTitle3 =>
      'Planifiez et évitez les files d’attente.';
  @override
  String get lblWalkThroughSubTitle4 =>
      'Consultez en cabinet ou en vidéo en toute simplicité.';
  @override
  String get lblWalkThroughSkipButton => 'Passer';
  @override
  String get lblWalkThroughNextButton => 'Suivant';
  @override
  String get lblWalkThroughGetStartedButton => 'Commencer';

  // --- Auth ---
  @override
  String get lblSignIn => 'Se connecter';
  @override
  String get lblLogOut => 'Se déconnecter';
  @override
  String get lblEmail => 'E-mail';
  @override
  String get lblPassword => 'Mot de passe';
  @override
  String get lblOldPassword => 'Ancien mot de passe';
  @override
  String get lblNewPassword => 'Nouveau mot de passe';
  @override
  String get lblConfirmPassword => 'Confirmer le mot de passe';
  @override
  String get lblForgotPassword => 'Mot de passe oublié ?';
  @override
  String get lblSignUp => "S'inscrire";
  @override
  String get lblBasicDetails => 'Informations de base';
  @override
  String get lblOtherDetails => 'Autres informations';
  @override
  String get lblSubmit => 'Envoyer';
  @override
  String get lblFirstName => 'Prénom';
  @override
  String get lblLastName => 'Nom';
  @override
  String get lblContactNumber => 'Téléphone';
  @override
  String get lblDOB => 'Date de naissance';
  @override
  String get lblSelectBloodGroup => 'Groupe sanguin';
  @override
  String get lblAddress => 'Adresse';
  @override
  String get lblCity => 'Ville';
  @override
  String get lblCountry => 'Pays';
  @override
  String get lblPostalCode => 'Code postal';
  @override
  String get lblSettings => 'Paramètres';
  @override
  String get lblChangePassword => 'Changer le mot de passe';
  @override
  String get lblTermsAndCondition => 'Conditions générales';
  @override
  String get lblLanguage => 'Langue';
  @override
  String get lblAboutUs => 'À propos';
  @override
  String get lblRateUs => 'Noter l’application';
  @override
  String get lblSave => 'Enregistrer';
  @override
  String get lblDegree => 'Diplôme';
  @override
  String get lblUniversity => 'Université';
  @override
  String get lblYear => 'Année';
  @override
  String get lblSearch => 'Rechercher';
  @override
  String get lblCancel => 'Annuler';
  @override
  String get lblDoctor => 'Médecin';
  @override
  String get lblDescription => 'Description';
  @override
  String get lblPrescription => 'Ordonnance';
  @override
  String get lblFrequency => 'Fréquence';
  @override
  String get lblDuration => 'Durée';
  @override
  String get lblInstruction => 'Instruction';
  @override
  String get lblSignInToContinue => 'Bienvenue, connectez-vous à votre compte';
  @override
  String get lblNewMember => 'Pas encore de compte ?';
  @override
  String get lblDone => 'Terminé';
  @override
  String get lblSignUpAsPatient => 'Créer un compte KiviCare';
  @override
  String get lblAlreadyAMember => 'Déjà membre ?';
  @override
  String get lblLogin => 'Connexion';

  // --- Dashboard / Stats ---
  @override
  String get lblDashboard => 'Tableau de bord';
  @override
  String get lblAppointments => 'Rendez-vous';
  @override
  String get lblPatients => 'Patients';
  @override
  String get lblTotalPatient => 'Patients au total';
  @override
  String get lblTotalVisitedPatients => 'Patients vus';
  @override
  String get lblTotalAppointment => 'Total rendez-vous';
  @override
  String get lblTotalVisitedAppointment => 'Rendez-vous effectués';
  @override
  String get lblTodayAppointments => "Rendez-vous d'aujourd’hui";
  @override
  String get lblTotalTodayAppointments => 'Total du jour';
  @override
  String get lblWeeklyAppointments => 'Rendez-vous hebdomadaires';
  @override
  String get lblTodaySAppointments => 'Vos rendez-vous du jour';
  @override
  String get lblAppointmentDeleted => 'Rendez-vous supprimé';
  @override
  String get lblDate => 'Date';
  @override
  String get lblConfirmAppointment => 'Confirmer le rendez-vous';
  @override
  String get lblSelectDateTime => 'Sélectionner date & heure';
  @override
  String get lblSelectServices => 'Sélectionner les services';
  @override
  String get lblBook => 'Réserver';
  @override
  String get lblNoAppointmentForToday => "Aucun rendez-vous aujourd’hui";
  @override
  String get lblCheckIn => 'Arrivée';
  @override
  String get lblCheckOut => 'Départ';
  @override
  String get lblAreDeleteAppointment =>
      'Supprimer ce rendez-vous ?';
  @override
  String get lblYouCannotStart => 'Vous ne pouvez pas démarrer';
  @override
  String get lblPrescriptionAdded => 'Ordonnance ajoutée';
  @override
  String get lblUpdatedSuccessfully => 'Mise à jour effectuée';
  @override
  String get lblPrescriptionDeleted => 'Ordonnance supprimée';
  @override
  String get lblAddPrescription => 'Ajouter une ordonnance';
  @override
  String get lblName => 'Nom';
  @override
  String get lblPrescriptionDurationIsRequired =>
      'Durée de l’ordonnance requise';
  @override
  String get lblDurationInDays => 'Durée (jours)';
  @override
  String get lblAddNewPrescription => 'Nouvelle ordonnance';
  @override
  String get lblEditPrescriptionDetail => 'Modifier l’ordonnance';
  @override
  String get lblDays => 'jours';
  @override
  String get lblAppointmentIsConfirmed => 'Rendez-vous confirmé';
  @override
  String get lblThanksForBooking => 'Merci pour votre réservation';
  @override
  String get lblAppointmentConfirmation =>
      'Nous vous confirmons votre rendez-vous';
  @override
  String get lblNoPatientFound => 'Aucun patient trouvé';
  @override
  String get lblDeleteRecordConfirmation =>
      'Supprimer tous les enregistrements de';
  @override
  String get lblAllRecordsFor => 'Tous les enregistrements pour';
  @override
  String get lblAreDeleted => 'ont été supprimés';
  @override
  String get lblEncounters => 'Consultations';
  @override
  String get lblDelete => 'Supprimer';
  @override
  String get lblMale => 'Homme';
  @override
  String get lblFemale => 'Femme';
  @override
  String get lblOther => 'Autre';
  @override
  String get lblMinimumAgeRequired => 'Âge minimum : 18 ans';
  @override
  String get lblCurrentAgeIs => 'Votre âge est';
  @override
  String get lblGender1 => 'Sexe';
  @override
  String get lblSpecialization => 'Spécialité';
  @override
  String get lblExperience => 'Expérience';

  // --- API / Démo Zoom ---
  @override
  String get lblAPIKeyCannotBeEmpty => "La clé API est requise";
  @override
  String get lblAPIKey => 'Clé API';
  @override
  String get lblAPISecret => 'Secret API';
  @override
  String get lblAPISecretCannotBeEmpty => "Le secret API est requis";
  @override
  String get lblSignUpOrSignIn => 'Inscrivez-vous ou connectez-vous :';
  @override
  String get lbl1 => '1';
  @override
  String get lbl2 => '2';
  @override
  String get lblClickOnDevelopButton =>
      'Cliquez sur “Develop” puis “Build App”';
  @override
  String get lblCreateApp => 'Créer une app';
  @override
  String get lb13 => '3';
  @override
  String get lblChooseAppTypeToJWT => 'Choisir le type JWT';
  @override
  String get lbl4 => '4';
  @override
  String get lblMandatoryMessage =>
      'Renseignez les champs obligatoires. La clé et le secret s’affichent ensuite.';
  @override
  String get lbl5 => '5';
  @override
  String get lblCopyAndPasteAPIKey =>
      'Copiez la clé et le secret API ici puis Enregistrer';

  // --- Consultation / Encounter ---
  @override
  String get lblEncounterClosed => 'Consultation clôturée';
  @override
  String get lblChangedTo => 'Changé en';
  @override
  String get lblEncounterWillBeClosed => 'La consultation sera clôturée';
  @override
  String get lblEncounterDate => 'Date de consultation';
  @override
  String get lblClinicName => 'Clinique';
  @override
  String get lblDoctorName => 'Médecin';
  @override
  String get lblDesc => 'Description';
  @override
  String get lblAddNewQualification => 'Ajouter une qualification';
  @override
  String get lblAddBillItem => 'Ajouter un poste';
  @override
  String get lblServiceIsRequired => 'Service requis';
  @override
  String get lblOne => '1';
  @override
  String get lblQuantity => 'Quantité';
  @override
  String get lblTotal => 'Total';
  @override
  String get lblEncounterUpdated => 'Consultation mise à jour';
  @override
  String get lblAddNewEncounter => 'Nouvelle consultation';
  @override
  String get lblEditEncounterDetail => 'Modifier la consultation';

  // --- Congés / planning ---
  @override
  String get lblHolidayOf => 'Congés';
  @override
  String get lblModuleIsRequired => 'Module requis';
  @override
  String get lblScheduleDate => 'Date planifiée';
  @override
  String get lblLeaveFor => 'Congé pour';
  @override
  String get lblAddHoliday => 'Ajouter un congé';
  @override
  String get lblEditHolidays => 'Modifier les congés';
  @override
  String get lblNewPatientAddedSuccessfully => 'Nouveau patient ajouté';
  @override
  String get lblPatientDetailUpdatedSuccessfully =>
      'Patient mis à jour';
  @override
  String get lblBasicInformation => 'Infos de base';
  @override
  String get lblFirstNameIsRequired => 'Prénom requis';
  @override
  String get lblLastNameIsRequired => 'Nom requis';
  @override
  String get lblEmailIsRequired => 'E-mail requis';
  @override
  String get lblAddNewPatient => 'Ajouter un patient';
  @override
  String get lblEditPatientDetail => 'Modifier le patient';
  @override
  String get lblCategory => 'Catégorie';
  @override
  String get lblCharges => 'Frais';
  @override
  String get lblSelectDoctor => 'Sélectionner un médecin';
  @override
  String get lblAddService => 'Ajouter un service';
  @override
  String get lblEditService => 'Modifier le service';
  @override
  String get lblSelectWeekdays => 'Sélectionner les jours';
  @override
  String get lblSessionAddedSuccessfully => 'Session ajoutée';
  @override
  String get lblSessionUpdatedSuccessfully => 'Session mise à jour';
  @override
  String get lblSessionDeleted => 'Session supprimée';
  @override
  String get lblPleaseSelectTime => 'Sélectionnez une heure';
  @override
  String get lblStartAndEndTimeNotSame =>
      'Début et fin ne peuvent être identiques';
  @override
  String get lblTimeNotBeforeMorningStartTime =>
      "L'heure ne peut être avant l’ouverture du matin";
  @override
  String get lblTimeNotBeforeEveningStartTime =>
      "L'heure ne peut être avant l’ouverture du soir";
  @override
  String get lblTimeShouldBeInMultiplyOf5 =>
      'La durée doit être multiple de 5';
  @override
  String get lblTimeSlotInMinute => 'Créneau (minutes)';
  @override
  String get lblTimeSlotRequired => 'Créneau requis';
  @override
  String get lblWeekDays => 'Jours de semaine';
  @override
  String get lblMorningSession => 'Matin';
  @override
  String get lblStartTime => 'Début';
  @override
  String get lblEndTime => 'Fin';
  @override
  String get lblSelectStartTimeFirst => 'Choisissez d’abord l’heure de début';
  @override
  String get lblEveningSession => 'Soir';
  @override
  String get lblAddSession => 'Ajouter une session';
  @override
  String get lblEditSession => 'Modifier la session';

  // --- Facture / PDF ---
  @override
  String get lblInvoiceDetail => 'Détails de facture';
  @override
  String get lblClinicDetails => 'Infos clinique';
  @override
  String get lblPatientDetails => 'Infos patient';
  @override
  String get lblServices => 'Services';
  @override
  String get lblDiscount => 'Remise';
  @override
  String get lblAmountDue => 'Montant dû';
  @override
  String get lblInvoiceId => 'ID facture';
  @override
  String get lblCreatedAt => 'Créée le';
  @override
  String get lblPaymentStatus => 'Paiement';
  @override
  String get lblPatientName => 'Nom du patient';
  @override
  String get lblGender2 => 'Sexe';
  @override
  String get lblSRNo => 'N°';
  @override
  String get lblItemName => 'Désignation';
  @override
  String get lblPRICE => 'PRIX';
  @override
  String get lblQUANTITY => 'QTÉ';
  @override
  String get lblTOTAL => 'TOTAL';
  @override
  String get lblServicesSelected => 'Services sélectionnés';
  @override
  String get lblPatientNameIsRequired => 'Nom du patient requis';
  @override
  String get lblDoctorSessions => 'Toutes les sessions';
  @override
  String get lblEditProfile => 'Modifier le profil';
  @override
  String get lblQualification => 'Qualifications';
  @override
  String get lblEncounterDashboard => 'Tableau de bord consultation';
  @override
  String get lblEncounterDetails => 'Détails de consultation';
  @override
  String get lblProblems => 'Problèmes';
  @override
  String get lblObservation => 'Observations';
  @override
  String get lblNotes => 'Notes';
  @override
  String get lblBillAddedSuccessfully => 'Poste ajouté';
  @override
  String get lblAtLeastSelectOneBillItem =>
      'Sélectionnez au moins un poste de facture';
  @override
  String get lblGenerateInvoice => 'Générer la facture';
  @override
  String get lblSERVICES => 'SERVICES';
  @override
  String get lblPayableAmount => 'À payer';
  @override
  String get lblSaveAndCloseEncounter => 'Enregistrer et clôturer';
  @override
  String get lblHolidays => 'Congés';
  @override
  String get lblClinic => 'Clinique';
  @override
  String get lblAfter => 'Après';
  @override
  String get lblWasOffFor => 'Était en congé pendant';
  @override
  String get lblYourHolidays => 'Vos congés';
  @override
  String get lblNoServicesFound => 'Aucun service trouvé';
  @override
  String get lblNoDataFound => 'Aucune donnée';
  @override
  String get lblOn => 'Activé';
  @override
  String get lblOff => 'Désactivé';
  @override
  String get lblNoAppointments => 'Aucun rendez-vous';
  @override
  String get lblSelectClinic => 'Sélectionner la clinique';
  @override
  String get lblEnter => 'Entrer';
  @override
  String get lblFieldIsRequired => 'Champ requis';
  @override
  String get lblHoliday => 'Jour férié';
  @override
  String get lblClinicHoliday => 'Jour férié (clinique)';
  @override
  String get lblSessions => 'Sessions';
  @override
  String get lblClinicSessions => 'Sessions de la clinique';
  @override
  String get lblClinicServices => 'Services de la clinique';
  @override
  String get lblVideoConsulting => 'Consultation vidéo';
  @override
  String get lblYourEncounters => 'Vos consultations';
  @override
  String get lblSelectTheme => 'Thème';
  @override
  String get lblChooseYourAppTheme => 'Choisissez le thème';
  @override
  String get lblClinicTAndC => 'Conditions de la clinique';
  @override
  String get lblAboutKiviCare => 'À propos de KiviCare';
  @override
  String get lblYourReviewCounts => 'Votre avis compte';
  @override
  String get lblAppVersion => "Version de l'app";
  @override
  String get lblHelpAndSupport => 'Aide & support';
  @override
  String get lblSubmitYourQueriesHere => 'Envoyez vos questions ici';
  @override
  String get lblLogout => 'Se déconnecter';
  @override
  String get lblThanksForVisiting => 'Merci de votre visite';
  @override
  String get lblGeneralSetting => 'Paramètres généraux';
  @override
  String get lblAppSettings => "Réglages de l'app";
  @override
  String get lblVersion => 'Version';
  @override
  String get lblContactUs => 'Contactez-nous';
  @override
  String get lblAboutUsDes =>
      'KiviCare aide à gérer rendez-vous et dossiers médicaux pour médecins et patients.';
  @override
  String get lblPurchase => 'Acheter';
  @override
  String get lblDemoUserPasswordNotChanged =>
      'Le mot de passe du compte démo ne peut être modifié';
  @override
  String get lblPasswordLengthMessage =>
      'Le mot de passe doit être plus long que';
  @override
  String get lblBothPasswordMatched =>
      'Le nouveau mot de passe et la confirmation doivent correspondre';
  @override
  String get lblVisited => 'Effectué';
  @override
  String get lblBooked => 'Réservé';
  @override
  String get lblCompleted => 'Terminé';
  @override
  String get lblCancelled => 'Annulé';
  @override
  String get lblYes => 'Oui';
  @override
  String get lblPayment => 'Paiement WooCommerce';
  @override
  String get lblError => 'Erreur';
  @override
  String get lblRegisteredSuccessfully => 'Inscription réussie';
  @override
  String get lblBirthDateIsRequired => 'Date de naissance requise';
  @override
  String get lblBloodGroupIsRequired => 'Groupe sanguin requis';
  @override
  String get lblAppointmentBookedSuccessfully =>
      'Rendez-vous réservé. Vérifiez votre e-mail.';
  @override
  String get lblSelectedSlots => 'Créneaux sélectionnés';
  @override
  String get lblSession => 'Session';
  @override
  String get lblTimeSlotIsBooked => 'Créneau déjà réservé';
  @override
  String get lblAppointmentDate => 'Date du rendez-vous';
  @override
  String get lblViewDetails => 'Voir';
  @override
  String get lblDoctorDetails => 'Détails du médecin';
  @override
  String get lblAreYouWantToDeleteDoctor => 'Supprimer ce médecin ?';
  @override
  String get lblDoctorDeleted => 'Médecin supprimé';
  @override
  String get lblYearsExperience => 'an';
  @override
  String get lblYearsOfExperience => "années d’expérience";
  @override
  String get lblAvailableOn => 'Disponible ces jours :';
  @override
  String get lblHealth => 'Santé';
  @override
  String get lblReadMore => 'En savoir plus';
  @override
  String get lblReadLess => 'Réduire';
  @override
  String get lblBy => 'par';
  @override
  String get lblNews => 'Actualités';
  @override
  String get lblUpcomingAppointments => 'Rendez-vous à venir';
  @override
  String get lblViewAll => 'Tout voir';
  @override
  String get lblTopDoctors => 'Médecins recommandés';
  @override
  String get lblExpertsHealthTipsAndAdvice =>
      'Conseils santé de spécialistes';
  @override
  String get lblArticlesByHighlyQualifiedDoctors =>
      'Articles rédigés par des médecins qualifiés.';
  @override
  String get lblChooseYourDoctor => 'Choisissez votre médecin';
  @override
  String get lblAddNewAppointment => 'Nouveau rendez-vous';
  @override
  String get lblSelectOneDoctor => 'Sélectionnez un médecin';
  @override
  String get lblClinicDoctor => 'Clinique';
  @override
  String get lblPatientDashboard => 'Accueil patient';
  @override
  String get lblFeedsAndArticles => 'Flux & articles';
  @override
  String get lblPatientsEncounter => 'Consultations des patients';
  @override
  String get lblNoEncounterFound => 'Aucune consultation trouvée';
  @override
  String get lblSelectSpecialization => 'Choisir une spécialité';
  @override
  String get lblAddDoctorProfile => 'Ajouter un profil médecin';
  @override
  String get lblMedicalReport => 'Rapport médical';
  @override
  String get lblNewMedicalReport => 'Nouveau rapport médical';
  @override
  String get lblRememberMe => 'Se souvenir de moi';
  @override
  String get lblChooseYourClinic => 'Choisissez votre clinique';
  @override
  String get lblAll => 'Tous';
  @override
  String get lblLatest => 'Récents';
  @override
  String get lblMon => 'Lun';
  @override
  String get lblTue => 'Mar';
  @override
  String get lblWed => 'Mer';
  @override
  String get lblThu => 'Jeu';
  @override
  String get lblFri => 'Ven';
  @override
  String get lblSat => 'Sam';
  @override
  String get lblSun => 'Dim';
  @override
  String get lblNoReportWasSelected => 'Aucun rapport sélectionné';
  @override
  String get lblAddReportScreen => 'Ajouter un rapport';
  @override
  String get lblDateCantBeNull => 'La date est requise';
  @override
  String get lblUploadReport => 'Téléverser un rapport';
  @override
  String get lblLight => 'Clair';
  @override
  String get lblDark => 'Sombre';
  @override
  String get lblSystemDefault => 'Système';
  @override
  String get lblNA => 'N/A';
  @override
  String get lblAddedNewEncounter => 'Consultation ajoutée';
  @override
  String get lblCantEditDate =>
      'Impossible de modifier une date déjà passée';
  @override
  String get lblNoTitle => 'Sans titre';
  @override
  String get lblSelectOneClinic => 'Sélectionnez une clinique';
  @override
  String get lblPast => 'Passé';
  @override
  String get lblAddMedicalReport => 'Ajouter un rapport';
  @override
  String get lblSendPrescriptionOnMail => 'Envoyer l’ordonnance par e-mail';
  @override
  String get lblFilesSelected => 'Fichier(s) sélectionné(s)';
  @override
  String get lblService => 'Service';
  @override
  String get lblTime => 'Heure';
  @override
  String get lblAppointmentSummary => 'Récapitulatif';
  @override
  String get lblEncounter => 'Consultation';
  @override
  String get lblMedicalReports => 'Rapports';
  @override
  String get lblConnectedWith => 'Connecté avec';
  @override
  String get lblContact => 'Contact';
  @override
  String get lblQrScanner => 'Scanner QR';
  @override
  String get lblLoginSuccessfully => 'Connexion réussie';
  @override
  String get lblWrongUser => 'Utilisateur incorrect';
  @override
  String get lblMorning => 'Matin';
  @override
  String get lblEvening => 'Soir';
  @override
  String get lblShare => 'Partager';
  @override
  String get lblNoMatch => 'Aucun résultat';
  @override
  String get lblNoDataSubTitle =>
      'Aucun élément ne correspond à votre recherche';
  @override
  String get lblEdit => 'Modifier';
  @override
  String get lblSwipeMassage => 'Glissez pour modifier ou supprimer';
  @override
  String get lblReachUsMore => 'Nous contacter';
  @override
  String get lblAddressDetail => "Détails d’adresse";
  @override
  String get lblChangeYourClinic => 'Changer de clinique';
  @override
  String get lblYourBills => 'Vos factures';
  @override
  String get lblYourReports => 'Vos rapports';
  @override
  String get lblBillRecords => 'Historique des factures';
  @override
  String get lblMyBills => 'Mes factures';
  @override
  String get lblRevenue => 'Recettes';
  @override
  String get lblBuyIt => 'Acheter';
  @override
  String get lblTryIt => 'Essayer';
  @override
  String get lblYouAreJustOneStepAwayFromHavingAHandsOnBackendDemo =>
      'Plus qu’une étape pour accéder à la démo.';
  @override
  String get lblChooseYourRole => 'Choisissez votre rôle';
  @override
  String get lblEnterYourEmailAddressAsWellAsTheTemporaryLink =>
      'Entrez votre e-mail et le lien temporaire';
  @override
  String get lblClickOnThatAndScanItFromTheApp =>
      'Cliquez puis scannez depuis l’app';
  @override
  String get lblYouWillSeeAQRForAppOptionOnTheRightHandCorner =>
      'Un QR “App” apparaît en haut à droite';
  @override
  String get lblEnjoyTheFlawlessKivicareSystemWithEase =>
      'Profitez du système KiviCare en toute simplicité.';
  @override
  String get lblCamera => 'Appareil photo';
  @override
  String get lblGallery => 'Galerie';
  @override
  String get lblRemoveImage => 'Supprimer l’image';
  @override
  String get lblCanNotBeEmpty => 'Ne peut pas être vide';
  @override
  String get lblNoConnection => 'Pas de connexion';
  @override
  String get lblYourInternetConnectionWasInterrupted =>
      'La connexion Internet a été interrompue';
  @override
  String get lblPlease => 'Veuillez';
  @override
  String get lblRetry => 'Réessayer';
  @override
  String get lblAfternoon => 'Après-midi';
  @override
  String get lblGood => 'Bon';
  @override
  String get lblNight => 'Nuit';
  @override
  String get lblNoSlotAvailable => 'Aucun créneau disponible';
  @override
  String get lblPleaseChooseAnotherDay => 'Choisissez un autre jour';
  @override
  String get lblPleaseCloseTheEncounterToCheckoutPatient =>
      'Clôturez la consultation pour finaliser';
  @override
  String get lblRemove => 'Retirer';
  @override
  String get lblAResetPasswordLinkWillBeSentToTheAboveEnteredEmailAddress =>
      'Un lien de réinitialisation sera envoyé à cet e-mail';
  @override
  String get lblEnterYourEmailAddress => 'Entrez votre e-mail';
  @override
  String get lblHowToGenerateQRCode => 'Comment générer un QR code ?';
  @override
  String get lblStepsToGenerateQRCode => 'Étapes pour générer le QR';
  @override
  String get lblOpenTheDemoUrlInWeb => 'Ouvrez l’URL de démo';
  @override
  String get lblMore => 'Plus';
  @override
  String get lblRatingsAndReviews => 'Notes et avis';
  @override
  String get lblViewFile => 'Voir le fichier';
  @override
  String get lblLoading => 'Chargement…';
  @override
  String get lblAnErrorOccurredWhileCheckingInternetConnectivity =>
      'Erreur lors de la vérification de la connexion';
  @override
  String get lblBloodGroup => 'Groupe sanguin';
  @override
  String get lblChooseAction => 'Choisir une action';
  @override
  String get lblConnecting => 'Connexion…';
  @override
  String get lblMyClinic => 'Ma clinique';
  @override
  String get lblMyReports => 'Mes rapports';
  @override
  String get lblNoReviewsFound => 'Aucun avis';
  @override
  String get lblPleaseCheckYourNumber => 'Vérifiez votre numéro';
  @override
  String get lblYourReviews => 'Vos avis';
  @override
  String get lblConnected => 'Connecté';
  @override
  String get lblNetworkStatus => 'État du réseau';
  @override
  String get lblOffline => 'Hors ligne';
  @override
  String get lblUnknown => 'Inconnu';
  @override
  String get lblSelectAppointmentDate => 'Choisir la date';
  @override
  String get lblScanToTest => 'Scanner pour tester';
  @override
  String get lblPleaseSelectPaymentStatus => 'Sélectionnez un statut de paiement';
  @override
  String get lblWhatYourCustomersSaysAboutYou =>
      'Ce que vos patients disent de vous';
  @override
  String get lblFriday => 'Vendredi';
  @override
  String get lblMonday => 'Lundi';
  @override
  String get lblSaturday => 'Samedi';
  @override
  String get lblSunday => 'Dimanche';
  @override
  String get lblThursday => 'Jeudi';
  @override
  String get lblTuesday => 'Mardi';
  @override
  String get lblWednesday => 'Mercredi';
  @override
  String get lblChange => 'Changer';
  @override
  String get lblChangingStatusFrom => 'Changement de statut :';
  @override
  String get lblPleaseSelectDoctor => 'Sélectionnez un médecin';
  @override
  String get lblClose => 'Fermer';
  @override
  String get lblAllTheAppointmentOnSelectedDateWillBeCancelled =>
      'Tous les rendez-vous à cette date seront annulés.';

  // --- Mois abrégés ---
  @override
  String get lblApr => 'Avr';
  @override
  String get lblArabic => 'Arabe';
  @override
  String get lblAug => 'Aoû';
  @override
  String get lblDec => 'Déc';
  @override
  String get lblEnglish => 'Anglais';
  @override
  String get lblFeb => 'Fév';
  @override
  String get lblFrench => 'Français';
  @override
  String get lblGerman => 'Allemand';
  @override
  String get lblHindi => 'Hindi';
  @override
  String get lblJan => 'Jan';
  @override
  String get lblJul => 'Juil';
  @override
  String get lblJun => 'Juin';
  @override
  String get lblMar => 'Mar';
  @override
  String get lblMay => 'Mai';
  @override
  String get lblNov => 'Nov';
  @override
  String get lblOct => 'Oct';
  @override
  String get lblSep => 'Sep';

  // --- Datation ---
  @override
  String get lblToday => "Aujourd'hui";
  @override
  String get lblTomorrow => 'Demain';
  @override
  String get lblYesterday => 'Hier';

  // --- Qualifications / états ---
  @override
  String get lblNoQualificationsFound => 'Aucune qualification';
  @override
  String get lblActive => 'Actif';
  @override
  String get lblInActive => 'Inactif';
  @override
  String get lblOpen => 'Ouvert';
  @override
  String get lblPaid => 'Payé';
  @override
  String get lblUnPaid => 'Non payé';
  @override
  String get lblComplete => 'Terminé';
  @override
  String get lblClosed => 'Fermé';
  @override
  String get lblChooseYourFavouriteClinic => 'Choisissez votre clinique';
  @override
  String get lblAvailableSession => 'Sessions disponibles';
  @override
  String get lblGetYourAllBillsHere => 'Historique de toutes les factures';
  @override
  String get lblServicesYouProvide => 'Vos services';
  @override
  String get lblYourAllEncounters => 'Toutes vos consultations';
  @override
  String get lblScheduledHolidays => 'Congés planifiés';
  @override
  String get lblNotSelected => 'Non sélectionné';
  @override
  String get lblStatus => 'Statut';
  @override
  String get lblMultipleSelection => 'Multi-sélection';
  @override
  String get lblAdded => 'Ajouté';
  @override
  String get lblAddedSuccessfully => 'Ajout réussi';
  @override
  String get lblInvalidURL => 'URL invalide';
  @override
  String get lblMedicalHistoryHasBeen => 'Antécédents médicaux :';
  @override
  String get lblReport => 'Rapport';
  @override
  String get lblSuccessfully => 'avec succès';
  @override
  String get lblInvalidDayOfMonth => 'Jour du mois invalide';
  @override
  String get lblConnectionReEstablished => 'Connexion rétablie';
  @override
  String get lblToMobileData => 'aux données mobiles';
  @override
  String get lblToWifi => 'au Wi-Fi';
  @override
  String get lblMultipleSelectionIsNotAvailableForThisService =>
      'La multi-sélection n’est pas disponible pour ce service';
  @override
  String get lblMultipleSelectionIsAvailableForThisService =>
      'La multi-sélection est disponible pour ce service';
  @override
  String get lblNote => 'Note';
  @override
  String get lblToCloseTheEncounterInvoicePaymentIsMandatory =>
      'Pour clôturer, le paiement de la facture est obligatoire';
  @override
  String get lblUpdate => 'Mettre à jour';
  @override
  String get lblBillDetails => 'Détails de facture';
  @override
  String get lblChooseImage => 'Choisir une image';

  // --- Mois complets ---
  @override
  String get lblApril => 'Avril';
  @override
  String get lblAugust => 'Août';
  @override
  String get lblDecember => 'Décembre';
  @override
  String get lblFebruary => 'Février';
  @override
  String get lblJanuary => 'Janvier';
  @override
  String get lblJuly => 'Juillet';
  @override
  String get lblJune => 'Juin';
  @override
  String get lblMarch => 'Mars';
  @override
  String get lblMonthly => 'Mensuel';
  @override
  String get lblNovember => 'Novembre';
  @override
  String get lblOctober => 'Octobre';
  @override
  String get lblSeptember => 'Septembre';
  @override
  String get lblWeekly => 'Hebdomadaire';
  @override
  String get lblYearly => 'Annuel';

  // --- Signature / dessin ---
  @override
  String get lblChangeSignature => 'Changer la signature';
  @override
  String get lblClear => 'Effacer';
  @override
  String get lblUndo => 'Annuler';
  @override
  String get lblSignature => 'Signature';
  @override
  String get lblAdd => 'Ajouter';
  @override
  String get lblSelectYearOfGraduation => 'Année de diplôme';
  @override
  String get lblSelect => 'Sélectionner';

  // --- Mot de passe / sécurité ---
  @override
  String get lblPayBill => 'Payer';
  @override
  String get lblPleaseCheckYourEmailInboxToSetNewPassword =>
      'Vérifiez votre boîte mail pour définir un nouveau mot de passe';
  @override
  String get lblReview => 'Avis';
  @override
  String get lblBillingRecords => 'Historique de facturation';
  @override
  String get lblAppointmentCount => 'Nombre de rendez-vous';
  @override
  String get lblNoRecordsFound => 'Aucun enregistrement';
  @override
  String get lblNoAppointmentsFound => 'Aucun rendez-vous';
  @override
  String get lblSelectPatient => 'Sélectionner un patient';
  @override
  String get lblNoReportsFound => 'Aucun rapport';
  @override
  String get lblSpecialities => 'Spécialités';
  @override
  String get lblKnowWhatYourPatientsSaysAboutYou =>
      'Découvrez les avis de vos patients';
  @override
  String get lblSchedule => 'Agenda';
  @override
  String get lblAllowMultiSelectionWhileBooking =>
      'Autoriser la multi-sélection lors de la réservation ?';
  @override
  String get lblNo => 'Non';
  @override
  String get lblSetStatus => 'Définir le statut';
  @override
  String get lblFound => 'trouvé';
  @override
  String get lblDUpdatedSuccessfully => 'Mise à jour réussie';
  @override
  String get lblDeletedSuccessfully => 'Supprimé avec succès';
  @override
  String get lblPleaseGiveYourRating => 'Donnez une note';
  @override
  String get lblEnterYourReviews => 'Écrivez votre avis (optionnel)';
  @override
  String get lblUnAuthorized =>
      'Action non autorisée pour le compte démo';
  @override
  String get lblIsThisATelemedService => 'Est-ce une téléconsultation ?';
  @override
  String get lblTelemedService => 'Autoriser la téléconsultation ?';
  @override
  String get lblDeleteAccount => 'Supprimer le compte';
  @override
  String get lblStayConnected => 'Rester connecté';
  @override
  String get lblConnectedToInternet => 'Connexion Internet rétablie';
  @override
  String get lblNoInternetMsg => 'Vous êtes hors ligne';
  @override
  String get lblDeleteAccountNote =>
      'Votre santé compte — conservez votre compte si possible';
  @override
  String get lblSomethingWentWrong => 'Un problème est survenu';
  @override
  String get lblInValidURL => 'URL de démo invalide';
  @override
  String get lblServiceName => 'NOM DU SERVICE';
  @override
  String get lblUpcoming => 'À venir';
  @override
  String get lblSwipeToView => 'Balayez pour voir les détails';
  @override
  String get lblSelectGender => 'Sélectionnez le sexe';
  @override
  String get lblSwipeLeftForInvoice =>
      'Balayez à gauche pour la facture et la consultation';
  @override
  String get lblSwipeLeftToDelete => 'Balayez à gauche pour supprimer';
  @override
  String get lblTotalService => 'Services au total';
  @override
  String get lblEnterValidDetails => 'Entrez des informations valides';
  @override
  String get lblCouldNotLaunch => "Impossible d’ouvrir l’application";
  @override
  String get lblIsRequired => 'est requis';
  @override
  String get lblOldAndNewPassword => 'Ancien = nouveau mot de passe';
  @override
  String get lblPasswordMustBeStrong =>
      '8+ caractères dont majuscules, chiffres et caractères spéciaux';
}
