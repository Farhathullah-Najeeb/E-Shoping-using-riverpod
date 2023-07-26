import 'dart:convert';

import 'package:flutter/foundation.dart';

class GetAllCartModel {
  final int id;
  final int userId;
  final String date;
  final List<Product> products;
  final int v;
  GetAllCartModel({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
    required this.v,
  });

  GetAllCartModel copyWith({
    int? id,
    int? userId,
    String? date,
    List<Product>? products,
    int? v,
  }) {
    return GetAllCartModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      date: date ?? this.date,
      products: products ?? this.products,
      v: v ?? this.v,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'date': date,
      'products': products.map((x) => x.toMap()).toList(),
      '__v': v,
    };
  }

  factory GetAllCartModel.fromMap(Map<String, dynamic> map) {
    return GetAllCartModel(
      id: map['id'].toInt() as int,
      userId: map['userId'].toInt() as int,
      date: map['date'] as String,
      products: List<Product>.from((map['products'] as List<dynamic>).map<Product>((x) => Product.fromMap(x as Map<String,dynamic>),),),
      v: map['__v'].toInt() as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory GetAllCartModel.fromJson(String source) => GetAllCartModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'GetAllCartModel(id: $id, userId: $userId, date: $date, products: $products, v: $v)';
  }

  @override
  bool operator ==(covariant GetAllCartModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.userId == userId &&
      other.date == date &&
      listEquals(other.products, products) &&
      other.v == v;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      userId.hashCode ^
      date.hashCode ^
      products.hashCode ^
      v.hashCode;
  }
}

class Product {
  final int productId;
  final int quantity;
  Product({
    required this.productId,
    required this.quantity,
  });

  Product copyWith({
    int? productId,
    int? quantity,
  }) {
    return Product(
      productId: productId ?? this.productId,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'quantity': quantity,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      productId: map['productId'].toInt() as int,
      quantity: map['quantity'].toInt() as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Product(productId: $productId, quantity: $quantity)';

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;
  
    return 
      other.productId == productId &&
      other.quantity == quantity;
  }

  @override
  int get hashCode => productId.hashCode ^ quantity.hashCode;
}