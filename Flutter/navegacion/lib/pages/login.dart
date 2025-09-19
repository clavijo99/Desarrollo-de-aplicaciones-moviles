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
  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Login'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                decoration: InputDecoration(
                  label: Text('Usuarios'),
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  hintText: "example@gmail.com",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(),
                ),
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                cursorColor: Colors.purple,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  print(value);
                },
                controller: email,
              ),
            ),
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
            ButtonCustom(
              text: 'Imprimir input',
              onTap: () {
                //        Navigator.of(
                //   context,
                // ).push(MaterialPageRoute(builder: (_) => LayoutScreen()));

                print(email.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
