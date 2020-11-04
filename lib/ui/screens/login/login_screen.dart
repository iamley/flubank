import 'package:flubank/ui/shared/constants.dart';
import 'package:flubank/ui/screens/login/widgets/content.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = 'loginPage';
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Inicio de sesión'),
      ),
      body: LoginScreenContent(),
    );
  }
}
