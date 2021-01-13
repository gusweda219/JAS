import 'package:jasapp/models/best_sellers.dart';
import 'package:jasapp/models/category.dart';
import 'package:jasapp/models/category_selected.dart';

class ByGender {
  String gender;
  List<Category> category;
  List<BestSellers> bestSellers;

  ByGender({
    this.gender,
    this.category,
    this.bestSellers
  });
}

List<Category> categoryMen = [
  Category(
    categoryName: 'KAOS',
    imageURL: 'images/t-shirt.png',
    categorySelected: categorySelectedKaosMen,
  ),
  Category(
      categoryName: 'KEMEJA',
      imageURL: 'images/shirt.png',
    categorySelected: categorySelectedKemejaMen,
  ),
];

List<Category> categoryWomen = [
  Category(
      categoryName: 'KAOS',
      imageURL: 'images/t-shirt1.png',
    categorySelected: categorySelectedKaosWomen,
  ),
  Category(
      categoryName: 'KEMEJA',
      imageURL: 'images/shirt02.png',
    categorySelected: categorySelectedKemejaWomen,
  ),
];

List<BestSellers> bestSellersMen = [
  BestSellers(
    nameProduk: 'Kemeja 3',
    price: 200000,
    imgURL: 'images/shirt3.jpg',
    isFavorite: false,
  ),
  BestSellers(
    nameProduk: 'Kaos 2',
    price: 200000,
    imgURL: 'images/t-shirt02.jpg',
    isFavorite: false,
  ),
  BestSellers(
    nameProduk: 'Kaos 4',
    price: 200000,
    imgURL: 'images/t-shirt04.jpg',
    isFavorite: false,
  ),
  BestSellers(
    nameProduk: 'Kemeja 1',
    price: 200000,
    imgURL: 'images/shirt1.jpg',
    isFavorite: false,
  ),
];

List<BestSellers> bestSellersWomen = [
  BestSellers(
    nameProduk: 'Kaos 1',
    price: 200000,
    imgURL: 'images/t-shirt05.jpg',
    isFavorite: false,
  ),
  BestSellers(
    nameProduk: 'Kemeja 1',
    price: 200000,
    imgURL: 'images/shirt7.jpg',
    isFavorite: false,
  ),
  BestSellers(
    nameProduk: 'Kaos 3',
    price: 200000,
    imgURL: 'images/t-shirt07.jpg',
    isFavorite: false,
  ),
  BestSellers(
    nameProduk: 'Kemeja 4',
    price: 200000,
    imgURL: 'images/shirt10.jpg',
    isFavorite: false,
  ),
];

List<ByGender> byGender = [
  ByGender(
    gender: 'Pria',
    category: categoryMen,
    bestSellers: bestSellersMen,
  ),
  ByGender(
    gender: 'Wanita',
    category: categoryWomen,
    bestSellers: bestSellersWomen,
  )
];

List<CategorySelected> categorySelectedKaosMen = [
  CategorySelected(
    nameProduk: 'Kaos 1',
    price: 200000,
    imgURL: 'images/t-shirt01.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kaos 2',
    price: 200000,
    imgURL: 'images/t-shirt02.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kaos 3',
    price: 200000,
    imgURL: 'images/t-shirt03.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kaos 4',
    price: 200000,
    imgURL: 'images/t-shirt04.jpg',
    isFavorite: false,
  ),
];

List<CategorySelected> categorySelectedKemejaMen = [
  CategorySelected(
    nameProduk: 'Kemeja 1',
    price: 200000,
    imgURL: 'images/shirt1.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kemeja 2',
    price: 200000,
    imgURL: 'images/shirt2.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kemeja 3',
    price: 200000,
    imgURL: 'images/shirt3.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kemeja 4',
    price: 200000,
    imgURL: 'images/shirt4.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kemeja 5',
    price: 200000,
    imgURL: 'images/shirt5.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kemeja 6',
    price: 200000,
    imgURL: 'images/shirt6.jpg',
    isFavorite: false,
  ),
];

List<CategorySelected> categorySelectedKaosWomen = [
  CategorySelected(
    nameProduk: 'Kaos 1',
    price: 200000,
    imgURL: 'images/t-shirt05.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kaos 2',
    price: 200000,
    imgURL: 'images/t-shirt06.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kaos 3',
    price: 200000,
    imgURL: 'images/t-shirt07.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kaos 4',
    price: 200000,
    imgURL: 'images/t-shirt08.jpg',
    isFavorite: false,
  ),
];


List<CategorySelected> categorySelectedKemejaWomen = [
  CategorySelected(
    nameProduk: 'Kemeja 1',
    price: 200000,
    imgURL: 'images/shirt7.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kemeja 2',
    price: 200000,
    imgURL: 'images/shirt8.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kemeja 3',
    price: 200000,
    imgURL: 'images/shirt9.jpg',
    isFavorite: false,
  ),
  CategorySelected(
    nameProduk: 'Kemeja 4',
    price: 200000,
    imgURL: 'images/shirt10.jpg',
    isFavorite: false,
  ),
];
