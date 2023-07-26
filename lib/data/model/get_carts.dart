// import 'dart:convert';

// import 'package:flutter/foundation.dart';

// class GetCartsModel {
//   final int id;
//   final int userId;
//   final String date;
//   final List<Product> products;
//   GetCartsModel({
//     required this.id,
//     required this.userId,
//     required this.date,
//     required this.products,
//   });

//   GetCartsModel copyWith({
//     int? id,
//     int? userId,
//     String? date,
//     List<Product>? products,
//   }) {
//     return GetCartsModel(
//       id: id ?? this.id,
//       userId: userId ?? this.userId,
//       date: date ?? this.date,
//       products: products ?? this.products,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'userId': userId,
//       'date': date,
//       'products': products.map((x) => x.toMap()).toList(),
//     };
//   }

//   factory GetCartsModel.fromMap(Map<String, dynamic> map) {
//     return GetCartsModel(
//       id: map['id'].toInt() as int,
//       userId: map['userId'].toInt() as int,
//       date: map['date'] as String,
//       products: List<Product>.from((map['products'] as List<int>).map<Product>((x) => Product.fromMap(x as Map<String,dynamic>),),),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory GetCartsModel.fromJson(String source) => GetCartsModel.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'GetCartsModel(id: $id, userId: $userId, date: $date, products: $products)';
//   }

//   @override
//   bool operator ==(covariant GetCartsModel other) {
//     if (identical(this, other)) return true;
  
//     return 
//       other.id == id &&
//       other.userId == userId &&
//       other.date == date &&
//       listEquals(other.products, products);
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//       userId.hashCode ^
//       date.hashCode ^
//       products.hashCode;
//   }
// }

// class Product {
//   final int productId;
//   final int quantity;
//   Product({
//     required this.productId,
//     required this.quantity,
//   });

//   Product copyWith({
//     int? productId,
//     int? quantity,
//   }) {
//     return Product(
//       productId: productId ?? this.productId,
//       quantity: quantity ?? this.quantity,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'productId': productId,
//       'quantity': quantity,
//     };
//   }

//   factory Product.fromMap(Map<String, dynamic> map) {
//     return Product(
//       productId: map['productId'].toInt() as int,
//       quantity: map['quantity'].toInt() as int,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'Product(productId: $productId, quantity: $quantity)';

//   @override
//   bool operator ==(covariant Product other) {
//     if (identical(this, other)) return true;
  
//     return 
//       other.productId == productId &&
//       other.quantity == quantity;
//   }

//   @override
//   int get hashCode => productId.hashCode ^ quantity.hashCode;
// }