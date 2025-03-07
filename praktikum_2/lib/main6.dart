import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding:
                const EdgeInsets.all(20.0), // Tambahkan padding agar lebih rapi
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Deliver features faster',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
                Text(
                  'Craft beautiful UIs',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 55, 150, 34)),
                ),
                SizedBox(height: 16), // Jarak antara teks dan logo
                Flexible(
                  // Menggunakan Flexible agar bisa menyesuaikan ukuran
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: FlutterLogo(size: 120), // Memberikan ukuran default
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
