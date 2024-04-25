import 'package:advanced_ui_e_commerce/components/list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //Drawer Header
              DrawerHeader(
                  child: Icon(
                Icons.shopping_bag_rounded,
                color: Theme.of(context).colorScheme.inversePrimary,
                size: 72,
              )),

              //Shop tile
              MyListTile(
                title: "Shop",
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),
              //cart tile
              MyListTile(
                title: "Cart",
                icon: Icons.shopping_bag_sharp,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
            ],
          ),
          //exit tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              title: "Exit",
              icon: Icons.logout,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/intro_page', (route) => false),
            ),
          )
        ],
      ),
    );
  }
}
