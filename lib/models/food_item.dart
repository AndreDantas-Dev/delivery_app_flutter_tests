class FoodItem {
  String title;
  double price;
  String imageURL;
  String unit;

  FoodItem({this.title, this.imageURL, this.price, this.unit});
  FoodItem.fromMap(Map<String, dynamic> json) {
    title = json["title"] ?? "";
    price = json["price"] as double ?? 0;
    imageURL = json["imageURL"] ?? "";
    unit = json["unit"] ?? "";
  }

  factory FoodItem.fromJson(Map<String, dynamic> json) {
    return _$ItemFromJson(json);
  }
}

FoodItem _$ItemFromJson(Map<String, dynamic> json) {
  return FoodItem(
      title: json['title'] as String,
      imageURL: json['imageURL'] as String,
      price: json['price'] as double,
      unit: json['unit'] as String);
}
