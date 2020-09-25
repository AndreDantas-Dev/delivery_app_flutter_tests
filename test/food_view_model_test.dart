import 'package:delivery_app/features/food/food_view_model.dart';
import 'package:delivery_app/models/category.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Initial values", () {
    var category = Category();
    var viewModel = FoodViewModel(category: category);

    expect(viewModel.navigateToCart, null);
    expect(viewModel.navigateToFavorites, null);
    expect(viewModel.category, category);
  });
}
