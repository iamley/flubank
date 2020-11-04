import 'package:flubank/ui/shared/constants.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.image,
    @required this.text,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'FluBank',
          style: TextStyle(
            fontSize: 40,
<<<<<<< HEAD:lib/ui/screens/splash/widgets/splash_content.dart
            //color: Theme.of(context).canvasColor,
=======
>>>>>>> f44785bdcfe57961b780590c74d69105fad895e6:lib/screens/splash/widgets/splash_content.dart
            color: AppColors.mainColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6,
        ),
        Spacer(),
        Image.asset(image)
      ],
    );
  }
}
