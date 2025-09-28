import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

/// Couleurs principales adaptées au site NeuroCareConnect
const primaryColor = Color(0xFF3F0DB7); // Violet principal du site
Color appPrimaryColor = primaryColor;

const appSecondaryColor = Color(0xFF1E1E1E); // Gris foncé
const primaryDarkColor = Color(0xff0a0909);

const telemedColor = Color(0xFF3F0DB7); // même violet pour la cohérence
const zoomColor = Color(0xFF0B5CFF); // bleu pour Zoom

const borderColor = Color(0xFFEBEBEB);
const cardColor = Color(0xFFFFFFFF);

/// Texte
const textPrimaryDarkColor = Color(0xFFFFFFFF);
const textSecondaryWhiteColor = Color(0xFFc7daeb);

const textPrimaryLightColor = Color(0xFF000000);
const textSecondaryLightColor = Color(0xFF575454);

/// Fonds
const scaffoldColorLight = Color(0xFFF9F9F9); // fond clair proche du site
const scaffoldColorDark = Color(0xFF0E1116);
const scaffoldSecondaryDark = Color(0xFF1C1F26);

const cardSelectedColor = Color(0xff3e3b3b);
const iconColor = Color(0xFF6E7990);

Color selectedColor = getColorFromHex('#e6ecfa');
const secondaryTxtColor = Color(0xFF6E7990);

/// Couleurs d'état (erreur, succès)
const errorBackGroundColor = Color(0xFFFFCDD2);
const errorTextColor = Color(0xFFE53935); // rouge vif

const successBackGroundColor = Color(0xFF242232);
const successTextColor = Color(0xFF23A359); // vert succès

const selectedColorDarkMode = Color(0xFFF4B4A4A);
Color selectedColorLightMode = getColorFromHex('#e6ecfa');

Color shimmerPrimaryBaseColor = primaryColor.withValues(alpha: 0.4);
Color shimmerSecondaryBaseColor = appSecondaryColor.withValues(alpha: 0.1);
Color shimmerLightBaseColor = primaryColor.withValues(alpha: 0.1);

/// Dark Mode
const ratingBarColor = Color(0xfff5c609);

/// Status des RDV
const activeStatusGreenColor = Color(0xFF23a359);
const inactiveStatusRedColor = Color(0xFFD0150F);

/// Couleurs pour barres de notation
const ratingBarRedColor = Color(0xFFE80000);
const ratingBarOrangeColor = Color(0xFFFF6200);
const ratingBarLightGreenColor = Color(0xFF23a359);

const signatureBackgroundColor = Color(0xFFDCDCDC);
const datePickerThemeColor = primaryColor; // violet
const progressIndicatorColor = Color(0xFF5CC16C);
const appointmentSlotEveningImageColor = Color(0xFFFF6433);

/// Status des commandes
const processingStatusColor = primaryColor;
const pendingStatusColor = Color(0xFFFF6433);
const onHoldStatusColor = Color(0xfff5c609);
const completedStatusColor = Color(0xFF23a359);
const refundedStatusColor = appSecondaryColor;
const failedStatusColor = Color(0xFF000000);
const cancelledStatusColor = Color(0xFFD0150F);
const trashStatusColor = Color(0xFF575454);

const wordpressWebStoreAppbarColor = Color(0xFF23282D);
