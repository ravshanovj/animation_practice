import 'package:dio/dio.dart';
import 'package:marketplace_animation_app/core/constant/project_url.dart';

import '../../core/config/dio_catch_error_config.dart';
import '../../core/config/dio_config.dart';
import '../model/phone_model.dart';

class PhoneService {
  Future<dynamic> getPhone() async {
    try {
      Response response = await DioConfig.createRequest().get(ProjectUrl.api);
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => PhonesModel.fromJson(e))
            .toList();
      } else {
        return response.statusMessage.toString();
      }
    // ignore: deprecated_member_use
    } on DioError catch (e) {
      return DioCatchErrorConfig.catchError(e);
    }
  }
}
