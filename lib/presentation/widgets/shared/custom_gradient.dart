import 'package:flutter/material.dart';

class CustomGradient extends StatelessWidget {
  final Alignment begin;
  final Alignment? end;
  final double stopInit;
  final double stopFinal;
  final Color? color1;
  final Color? color2;

  const CustomGradient({
    super.key,
    required this.begin,
    this.end,
    required this.stopInit,
    required this.stopFinal,
    this.color1,
    this.color2
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: begin,
            end: end ?? Alignment.centerRight,
            stops: [stopInit, stopFinal],
            colors: [color1 ?? Colors.transparent,color2?? Colors.black87],
          ),
        ),
      ),
    );
  }
}
