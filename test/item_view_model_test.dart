import 'package:delivery_app/features/item/item_view_model.dart';
import 'package:delivery_app/models/food_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Initial values", () {
    var foodItem = FoodItem();
    var viewModel = ItemViewModel(foodItem: foodItem);

    expect(viewModel.didTapCart, null);
    expect(viewModel.didTapFavorite, null);
    expect(viewModel.foodItem, foodItem);

    expect(viewModel.btnAddCartTitle, "ADD TO CART");
    expect(viewModel.descriptonTitle, "Description");
  });
}
