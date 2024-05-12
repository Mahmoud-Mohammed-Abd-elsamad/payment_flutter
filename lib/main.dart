import 'package:flutter/material.dart';

import 'Features/checkout/presentation/views/my_cart_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: MyCartView(),
    );
  }}