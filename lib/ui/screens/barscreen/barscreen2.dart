import 'package:flubank/ui/screens/home/widgets/listcardofferts.dart';
import 'package:flutter/material.dart';

class BarScreenSecond extends StatelessWidget {
  const BarScreenSecond({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Text(
            'List Offerts',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            width: double.infinity,
            child: ListCardOfferts(),
          ),
        )
      ],
    );
  }
}
