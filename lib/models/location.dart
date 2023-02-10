import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  final int id,
      assigned_assets_count,
      assets_count,
      rtd_assets_count,
      users_count;
  final int? zip;

  String? name, address, address2, city, state, country;
  // image, currency, ldap_ou
  DateTime created_at, updated_at;

  Location(
      {required this.id,
      this.name,
      this.address,
      this.address2,
      this.city,
      this.state,
      this.country,
      this.zip,
      this.assigned_assets_count = 0,
      this.assets_count = 0,
      this.rtd_assets_count = 0,
      this.users_count = 0,
      required this.created_at,
      required this.updated_at});

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
