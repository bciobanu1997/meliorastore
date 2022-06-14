import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String photoUrl, name, size;
  final int price, id;
  final String? photoUrl2, photoUrl3;

  const Product({
    required this.photoUrl,
    this.photoUrl2,
    this.photoUrl3,
    required this.id,
    required this.name,
    required this.price,
    required this.size,
  });

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      photoUrl: snap['photoUrl'],
      photoUrl2: snap['photoUrl2'],
      photoUrl3: snap['photoUrl3'],
      id: snap['id'],
      name: snap['name'],
      price: snap['price'],
      size: snap['size'],
    );
    return product;
  }

  /*static List<Product> products = [
    Product(
        photoUrl: 'https://i.postimg.cc/R0RJkrPC/bag1.jpg',
        productId: 1,
        productName: 'Arya',
        productPrice: 199,
        productSize: 'M'),
    Product(
        photoUrl: 'https://i.postimg.cc/hvHXLKGs/bag2.jpg',
        productId: 2,
        productName: 'Arya',
        productPrice: 129,
        productSize: 'XL'),
    Product(
        photoUrl: 'https://i.postimg.cc/8cFFf7Ts/bag3.jpg',
        productId: 3,
        productName: 'Arya',
        productPrice: 119,
        productSize: 'M'),
    Product(
        photoUrl: 'https://i.postimg.cc/R0RJkrPC/bag1.jpg',
        productId: 1,
        productName: 'Arya',
        productPrice: 139,
        productSize: 'L'),
  ];*/
}
