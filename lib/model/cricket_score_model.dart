import 'package:cric_score/model/data_score_model.dart';
import 'package:cric_score/model/info_score_model.dart';

class CricketScoreModel {
  String? apikey;
  List<DataScore>? data;
  String? status;
  InfoScore? info;

  CricketScoreModel({this.apikey, this.data, this.status, this.info});

  CricketScoreModel.fromJson(Map<String, dynamic> json) {
    apikey = json['apikey'];
    if (json['data'] != null) {
      data = <DataScore>[];
      json['data'].forEach((v) {
        data!.add(DataScore.fromJson(v));
      });
    }
    status = json['status'];
    info = json['info'] != null ? InfoScore.fromJson(json['info']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['apikey'] = apikey;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['status'] = status;
    if (info != null) {
      data['info'] = info!.toJson();
    }
    return data;
  }
}