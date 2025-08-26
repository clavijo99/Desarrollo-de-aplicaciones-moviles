// Importamos la librería principal de Flutter que contiene
// todos los widgets de Material Design (AppBar, Scaffold, etc.)
import 'package:flutter/material.dart';

// Punto de entrada de la aplicación
void main() {
  // runApp() recibe el widget raíz de la aplicación
  runApp(const MyApp());
}

// Widget principal de la app
// Es un StatelessWidget porque no guarda estado
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp configura la aplicación completa
    return MaterialApp(
      title: 'Aprendiendo flutter', // Título de la app
      debugShowCheckedModeBanner: false, // Quita la etiqueta "Debug"
      theme: ThemeData(
        // Define el tema de colores de la app
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: HomeScreen(), // Pantalla principal
    );
  }
}

// Pantalla principal
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener tamaño de la pantalla con MediaQuery
    final size = MediaQuery.of(context).size;
    print('width: ${size.width} heigth: ${size.height}');

    // Scaffold es la estructura base de la pantalla
    return Scaffold(
      // Barra superior
      appBar: AppBar(
        title: Text(
          "Aprendiendo flutter",
          style: TextStyle(
            color: Colors.white, // Texto blanco
            fontSize: 20, // Tamaño de texto
            fontWeight: FontWeight.bold, // Negrita
          ),
        ),
        backgroundColor: Colors.blue, // Fondo de la AppBar
        // Íconos en el lado derecho
        actions: [
          Icon(Icons.add, color: Colors.pink, size: 34),
          Icon(Icons.remove),
        ],
      ),

      // Drawer: menú lateral que aparece al deslizar desde la izquierda
      drawer: Drawer(
        child: Column(
          children: [
            Container(height: 200, color: Colors.pink), // Bloque rosa
            Expanded(
              flex: 3,
              child: Container(color: Colors.blue),
            ), // Bloque azul
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                color: Colors.purple,
                // Dentro del bloque púrpura usamos un Column
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
                // Dentro del bloque cyan usamos un Row
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

      // Body: contenido principal de la pantalla
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.pink[200], // Fondo rosado claro
        // Stack permite apilar widgets uno encima de otro
        child: Stack(
          children: [
            // Ocupa toda la pantalla (azul)
            Positioned.fill(
              child: Container(color: Colors.blue, width: 100, height: 100),
            ),
            // Caja roja en la parte inferior derecha
            Positioned(
              bottom: 0,
              right: 10,
              child: Container(color: Colors.red, width: 200, height: 200),
            ),
            // Caja blanca en la parte superior izquierda
            Positioned(
              top: 100,
              left: 50,
              child: Container(color: Colors.white, width: 150, height: 150),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Contact'),

        ],
        // color al item selecionado
        selectedItemColor: Colors.blue,
        // color a los items sin selecionar
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(
          color: Colors.black
        ),
        // color del texto selecionado
        selectedLabelStyle: TextStyle(
          color: Colors.blue,
        ),
        // repartir el espacio en candidades iguales
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

// Ejemplo de un botón personalizado (aún vacío)
// StatefulWidget porque en un futuro podría tener lógica
class ButtonCustom extends StatefulWidget {
  const ButtonCustom({super.key});

  @override
  State<ButtonCustom> createState() => _ButtonCustomState();
}

class _ButtonCustomState extends State<ButtonCustom> {
  @override
  Widget build(BuildContext context) {
    // Por ahora solo un contenedor vacío
    return Container();
  }
}
