// Importamos la librería principal de Flutter que contiene
// todos los widgets de Material Design (AppBar, Scaffold, etc.)
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

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
