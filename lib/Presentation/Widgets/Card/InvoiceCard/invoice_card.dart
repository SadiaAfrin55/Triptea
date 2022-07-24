
import 'package:flutter/material.dart';
class InvoiceCard extends StatelessWidget {
  final String? title;
  final String? price;
  const InvoiceCard({this.title,this.price,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$title',style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF9D97B1),
          ),),

          Text('$price',style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF19224C),
          ),),
        ],
      ),
    );
  }
}
