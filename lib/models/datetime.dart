import 'package:json_annotation/json_annotation.dart';

part 'datetime.g.dart';

@JsonSerializable()
class SnipeDateTime {
  String datetime, formatted;

  SnipeDateTime({required this.datetime, required this.formatted});

  DateTime toDateTime() {
    return DateTime.parse(datetime);
  }

  /// Connect the generated [_$SnipeDateTimeFromJson] function to the `fromJson`
  /// factory.
  factory SnipeDateTime.fromJson(Map<String, dynamic> json) =>
      _$SnipeDateTimeFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SnipeDateTimeToJson(this);
}
