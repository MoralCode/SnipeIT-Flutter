import 'package:json_annotation/json_annotation.dart';

part 'basemodel.g.dart';

@JsonSerializable()
class BaseModel {
  final int id;
  String name;
  // SnipeDateTime created_at, updated_at;

  BaseModel(this.id, this.name);

  /// Connect the generated [_$BaseModelFromJson] function to the `fromJson`
  /// factory.
  factory BaseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseModelFromJson(json);

  /// Connect the generated [_$BaseModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$BaseModelToJson(this);
}
