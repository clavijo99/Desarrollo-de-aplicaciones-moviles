import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // obtener el tamaño de mi pantalla
    final size = MediaQuery.of(context).size;

    print('width: ${size.width} heigth: ${size.height} ');

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        //leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.add, color: Colors.pink, size: 34),
          Icon(Icons.remove),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(height: 200, color: Colors.pink),
            Expanded(flex: 3, child: Container(color: Colors.blue)),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                color: Colors.purple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(width: 50, height: 50, color: Colors.yellow),
                    Container(width: 50, height: 50, color: Colors.yellow),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                color: Colors.cyan,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: 50, height: 50, color: Colors.yellow),
                    Container(width: 50, height: 50, color: Colors.yellow),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.pink[200],
        child: Stack(
          children: [
            Positioned.fill(child: Container(color: Colors.blue, width: 100, height: 100)),
            Positioned( bottom: 0, right: 10, child: Container(color: Colors.red, width: 200, height: 200)),
            Positioned( top: 100, left: 50, child: Container(color: Colors.white, width: 150, height: 150)),
          ],
        ),
      ),
    );
  }
}

class ButtonCustom extends StatefulWidget {
  const ButtonCustom({super.key});

  @override
  State<ButtonCustom> createState() => _ButtonCustomState();
}

class _ButtonCustomState extends State<ButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
