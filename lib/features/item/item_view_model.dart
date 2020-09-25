import 'package:delivery_app/models/food_item.dart';

abstract class IItemViewModel {
  FoodItem foodItem;
  String btnAddCartTitle;
  String descriptonTitle;

  Function didTapCart;
  Function didTapFavorite;
}

class ItemViewModel implements IItemViewModel {
  @override
  String btnAddCartTitle = "ADD TO CART";

  @override
  String descriptonTitle = "Description";

  Function didTapCart;
  Function didTapFavorite;
  FoodItem foodItem;

  ItemViewModel({this.foodItem});
}
