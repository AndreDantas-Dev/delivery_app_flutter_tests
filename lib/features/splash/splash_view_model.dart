abstract class ISplashViewModel {
  String defaultBackground;
  String logoImage;
  String splashIcon;
  String title;
  String description;
  String buttonOrderNowTitle;
  String buttonDismissTitle;
}

class SplashViewModel implements ISplashViewModel {
  String defaultBackground = "resources/images/splash_background.png";
  String logoImage = "resources/images/logo.png";
  String splashIcon = "resources/images/icon.png";
  String title = "Non-Contact Deliveries";
  String description =
      "When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.";
  String buttonOrderNowTitle = "ORDER NOW";
  String buttonDismissTitle = "DISMISS";
}
