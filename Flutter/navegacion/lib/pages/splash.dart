import 'package:flutter/material.dart';
import 'package:navegacion/pages/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    Future.delayed( Duration( seconds: 3 ) , () {
      Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (_) => LoginScreen() ) );
    } );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/imagenes/fondo-splash.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 100,
              ), // all() - todos los lados, only() - me permite eliger donde aplicar el padding, symmetry() - horizontal o vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Cargando",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  SizedBox(height: 20,),
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
