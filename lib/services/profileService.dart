import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:firexapp/infra/apiclient.dart';
import '../models/profile.dart';
class ProfileService {
  ApiClient apiClient = new ApiClient();
  Future<List<Profile>> getProfile(String name) async {
    try {
      final url = 'https://ajanitech.com/test/chat-app-x/user-1.json';
      Response response = await apiClient.get(url);
       print(response.data);
      // print(response.data.runtimeType);
      Map<String, dynamic> map = jsonDecode(response.data);
      List<dynamic> list = map['profile'];
      List<Profile> profiles = list.map((e) => Profile.fromJSON(e)).toList();
      //print(songs);
      return profiles;
    } catch (e) {
      return [];
    }
  }
}
