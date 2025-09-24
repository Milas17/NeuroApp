import 'package:kivicare_flutter/config.dart';
import 'package:kivicare_flutter/main.dart';
import 'package:kivicare_flutter/model/clinic_list_model.dart';
import 'package:kivicare_flutter/network/network_utils.dart';
import 'package:kivicare_flutter/utils/app_common.dart';
import 'package:kivicare_flutter/utils/cached_value.dart';
import 'package:kivicare_flutter/utils/constants.dart';
import 'package:nb_utils/nb_utils.dart';

Future<List<Clinic>> getClinicListAPI({
  String? searchString,
  required int page,
  bool? isAuthRequired,
  Function(bool)? lastPageCallback,
  required List<Clinic> clinicList,
}) async {
  if (!appStore.isConnectedToInternet) {
    return [];
  }

  List<String> params = [];
  if (searchString.validate().isNotEmpty) params.add('s=$searchString');
  if (isAuthRequired != null) {
    params.add('with_auth=$isAuthRequired');
  }

  ClinicListModel res = ClinicListModel.fromJson(
    await (handleResponse(await buildHttpResponse(getEndPoint(
      endPoint: '${ApiEndPoints.clinicApiEndPoint}/${EndPointKeys.getListEndPointKey}',
      page: page,
      params: params,
    )))),
  );

  cachedClinicList = res.clinicData.validate();

  if (page == 1) clinicList.clear();

  lastPageCallback?.call(res.clinicData.validate().length != PER_PAGE);

  clinicList.addAll(res.clinicData.validate());

  return clinicList;
}

Future switchClinicApi({required Map req}) async {
  return (await handleResponse(await buildHttpResponse('${ApiEndPoints.patientEndPoint}/${EndPointKeys.switchClinicEndPointKey}', request: req, method: HttpMethod.POST)));
}