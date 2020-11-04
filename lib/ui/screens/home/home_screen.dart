import 'package:flubank/ui/shared/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'homeScreen';
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Inicio'),
        // bottom: PreferredSize(
        //   child: RaisedButton(
        //     color: AppColors.mainColor,
        //     child: Text(
        //       'Cerrar cesión',
        //       style: TextStyle(color: Colors.white),
        //     ),
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //   ),
        //   preferredSize: Size.fromHeight(1.0),
        // ),
      ),
      body: ListView(
        children: <Widget>[miCard()],
      ),
    );
  }
}

Card miCard() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Hola Leidy,'),
          subtitle: Text('Este es tu saldo disponible:'),
        ),
      ],
    ),
  );
}
