import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {

  final String text;

  const AppBarTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0,),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 14.0,
          letterSpacing: 3.0,
          color: Color(0xffCCD6F6),
        ),
      ),
    );
  }
}