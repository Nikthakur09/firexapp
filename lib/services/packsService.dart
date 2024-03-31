import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firexapp/models/packs.dart';

import '../infra/apiclient.dart';

class PacksService{
  ApiClient apiClient = new ApiClient();
  Future<List<Packs>> getPacks(String name) async {
    try {
      final url = 'https://ajanitech.com/test/chat-app-x/user-1.json';
      Response response = await apiClient.get(url);
      //  print(response.data);
    //   // print(response.data.runtimeType);

      Map<String, dynamic> map = jsonDecode(response.data);
      List<dynamic> list = map['packs'];
      List<Packs> packs = list.map((e) => Packs.fromJSON(e)).toList();
    //   //print(songs);
      return packs;
    } catch (e) {
      return [];
    }
  }
}