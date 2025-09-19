import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  String nombre = 'juan';


  void actualizar(){
    nombre = 'pepe';
    notifyListeners();
  }
}
