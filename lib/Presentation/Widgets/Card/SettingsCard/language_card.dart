
import 'package:flutter/material.dart';
class LanguageCard extends StatelessWidget {
  final Image? flag;
  final String? country;
  const LanguageCard({
    this.flag,this.country,
    Key? key}) : super(key: key);

  final int _value = 0;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color(0xFF62D8C0),width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$country',style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF000000)
          ),),
          Container(
            child: flag,
          ),

        ],
      ),
    );
  }
}
