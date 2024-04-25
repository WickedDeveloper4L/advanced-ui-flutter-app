import 'package:advanced_ui_e_commerce/components/my_drawer.dart';
import 'package:advanced_ui_e_commerce/components/product_tile.dart';
import 'package:advanced_ui_e_commerce/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Accesss products in shop page

    final products = context.watch<Shop>().shop;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Shop page"),
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        drawer: const MyDrawer(),
        body: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
              "Glide through our most luxurious products, take your pick",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            )),

            //products list
            SizedBox(
              height: 600,
              child: ListView.builder(
                padding: const EdgeInsets.all(25),
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];

                  return ProductTile(product: product);
                },
              ),
            ),
          ],
        ));
  }
}
