import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.date,
    required this.favorite,
    required this.image1,
  });

  factory Product.fromJson(dynamic json) {
    return Product(
      id: json['id'] as String,
      title: json['title'] as String,
      price: double.parse(json['price'].toString()),
      description: json['description'] as String,
      date: json['date'] as Timestamp,
      favorite: json['favorite'] as bool,
      image1: json['image1'] as String,
    );
  }

  final String id;
  final String title;
  final double price;
  final String description;
  final Timestamp date;
  bool favorite;
  final String image1;
}
