import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/models/food_item.dart';

abstract class IFoodViewModel {
  // Variables
  Category category;
  Function navigateToFavorites;
  Function navigateToCart;

  // Methods
  didTapFavorites(FoodItem item);
  didTapCart(FoodItem item);
}

class FoodViewModel implements IFoodViewModel {
  Category category;
  Function navigateToCart;
  Function navigateToFavorites;

  FoodViewModel({this.category});

  didTapCart(FoodItem item) {
    navigateToCart(item);
  }

  didTapFavorites(FoodItem item) {
    navigateToFavorites(item);
  }
}
