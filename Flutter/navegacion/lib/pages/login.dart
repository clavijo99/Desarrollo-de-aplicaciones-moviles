import 'package:flutter/material.dart';
import 'package:navegacion/pages/layout.dart';
import 'package:navegacion/pages/register.dart';
import 'package:navegacion/widgets/buttonCustom.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Login'),
            ButtonCustom(
              text: 'Registrar',
              onTap: () {
                //        Navigator.of(
                //   context,
                // ).push(MaterialPageRoute(builder: (_) => RegisterScreen()));
                Navigator.of(context).pushNamed('/register-screen');
              },
            ),
            ButtonCustom(
              text: 'Ir al home',
              onTap: () {
                //        Navigator.of(
                //   context,
                // ).push(MaterialPageRoute(builder: (_) => LayoutScreen()));

                Navigator.of(
                  context,
                ).pushNamed('/layout-screen', arguments: "Hola desde el login");
              },
            ),
          ],
        ),
      ),
    );
  }
}
