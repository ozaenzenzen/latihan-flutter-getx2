// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_getx_2/model/profile_model.dart';
import 'package:http/http.dart' as http;

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

      // List listUser =
      //     (response.data as List).map((e) => ProfileModel.fromJson(e)).toList();
      // // print(listUser);

      // return listUser;
    } catch (e) {
      print(e);
    }

    // try {
    //   var response2 = await http.get(Uri.parse(url));
    //   // print(response2.body);

    //   List jsonObject = json.decode(response2.body);
    //   // print(jsonObject);

    //   List listUser = jsonObject.map((e) => ProfileModel.fromJson(e)).toList();
    //   // print(listUser);
    // } catch (e) {
    //   print(e);
    // }
  }
}
