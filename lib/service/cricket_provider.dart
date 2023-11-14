import 'package:cric_score/model/cricketResponse.dart';
import 'package:cric_score/service/cricket_api_service.dart';
import 'package:flutter/cupertino.dart';

class CricketProvider extends ChangeNotifier{
  MatchResponse? matchResponse;
  MatchApiService? matchApiService;
  getMatchInfo() async {
    matchResponse = await MatchApiService.getMatchInfo();
    notifyListeners();
  }

}