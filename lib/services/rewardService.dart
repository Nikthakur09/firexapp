import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firexapp/infra/apiclient.dart';
import 'package:firexapp/models/rewards.dart';


class RewardsService {
  ApiClient apiClient = new ApiClient();
  Future<List<Rewards>> getRewards(String name) async {
    try {
      final url = 'https://ajanitech.com/test/chat-app-x/user-1.json';
      Response response = await apiClient.get(url);
       print(response.data);
    //   // print(response.data.runtimeType);

      Map<String, dynamic> map = jsonDecode(response.data);
      List<dynamic> list = map['rewards'];
      List<Rewards> rewards = list.map((e) => Rewards.fromJSON(e)).toList();
    //   //print(songs);
      return rewards;
    } catch (e) {
      return [];
    }
  }
}
