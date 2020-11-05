import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardInfo {
  final String client;
  final double saldo;
  final String currency;
  final Color startColor;
  final Color endColor;

  CardInfo(
    this.client,
    this.saldo,
    this.startColor,
    this.endColor,
    this.currency,
  );
}
