import 'package:get/get.dart';

import '../../../common/const.dart';
import 'verify_code_from_email_response.dart';

class VerifyCodeFromEmailProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = '$endpointApi';
    httpClient.defaultDecoder =
        (map) => VerifyCodeFromEmailResponse.fromJson(map);
  }

  Future<Response<VerifyCodeFromEmailResponse>> verifyCode(
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
