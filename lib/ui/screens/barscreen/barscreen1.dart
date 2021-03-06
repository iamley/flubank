import 'package:flubank/ui/screens/home/widgets/listcarditem.dart';
import 'package:flubank/ui/widgets/amount.dart';
import 'package:flutter/material.dart';

class BarScreenFirst extends StatelessWidget {
  const BarScreenFirst({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Amount(
              'Hola Leidy, tu saldo disponible es:',
              '\$',
              '100000',
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            width: double.infinity,
            child: ListCard(),
          ),
        )
      ],
    );
  }
}
