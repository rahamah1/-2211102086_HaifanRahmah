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
        appBar: AppBar(
          title: const Text("Flutter Overflow Example"),
          backgroundColor: Colors.blueAccent, // Warna AppBar
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8, // Jarak horizontal
            runSpacing: 8, // Jarak vertikal jika wrap terjadi
            children: const <Widget>[
              FlutterLogo(size: 40),
              SizedBox(height: 8), // Jarak antar elemen jika wrap terjadi
              Flexible(
                child: Text(
                  "Flutter's hot reload helps you quickly and easily experiment, build UIs, add "
                  "features, and fix bugs faster. Experience sub-second reload times, without losing state, "
                  "on emulators, simulators, and hardware for iOS and Android.",
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                  maxLines: 3, // Batasi teks agar tidak terlalu panjang
                  overflow:
                      TextOverflow.ellipsis, // Tambahkan "..." jika kepanjangan
                ),
              ),
              SizedBox(height: 8),
              Icon(Icons.sentiment_satisfied_alt, color: Colors.blue, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
