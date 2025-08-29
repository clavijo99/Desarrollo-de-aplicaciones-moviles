import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elementos basicos', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.pink,
              alignment: Alignment.center,
              child: Text(
                'Imagen de usuario',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.pink[200],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 45,
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Text('Inicio'),
                    ),
                    Container(
                      width: double.infinity,
                      height: 45,
                      color: Colors.white,
                      child: Center(child: Text('Perfil')),
                    ),
                    Container(
                      width: double.infinity,
                      height: 45,
                      color: Colors.white,
                      child: Text('Ajustes'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.pink[300],
            child: Row(
              children: [
                Container(width: 50, height: 200, color: Colors.yellow),
                Expanded(child: Container(color: Colors.red)),
                Container(width: 50, height: 200, color: Colors.blue),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.cyan,
              child: Text('contenido', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
