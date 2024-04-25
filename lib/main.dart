import 'package:advanced_ui_e_commerce/models/shop.dart';
import 'package:advanced_ui_e_commerce/pages/cart_page.dart';
import 'package:advanced_ui_e_commerce/pages/intropage.dart';
import 'package:advanced_ui_e_commerce/pages/shop_page.dart';
import 'package:advanced_ui_e_commerce/theme/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const Homepage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage()
      },
    );
  }
}
