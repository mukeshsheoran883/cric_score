class Score {
  int? r;
  int? w;
  double? o;
  String? inning;

  Score({this.r, this.w, this.o, this.inning});

  factory Score.fromJson(Map<String, dynamic> json) {
    return Score(
      r: json['r'],
      w: json['w'],
      o: json['o'],
      inning: json['inning'],
    );
  }
}