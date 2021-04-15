import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/const.dart';
import '../../../../../common/preferences.dart';
import 'home_main_model.dart';

class HomeMainProvider extends GetConnect {
  @override
  void onInit() {}

  Future<Response<HomeMainResponse>> apiNaoDo({
    @required int page,
  }) async {
    String token = await Preference.getToken();
    final Response<HomeMainResponse> response = await post(
      '$endpointApi/GetClone',
      {},
      headers: {'Content-Type': 'application/json'},
      decoder: (map) => HomeMainResponse.fromJson(map),
    );
    return response;
  }
}
