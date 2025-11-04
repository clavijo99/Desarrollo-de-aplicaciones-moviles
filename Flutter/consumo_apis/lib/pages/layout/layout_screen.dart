import 'package:consumo_apis/const/forms/validators.dart';
import 'package:consumo_apis/pages/splash/splash_screeen.dart';
import 'package:consumo_apis/widgets/input_custom.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonCustom(
              text: 'hello',
              onTap: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // Form is valid, you can proceed with the action
                  print('Form is valid. Input value: ${_textController.text}');
                }
              },
            ),
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputCustom(
                hintText: 'hello',
                backgroundColor: Colors.red,
                validator: validateNumericString,
                controller: _textController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}