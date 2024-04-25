import 'package:advanced_ui_e_commerce/components/my_button.dart';
import 'package:advanced_ui_e_commerce/models/product.dart';
import 'package:advanced_ui_e_commerce/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({super.key, required this.product});

//add to cart
  void addToCart(BuildContext context) {
    //show dialogue asking user if he wants to add to cart
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: const Text("Add this product to your cart?"),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancel"),
                ),
                MaterialButton(
                  onPressed: () {
                    //Pop the dialogue out of the screen
                    Navigator.pop(context);

                    //add to cart
                    context.watch<Shop>().addToCart(product);
                  },
                  child: const Text("Yes"),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //product image
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    padding: const EdgeInsets.all(25),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Icon(
                      Icons.gif_box,
                    )),
              ),

              const SizedBox(
                height: 25,
              ),
              //product title

              Text(product.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20)),
              //product description
              const SizedBox(
                height: 10,
              ),
              Text(
                product.description,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          //product price + add button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$${product.price.toStringAsFixed(2)}"),
              MyButton(
                  onTap: () => addToCart(context),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.add,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
