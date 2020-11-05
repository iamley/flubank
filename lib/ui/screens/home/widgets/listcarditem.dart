import 'package:flubank/core/models/cardinfo.dart';
import 'package:flubank/ui/screens/home/widgets/custompinter.dart';
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key key}) : super(key: key);
  final double _borderRadius = 24;
  @override
  Widget build(BuildContext context) {
    final items = [
      CardInfo('Carrulla', 250000, Color(0xff6DC8F3), Color(0xff73A1F9), '\$'),
      CardInfo(
          'Domicilios.com', 57000, Color(0xffFFB157), Color(0xffFFA057), '\$'),
      CardInfo('Recarga desde bancolombia', 600000, Color(0xff42E695),
          Color(0xff3BB2B8), '\$'),
      CardInfo('Udemy online Courses', 45750, Color(0xffFF5B95),
          Color(0xffF8556D), '\$'),
      CardInfo('Recarga Nequi pse', 200000, Color(0xffD76EF5),
          Color(0xff8F7AFE), '\$'),
      CardInfo(
          'Uber* Pending', 19900, Color(0xff92d0d0), Color(0xff567777), '\$'),
    ];
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    gradient: LinearGradient(colors: [
                      items[index].startColor,
                      items[index].endColor
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    boxShadow: [
                      BoxShadow(
                        color: items[index].endColor,
                        blurRadius: 12,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: CustomPaint(
                    size: Size(100, 150),
                    painter: CustomCardShapePainter(_borderRadius,
                        items[index].startColor, items[index].endColor),
                  ),
                ),
                Positioned.fill(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Icon(Icons.person_outline),
                        flex: 1,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Pago en',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              items[index].client,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Avenir',
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: <Widget>[
                                Flexible(
                                  child: Text(
                                    'Tienes un movimiento por: ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Avenir',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              items[index].saldo.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Avenir',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.attach_money,
                              color: Colors.white,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
