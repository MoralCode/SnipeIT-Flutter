import 'datetime.dart';

class BaseModel {
  final int id;
  String name;

  BaseModel(this.id, this.name);
}

class TimestampedBaseModel extends BaseModel {
  SnipeDateTime created_at, updated_at;

  TimestampedBaseModel(int id, String name,
      {required this.created_at, required this.updated_at})
      : super(id, name);
}
