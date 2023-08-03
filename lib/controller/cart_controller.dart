import 'package:cart_app/model/cart_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  RxList CartProduct = [].obs;

  get items => CartProduct.length;

  void add({required ProductModel product}) {
    CartProduct.add(product);
  }

  void remove({required ProductModel product}) {
    CartProduct.remove(product);
  }
}
