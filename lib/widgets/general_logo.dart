import 'package:flutter/material.dart';

class GeneralLogo extends StatelessWidget {

  
  const GeneralLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Image.asset('lib/icons/logo.png',
          width: 130,),
        ],
      ),
    );
  }
}