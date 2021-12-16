// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

class ProfileServices {
  ProfileServices._();

  static final ProfileServices profileServices = ProfileServices._();

  static const String url = "https://jsonplaceholder.typicode.com/comments";

  Dio dio = Dio();

  Future getDataProfile() async {
    Response response;
    try {
      response = await dio.get(url);

      return response.data;
    } catch (e) {
      print(e);
    }
  }
}
