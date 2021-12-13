import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_getx_2/model/profile_model.dart';

class ProfileServices {
  ProfileServices._();

  static final ProfileServices profileServices = ProfileServices._();

  static const String url = "https://jsonplaceholder.typicode.com/comments";

  Dio dio = Dio();

  Future getDataProfile() async {
    Response response = await dio.get(url);

    Map jsonData = jsonDecode(response.data);

    return jsonData;
    // return response.data;
  }
}
