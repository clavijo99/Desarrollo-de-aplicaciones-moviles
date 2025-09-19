import 'package:flutter/material.dart';
import 'package:navegacion/const/routes/clientes.dart';
import 'package:navegacion/pages/layout.dart';
import 'package:navegacion/pages/login.dart';
import 'package:navegacion/pages/register.dart';
import 'package:navegacion/pages/splash.dart';

import 'package:navegacion/const/routes/main.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //home: SplashScreen(),
      initialRoute: '/',
      routes: {
         '/': (context) => SplashScreen(),
         '/login-screen': (context) => LoginScreen(),
         '/register-screen': (context) => RegisterScreen(),
         '/layout-screen': (context) => LayoutScreen()
        // ...mainRoutes(context),
        // ...clientesRoutes(context),
      },
    );
  }
}
