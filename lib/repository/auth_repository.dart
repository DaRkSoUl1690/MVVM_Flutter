import 'dart:math';

import 'package:mvvm_architecture/data/network/base_api_service.dart';
import 'package:mvvm_architecture/data/network/network_api_service.dart';
import 'package:mvvm_architecture/res/app_url.dart';

class AuthRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.loginEndPint, data);
      return response;
    } catch (e) {
      print(e);
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(
          AppUrl.registerApiEndPoint, data);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
