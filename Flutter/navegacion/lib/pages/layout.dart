import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  String? texto;
  int count = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      texto = ModalRoute.of(context)!.settings.arguments as String;
      print(texto);
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(texto ?? "El texto aun no se obtiene"),
            Text(count.toString()),
            CupertinoButton(
              child: Icon(Icons.add),
              onPressed: () {
                print(count);
                setState(() {
                  count++;
                });
              },
            ),
            CupertinoButton(
              child: Icon(Icons.remove),
              onPressed: () {
                print(count);
                setState(() {
                  count--;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
