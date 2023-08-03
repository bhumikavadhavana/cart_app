import 'package:cart_app/controller/cart_controller.dart';
import 'package:cart_app/views/components/product_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart App"),
        centerTitle: true,
        actions: [
          Stack(
            children: [
              Obx(
                () => Text("${productController.items}"),
              ),
              IconButton(
                onPressed: () {
                  Get.toNamed('/cart');
                },
                icon: Icon(Icons.shopping_bag),
              ),
            ],
          )
        ],
      ),
      body: ListView.builder(
        itemCount: productData.length,
        itemBuilder: (context, i) => Card(
          child: ListTile(
            title: Text("${productData[i].name}"),
            subtitle: Text("${productData[i].price}"),
            leading: Text("${productData[i].id}"),
            trailing: IconButton(
              onPressed: () {
                productController.add(product: productData[i]);
              },
              icon: Icon(Icons.add_shopping_cart_outlined),
            ),
          ),
        ),
      ),
    );
  }
}
