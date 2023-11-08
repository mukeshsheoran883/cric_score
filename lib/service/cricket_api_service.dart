import 'dart:convert';

import 'package:cric_score/model/cricketResponse.dart';
import 'package:cric_score/model/cricket_match.dart';
import 'package:cric_score/util/api_end_point.dart';
import 'package:http/http.dart' as http;

class CricketApiService{
  Future<List<CricketMatch>> getProduct() async {
    String url = ApiEndPoint.baseUrl;
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      String body = response.body;
      final data = jsonDecode(body);
      CricketResponse cricketResponse = CricketResponse.fromJson(data);
      return cricketResponse.data;
    } else {
      throw 'Something went wrong';
    }
  }
}