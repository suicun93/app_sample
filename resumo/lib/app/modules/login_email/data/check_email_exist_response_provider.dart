import 'package:get/get.dart';

import '../../../common/const.dart';
import 'check_email_exist_response.dart';

class CheckEmailExistResponseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = '$endpointApi';
    httpClient.defaultDecoder = (map) => CheckEmailExistResponse.fromJson(map);
  }

  Future<Response<CheckEmailExistResponse>> checkEmailExist(
    String email,
  ) async {
    return await post(
      'login_request_email',
      {
        'email': email,
      },
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }
}
