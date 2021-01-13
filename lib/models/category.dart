import 'package:jasapp/models/category_selected.dart';

class Category {
  String categoryName;
  String imageURL;
  List<CategorySelected> categorySelected;

  Category({
    this.categoryName,
    this.imageURL,
    this.categorySelected
  });
}

