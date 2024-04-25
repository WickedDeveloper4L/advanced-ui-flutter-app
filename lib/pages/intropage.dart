import 'package:advanced_ui_e_commerce/components/my_button.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Logo
            Icon(
              Icons.shopping_bag_rounded,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 72,
            ),

            const SizedBox(
              height: 20,
            ),

            Text(
              "Minimal Shop",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Premium quality products",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 10,
            ),
            //navbutton
            MyButton(
                onTap: () => Navigator.pushNamed(context, "/shop_page"),
                child: const Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}
