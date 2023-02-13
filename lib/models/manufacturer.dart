import 'package:json_annotation/json_annotation.dart';

import 'basemodel.dart';
import 'datetime.dart';

part 'manufacturer.g.dart';

@JsonSerializable()
class Manufacturer extends BaseModel {
  int assets_count, licenses_count, consumables_count, accessories_count;

  String? url, image, support_url, support_phone, support_email;

  String? address, address2, city, state, country, zip;
  // image, currency, ldap_ou
  SnipeDateTime created_at, updated_at;

  Manufacturer(String name, int id,
      {this.url,
      this.image,
      this.support_url,
      this.support_phone,
      this.support_email,
      this.assets_count = 0,
      this.licenses_count = 0,
      this.consumables_count = 0,
      this.accessories_count = 0,
      required this.created_at,
      required this.updated_at})
      : super(id, name);

  /// Connect the generated [_$ManufacturerFromJson] function to the `fromJson`
  /// factory.
  factory Manufacturer.fromJson(Map<String, dynamic> json) =>
      _$ManufacturerFromJson(json);

  /// Connect the generated [_$ManufacturerToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ManufacturerToJson(this);
}
