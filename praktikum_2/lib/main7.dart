import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Column Example")),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: MyTextWidget(),
        ),
      ),
    );
  }
}

class MyTextWidget extends StatefulWidget {
  const MyTextWidget({super.key});

  @override
  _MyTextWidgetState createState() => _MyTextWidgetState();
}

class _MyTextWidgetState extends State<MyTextWidget> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const Text(
          'We move under cover and we move as one',
          style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 8),
        const Text(
          'Through the night, we have one shot to live another day',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 8),
        const Text(
          'We cannot let a stray gunshot give us away',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 8),
        const Text(
          'We will fight up close, seize the moment and stay in it',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 8),
        const Text(
          'It’s either that or meet the business end of a bayonet',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 8),
        const Text(
          'The code word is "Rochambeau," dig me?',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const Divider(thickness: 2, height: 24), // Pemisah sebelum teks besar
        AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: _opacity,
          child: const Text(
            'Rochambeau!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
        ),
      ],
    );
  }
}
