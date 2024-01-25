import 'package:flutter/material.dart';
import 'package:soglink/theme.dart';

class ButtonPrime extends StatelessWidget {
  final String text;
  final Function()? onTap;

ButtonPrime({this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 130,
      height: 60,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(text,
          style: regularTextStyle.copyWith(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(142, 160, 171, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
