import 'package:flutter/material.dart';
import 'package:navegacion/pages/layout.dart';
import 'package:navegacion/pages/register.dart';
import 'package:navegacion/providers/login_provider.dart';
import 'package:navegacion/widgets/buttonCustom.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen._();

  static Widget init(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginProvider(),
      builder: (_, __) => LoginScreen._(),
    );
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final loginProvider = Provider.of<LoginProvider>(context);


    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Login'),
            Text(loginProvider.nombre),
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
                controller: loginProvider.email,
              ),
            ),

            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey[400]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text('Contraseña'),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '********',
                        border: InputBorder.none,
                      ),
                      controller: loginProvider.password,
                    ),
                  ),
                ],
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
                loginProvider.actualizar();
              },
            ),
          ],
        ),
      ),
    );
  }
}
