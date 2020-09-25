import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Delivery App', () {
    final buttonFinder = find.byValueKey('navigate');
    final splashTextFinder = find.byValueKey("splash");
    final categoriesTextFinder = find.byValueKey("categories");

    FlutterDriver driver;
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Starts at splash screen', () async {
      expect(await driver.getText(splashTextFinder), "Non-Contact Deliveries");
    });

    test('Navigates to Categories', () async {
      await driver.tap(buttonFinder);

      expect(await driver.getText(categoriesTextFinder), "Categories");
    });
  });
}
