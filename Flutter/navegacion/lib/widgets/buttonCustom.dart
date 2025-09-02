import 'package:flutter/material.dart';
import 'package:navegacion/pages/register.dart';

class ButtonCustom extends StatefulWidget {
  const ButtonCustom({super.key, required this.text, this.onTap});

  final String text;
  // tambin se puede usar una funcion normal
  //final Function tap;
  final GestureTapCallback? onTap;



  @override
  State<ButtonCustom> createState() => _ButtonCustomState();
}

class _ButtonCustomState extends State<ButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          //color: Colors.blue,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
          gradient: LinearGradient(
            colors: [Colors.green, Colors.pink, Colors.yellow],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Text(widget.text),
      ),
    );
  }
}
