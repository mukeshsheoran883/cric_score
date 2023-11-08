import 'package:cric_score/model/score_info_model.dart';
import 'package:cric_score/model/team_info_model.dart';

class CricketMatch {
  String? id;
  String? name;
  String? matchType;
  String? status;
  String? venue;
  String? date;
  String? dateTimeGMT;
  List<String>? teams;
  List<TeamInfo>? teamInfo;
  List<Score>? score;
  String? seriesId;
  bool? fantasyEnabled;
  bool? bbbEnabled;
  bool? hasSquad;
  bool? matchStarted;
  bool? matchEnded;

  CricketMatch({
    this.id,
    this.name,
    this.matchType,
    this.status,
    this.venue,
    this.date,
    this.dateTimeGMT,
    this.teams,
    this.teamInfo,
    this.score,
    this.seriesId,
    this.fantasyEnabled,
    this.bbbEnabled,
    this.hasSquad,
    this.matchStarted,
    this.matchEnded,
  });

  factory CricketMatch.fromJson(Map<String, dynamic> json) {
    return CricketMatch(
      id: json['id'],
      name: json['name'],
      matchType: json['matchType'],
      status: json['status'],
      venue: json['venue'],
      date: json['date'],
      dateTimeGMT: json['dateTimeGMT'],
      teams: (json['teams'] as List<dynamic>).cast<String>(),
      teamInfo: (json['teamInfo'] as List<dynamic>)
          .map((teamInfoData) => TeamInfo.fromJson(teamInfoData))
          .toList(),
      score: (json['score'] as List<dynamic>)
          .map((scoreData) => Score.fromJson(scoreData))
          .toList(),
      seriesId: json['series_id'],
      fantasyEnabled: json['fantasyEnabled'],
      bbbEnabled: json['bbbEnabled'],
      hasSquad: json['hasSquad'],
      matchStarted: json['matchStarted'],
      matchEnded: json['matchEnded'],
    );
  }
}