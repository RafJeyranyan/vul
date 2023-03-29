import 'package:flutter_test/flutter_test.dart';
import 'package:test_work/core/entities/entities.dart';

void main() {
  late Volcano volcano;
  setUp(() => {volcano = Volcano()});

  group("Volcano Empty initialize", () {
    test("Volcano initial test empty facts", () {
      expect(volcano.facts, isNull);
    });

    test("Volcano initial test empty title", () {
      expect(volcano.title, isNull);
    });

    test("Volcano initial test empty url", () {
      expect(volcano.url, isNull);
    });
  });

  group("Voulcano FromJson constructor call values", () {
    final volcano =
        Volcano.fromJson({"title": "title", "url": "url", "facts": "facts"});

    test("Volcano fromjson test title", () {
      expect(volcano.title, "title");
    });

    test("Volcano fromjson test facts", () {
      expect(volcano.facts, "facts");
    });

    test("Volcano fromjson test url", () {
      expect(volcano.url, "url");
    });
  });

  group("Voulcano to json constructor test", () {
    final tmp =
        Volcano.fromJson({"title": "title", "url": "url", "facts": "facts"});

    final volcano = tmp.toJson();
    test("Volcano toJson test facts", () {
      expect(volcano["facts"], "facts");
    });

    test("Volcano toJson test title", () {
      expect(volcano["title"], "title");
    });

    test("Volcano toJson test url", () {
      expect(volcano["url"], "url");
    });
  });

  
}
