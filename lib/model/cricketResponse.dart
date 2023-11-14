import 'package:cric_score/model/Info_scor.dart';
import 'package:cric_score/model/data%20info.dart';

class MatchResponse {
  String? apikey;
  List<Data>? data;
  String? status;
  Info? info;

  MatchResponse({this.apikey, this.data, this.status, this.info});

  MatchResponse.fromJson(Map<String, dynamic> json) {
    apikey = json['apikey'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    status = json['status'];
    info = json['info'] != null ? new Info.fromJson(json['info']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['apikey'] = this.apikey;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    if (this.info != null) {
      data['info'] = this.info!.toJson();
    }
    return data;
  }
}







