import 'package:cric_score/model/cricket_match.dart';

class CricketResponse {
  final String apiKey;
  final List<CricketMatch> data;

  CricketResponse({
    required this.apiKey,
    required this.data,
  });

  factory CricketResponse.fromJson(Map<String, dynamic> json) {
    final List<dynamic> jsonData = json['data'];
    final List<CricketMatch> cricketMatches =
    jsonData.map((matchData) => CricketMatch.fromJson(matchData)).toList();

    return CricketResponse(
      apiKey: json['apiKey'],
      data: cricketMatches,
    );
  }
}






