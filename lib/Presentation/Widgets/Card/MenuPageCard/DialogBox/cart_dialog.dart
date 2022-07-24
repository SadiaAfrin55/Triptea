
import 'package:flutter/material.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../../../Constants/Strings/app_strings.dart';
class CartDilogCard extends StatelessWidget {
  final String? price;
  const CartDilogCard({this.price,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 7,
                child: Text('Total Price',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF08322C),
                ),),
              ),
              Text('$price',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFF8A00),
              ),),
            ],
          ),
          const SizedBox(height: 21,),
          CustomBtn(
            btnText: 'Checkout',
            onpressed: (){
               Navigator.pushNamed(context, PAYMENT_PROCESS);
            },
          ),
        ],
      ),
    );
  }
}
