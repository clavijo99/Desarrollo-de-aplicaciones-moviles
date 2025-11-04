import 'package:consumo_apis/pages/layout/layout_screen.dart';
import 'package:consumo_apis/pages/splash/splash_screeen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes : {
        '/': (_) => SplashScreen(),
        '/layout': (_) => LayoutScreen()
      }
    );
  }
}
