import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/cart.dart';
import 'screen/home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartModel(),
        ), // Tambahkan ke MultiProvider
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter F Mart',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(), // Tambahkan `const` untuk optimalisasi
    );
  }
}
