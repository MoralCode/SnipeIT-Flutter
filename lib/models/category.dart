import 'package:json_annotation/json_annotation.dart';

import 'basemodel.dart';
import 'datetime.dart';

part 'category.g.dart';

@JsonSerializable()
class Category extends TimestampedBaseModel {
  final int item_count,
      assets_count,
      accessories_count,
      consumables_count,
      components_count,
      licenses_count;

  String? image, category_type, eula;
  bool has_eula, use_default_eula, checkin_email, require_acceptance;

  String? address, address2, city, state, country, zip;
  // image, currency, ldap_ou
  // SnipeDateTime created_at, updated_at;

  Category(String name, int id,
      {this.image,
      this.category_type,
      this.eula,
      this.has_eula = false,
      this.use_default_eula = false,
      this.checkin_email = false,
      this.require_acceptance = false,
      this.item_count = 0,
      this.assets_count = 0,
      this.accessories_count = 0,
      this.consumables_count = 0,
      this.components_count = 0,
      this.licenses_count = 0,
      required SnipeDateTime created_at,
      required SnipeDateTime updated_at})
      : super(id, name, created_at: created_at, updated_at: updated_at);

  /// Connect the generated [_$CategoryFromJson] function to the `fromJson`
  /// factory.
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  /// Connect the generated [_$CategoryToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
