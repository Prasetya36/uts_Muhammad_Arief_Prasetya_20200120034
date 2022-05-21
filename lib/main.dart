import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Muhammad Arief Prasetya')),
        backgroundColor: Colors.grey[300],
        body: Center(
          // ignore: sized_box_for_whitespace
          child: Container(
            width: 150,
            height: 150,
            child: const Icon(Icons.airplanemode_active_rounded, size: 50),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[500]!,
                      offset: const Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                ]),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.grey[300]!,
          animationDuration: const Duration(milliseconds: 300),
          items: const [
            Icon(Icons.home),
            Icon(Icons.favorite),
            Icon(Icons.settings),
          ],
        ));
  }
}
