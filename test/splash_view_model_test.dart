import 'package:delivery_app/features/splash/splash_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var vm = SplashViewModel();
  test("Initial Values", () {
    expect(vm.defaultBackground, "resources/images/splash_background.png");
    expect(vm.logoImage, "resources/images/logo.png");
    expect(vm.splashIcon, "resources/images/icon.png");
    expect(vm.title, "Non-Contact Deliveries");
    expect(vm.description,
        "When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.");
    expect(vm.buttonOrderNowTitle, "ORDER NOW");
    expect(vm.buttonDismissTitle, "DISMISS");
  });
}
