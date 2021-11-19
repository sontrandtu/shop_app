import 'package:get/get.dart';
import 'package:shop_app/models/product.dart';

class CartController extends GetxController{
  //them 1 doi tuong de luu tru trong gio hang

  var _products = {}.obs;

  void addProduct(Product product){
    if(_products.containsKey(product)){
      _products[product] += 1;
    } else{
      _products[product] = 1;
    }
  }
}