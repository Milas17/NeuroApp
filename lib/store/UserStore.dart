
import 'package:kivicare_flutter/model/clinic_list_model.dart';
import 'package:kivicare_flutter/model/user_model.dart';
import 'package:kivicare_flutter/utils/constants/user_detail_keys.dart';
import 'package:mobx/mobx.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/constants.dart';

part 'UserStore.g.dart';

class UserStore = UserStoreBase with _$UserStore;

abstract class UserStoreBase with Store {
  @observable
  UserModel? userData;

  @observable
  String? userEmail;

  @observable
  String? userName;

  @observable
  String? termsEndConditionUrl;

  @observable
  String? profileImage;

  @observable
  int? userId;

  @observable
  String? firstName;

  @observable
  String? lastName;

  @observable
  String? userRole;

  @observable
  String? userDisplayName;

  @observable
  String? userMobileNumber;

  @observable
  String? userGender;

  @observable
  String? userClinicId;

  @observable
  String? userClinicName;

  @observable
  String? userClinicImage;

  @observable
  String? userClinicAddress;

  @observable
  String? userClinicStatus;

  @observable
  String? userDob;

  @observable
  Clinic? userClinic;

  @observable
  String userConsumerKey = '';

  @observable
  String userConsumerSecretKey = '';

  @observable
  bool isReportAdded = false;

  @action
  void setReportAdded(bool value) => isReportAdded = value;

  void setConsumerKey(String consumerKey) {
    userConsumerKey = consumerKey;
    setValue(UserDetailKeys.consumerKey, userConsumerKey, print: true);
  }

  void setConsumerSecret(String consumerSecretKey) {
    userConsumerSecretKey = consumerSecretKey;
    setValue(UserDetailKeys.consumerSecretKey, userConsumerSecretKey, print: true);
  }

  Future<void> setUserClinic(Clinic? clinicData) async {
    userClinic = clinicData;
  }

Future<void> loadUserClinicFromPrefs() async {
  userClinicId = getStringAsync(CLINIC_ID);
  userClinicName = getStringAsync(USER_CLINIC_NAME);
  userClinicStatus = getStringAsync(USER_CLINIC_STATUS);
  userClinicAddress = getStringAsync(USER_CLINIC_ADDRESS);
  userClinicImage = getStringAsync(USER_CLINIC_IMAGE);

  if (userClinicId.validate().isNotEmpty) {
    userClinic = Clinic(
      id: userClinicId,
      name: userClinicName,
      status: userClinicStatus,
      city: userClinicAddress, 
      profileImage: userClinicImage,
    );
  }
}




  @action
  Future<void> setUserData(UserModel value, {bool initialize = false}) async {
    userData = value;
  }
  @action
  Future<void> setUserName(String value, {bool initialize = false}) async {
    if (initialize) setValue(UserDetailKeys.userNameKey, value, print: true);
    userName = value;
  }

  @action
  Future<void> setUserEmail(String value, {bool initialize = false}) async {
    if (initialize) setValue(USER_EMAIL, value);
    userEmail = value;
  }

  @action
  Future<void> setUserClinicName(String value, {bool initialize = false}) async {
    if (initialize) setValue(USER_CLINIC_NAME, value);

    userClinicName = value;
  }

  @action
  Future<void> setTermsAndCondition(String value) async {
    termsEndConditionUrl = value;
  }

  @action
  Future<void> setUserClinicAddress(String value, {bool initialize = false}) async {
    if (initialize) setValue(USER_CLINIC_ADDRESS, value);

    userClinicAddress = value;
  }

  @action
  Future<void> setUserClinicStatus(String value, {bool initialize = false}) async {
    if (initialize) setValue(USER_CLINIC_STATUS, value);

    userClinicStatus = value;
  }

  @action
  Future<void> setUserClinicImage(String value, {bool initialize = false}) async {
    if (initialize) setValue(USER_CLINIC_IMAGE, value);

    userClinicImage = value;
  }

  @action
  Future<void> setUserDob(String value, {bool initialize = false}) async {
    if (initialize) setValue(USER_DOB, value);
    userDob = value;
  }

  @action
  Future<void> setUserProfile(String value, {bool initialize = false}) async {
    if (initialize) setValue(PROFILE_IMAGE, value);

    profileImage = value;
  }

  @action
  Future<void> setUserId(int value, {bool initialize = false}) async {
    if (initialize) setValue(USER_ID, value);
    userId = value;
  }

  @action
  Future<void> setFirstName(String value, {bool initialize = false}) async {
    if (initialize) setValue(FIRST_NAME, value);
    firstName = value;
  }

  @action
  Future<void> setLastName(String value, {bool initialize = false}) async {
    if (initialize) setValue(LAST_NAME, value);

    lastName = value;
  }

  @action
  Future<void> setRole(String value, {bool initialize = false}) async {
    if (initialize) setValue(USER_ROLE, value);

    userRole = value;
  }

  @action
  Future<void> setUserDisplayName(String value, {bool initialize = false}) async {
    if (initialize) setValue(USER_DISPLAY_NAME, value);

    userDisplayName = value;
  }

  @action
  Future<void> setUserMobileNumber(String value, {bool initialize = false}) async {
    if (initialize) setValue(USER_MOBILE, value);

    userMobileNumber = value;
  }

  @action
  Future<void> setUserGender(String value, {bool initialize = false}) async {
    if (initialize) setValue(USER_GENDER, value);
    userGender = value;
  }

  @action
  Future<void> setClinicId(String value, {bool initialize = false}) async {
    if (initialize) setValue(CLINIC_ID, value);

    userClinicId = value;
  }

  
}

