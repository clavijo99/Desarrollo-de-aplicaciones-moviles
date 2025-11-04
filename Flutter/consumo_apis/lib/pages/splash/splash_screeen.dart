import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_){
      Navigator.of(context).pushReplacementNamed('/layout');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Store', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
            SizedBox(height: 20),
            CircularProgressIndicator(color: Colors.white,),
          ],
        ),
      ),
    );
  }
}

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    super.key, this.onTap, required this.text,
  });

  final Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 5,blurRadius: 10
            )
          ],
          borderRadius: BorderRadius.circular(10)
        ),
        child: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
    );
  }
}