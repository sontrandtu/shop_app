import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:shop_app/models/product.dart';

class ProductController extends GetxController {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final products = <Product>[].obs;
  final popularProducts = <Product>[].obs;
  String collection = "SanPham";

  // @override
  // void onInit() {
  //   super.onInit();
  //   products.bindStream(getAllProducts());
  // }
  //
  // Stream<List<Product>> getAllProducts() =>
  //     firebaseFirestore.collection(collection).snapshots().map((query) {
  //       return query.docs.map((item) => Product.fromSnapShot(item)).toList();
  //     });

  List<Product> getAll() {
    firebaseFirestore.collection(collection).get().then((value) {
      int size = value.size;
      value.docs.forEach((element) {
        Product product = new Product(idProduct: element.data()["MaSp"],
            images: element.data()["HinhLienQuan"],
            size: element.data()["Size"],
            mainImage: element.data()["Hinh"],
            title: element.data()["TenSp"],
            price: element.data()["Gia"],
            description: (element.data()["Description"] == null) ? "don't have description" : element.data()["Description"],
            idCategories: element.data()["MaLoai"]);
        if (products.length < size - 1){
          products.add(product);
        }else{

        }
      });
    });
    return products;
  }
  List<Product> getPopularProduct(){
    firebaseFirestore.collection(collection).get().then((value) {
      int size = 7;
      value.docs.forEach((element) {
        Product product = new Product(idProduct: element.data()["MaSp"],
            images: element.data()["HinhLienQuan"],
            size: element.data()["Size"],
            mainImage: element.data()["Hinh"],
            title: element.data()["TenSp"],
            price: element.data()["Gia"],
            description: (element.data()["Description"] == null) ? "don't have description" : element.data()["Description"],
            idCategories: element.data()["MaLoai"]);
        if (popularProducts.length < size - 1){
          popularProducts.add(product);
        }
      });
    });
    return popularProducts;
  }
}