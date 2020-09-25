import 'package:delivery_app/models/food_item.dart';

class Category {
  String imageURL;
  String title;
  List<FoodItem> items;

  Category({this.imageURL, this.title, this.items});

  factory Category.fromJson(Map<String, dynamic> json) {
    return _$CategoryFromJson(json);
  }
  Category.fromMap(Map<String, dynamic> json) {
    title = json["title"] ?? "";
    imageURL = json["imageURL"] ?? "";
    items = [];
    if (json["items"] != null)
      for (var item in json["items"] as List) {
        items.add(FoodItem.fromMap(item as Map<String, dynamic>));
      }
  }
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
    title: json['title'] as String,
    imageURL: json['imageURL'] as String,
    items: (json['items'] as List)
        ?.map(
            (e) => e == null ? null : FoodItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}
