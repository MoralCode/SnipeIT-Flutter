import 'dart:convert';

import 'package:snipeit/snipeit.dart';
import 'package:test/test.dart';
import 'dart:io';

void main() {
  group("can serialize from json - ", () {
    // test('SnipeDateTime', () {
    //   expect(SnipeDateTime.fromJSON({}));
    // });

    test('Location', () {
      final file = File('test/data/Location.json').readAsStringSync();
      final location =
          Location.fromJson(jsonDecode(file) as Map<String, dynamic>);

      expect(location.id, 1);
      expect(location.name, "New Cecilia");
      expect(location.city, "Veumport");
      expect(location.created_at.datetime, "2023-02-11 17:42:05");
      expect(location.created_at.formatted, "Sat Feb 11, 2023 5:42PM");
    });
  });
}
