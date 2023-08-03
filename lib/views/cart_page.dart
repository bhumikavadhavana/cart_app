import 'package:cart_app/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

  ProductController productController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cart Page"),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: productController.CartProduct.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              title: Text("${productController.CartProduct[index].name}"),
              subtitle: Text("${productController.CartProduct[index].price}"),
              leading: Text("${productController.CartProduct[index].id}"),
              trailing: IconButton(
                onPressed: () {productController.remove(product: productController.CartProduct[index]);},
                icon: Icon(Icons.remove_shopping_cart_outlined),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
