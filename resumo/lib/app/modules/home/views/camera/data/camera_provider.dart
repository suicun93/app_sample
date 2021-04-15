import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/const.dart';
import '../../../../../common/preferences.dart';

class CameraProvider extends GetConnect {
  @override
  void onInit() {}

  Future<Response> apiNaoDo({
    @required int page,
  }) async {
    String token = await Preference.getToken();
    final Response response = await post(
      '$endpointApi/GetClone',
      {},
      headers: {'Content-Type': 'application/json'},
    );
    return response;
  }
}
