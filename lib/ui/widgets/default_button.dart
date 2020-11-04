import 'package:flutter/material.dart';

import 'package:flubank/ui/shared/constants.dart';

class AppDefaulButton extends StatelessWidget {
  final Function onTap;
  final String text;

  const AppDefaulButton({Key key, @required this.onTap, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FlatButton(
        height: 50,
        onPressed: onTap,
        color: AppColors.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
