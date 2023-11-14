// import 'dart:convert';
//
// import 'package:cric_score/model/cricketResponse.dart';
// import 'package:cric_score/model/data info.dart';
// import 'package:cric_score/util/api_end_point.dart';
// import 'package:http/http.dart' as http;
//
// class CricketApiService{
//   Future<List<Data>> getCricket() async {
//     String url = ApiEndPoint.baseUrl;
//     http.Response response = await http.get(
//       Uri.parse(url),
//
//     );
//     if (response.statusCode == 200) {
//       String body = response.body;
//       final data = jsonDecode(body);
//       CricketResponse cricketResponse = CricketResponse.fromJson(data);
//       return cricketResponse.;
//     } else {
//       throw 'Something went wrong';
//     }
//   }
// }

import 'dart:convert';


import 'package:cric_score/model/cricketResponse.dart';
import 'package:cric_score/util/api_end_point.dart';
import 'package:http/http.dart' as http;

class MatchApiService{
  static  Future<MatchResponse> getMatchInfo() async {
    String url = ApiEndPoint.baseUrl;
    http.Response response = await http.get(
      Uri.parse(url),

    );
    if (response.statusCode == 200) {
      String body = response.body;
      final data = jsonDecode(body);

      return MatchResponse.fromJson(data);
    } else {
      throw 'Something went wrong';
    }
  }
}
