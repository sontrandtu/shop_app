
import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String title;
  final String description; // chi tiet
  final List<dynamic> images;
  final String mainImage;
  final String idCategories;
  final List<dynamic> size;
  final dynamic price;
  final String idProduct;

  Product({
    required this.idProduct,
    required this.images,
    required this.size,
    required this.mainImage,
    // this.rating = 0.0,
    // this.isFavourite = false,
    // this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
    required this.idCategories,
  });

  static Product fromSnapShot(DocumentSnapshot snapshot) {
    Product product = Product(
      idProduct: snapshot["MaSp"],
      images: snapshot["HinhLienQuan"],
      size: snapshot["Size"],
      title: snapshot["TenSP"],
      price: snapshot["Gia"],
      description: snapshot["Description"],
      idCategories: snapshot["MaLoai"],
      mainImage: snapshot["Hinh"]
    );
    return product;
  }
}

//list demo product
List<Product> demoProducts = [
  Product(
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    size: [
      "S",
      "M",
      "L",
      "XL",
    ],
    idProduct: "1",
    idCategories: "",
    mainImage: "",
    title: "Wireless Controller to PS4",
    price: 64.99,
    description: description,
    // rating: 4.8,
    // isFavourite: true,
    // isPopular: true,
  ),
  Product(
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    size: [
      "S",
      "M",
      "L",
      "XL",
    ],
    idProduct: "2",
    mainImage: "",
    idCategories: "",
    title: "Nike Sport White - Man Paint",
    price: 50.5,
    description: description,
    // rating: 4.1,
    // isPopular: true,
  ),
  Product(
    images: [
      "assets/images/glap.png",
    ],
    size: [
      "S",
      "M",
      "L",
      "XL",
    ],
    idProduct: "3",
    idCategories: "" ,
    mainImage: "",
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    // rating: 4.1,
    // isFavourite: true,
    // isPopular: true,
  ),
  Product(
    images: [
      "assets/images/wireless headset.png",
    ],
    size: [
      "S",
      "M",
      "L",
      "XL",
    ],
    idProduct: "4",
    title: "Logitech Head",
    price: 20.20,
    mainImage: "",
    idCategories: "",
    description: description,
    // rating: 4.1,
    // isFavourite: true,
  ),
  Product(

    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    size: [
      "S",
      "M",
      "L",
      "XL",
    ],
    idProduct: "5",
    title: "Nike Sport White - Man Paint",
    price: 50.5,
    idCategories: "",
    mainImage: "",
    description: description,
    // rating: 4.1,
    // isPopular: true,
  ),
];

const String description =
    "Wireless Controller for PS4 gives you what you want in your gaming from over precision control your games to sharing....";
