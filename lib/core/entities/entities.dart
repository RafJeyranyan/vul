import 'package:json_annotation/json_annotation.dart';

part 'entities.g.dart';

@JsonSerializable()
class Volcano {
  String? title;
  String? url;
  String? facts;

  Volcano({this.title, this.url, this.facts});

  factory Volcano.fromJson(Map<String, dynamic> json) =>
      _$VolcanoFromJson(json);

  Map<String, dynamic> toJson() => _$VolcanoToJson(this);

}