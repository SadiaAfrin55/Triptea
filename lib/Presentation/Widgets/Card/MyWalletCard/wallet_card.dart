

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../Constants/Colors/app_colors.dart';

class TransectionCard extends StatelessWidget {
  final String? title;
  final String? month;
  final String? time;
  final String? price;
  final VoidCallback? onPressed;
  const TransectionCard({
    this.title, this.month, this.time,this.onPressed,this.price,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 67,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Color(0xFFE7E7E7),width: 1),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFBBBBBB).withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$title',style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
                Row(
                  children: [
                    Text('$month, ',style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF747474)
                    ),),
                    Text('$time',style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF747474)
                    ),),
                  ],
                ),
              ],
            ),
            Text('$price',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFF8A00)
            ),),

          ],
        ),
      ),
    );
  }
}

