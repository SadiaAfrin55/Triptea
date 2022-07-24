
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../Constants/Colors/app_colors.dart';

class MenuItemCard extends StatelessWidget {
  final String? shopImage;
  final String? shopName;
  final String? shopLocation;
  final String? price;
  final VoidCallback? onPressed;
  const MenuItemCard({
    this.shopImage, this.shopName, this.shopLocation,this.onPressed,this.price,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 4),
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          //border: Border.all(color: Color(0xFFEEEEEF),width: 1),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFBBBBBB).withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 12,
              offset: Offset(-2, 10), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                    height: 65,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(shopImage!),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )
            ),
            const SizedBox(width: 24,),
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$shopName',style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: shopColor
                  ),),
                  Text('$shopLocation',style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6E7191)
                  ),),
                ],
              ),
            ),
            Expanded(
                flex: 3,
                child: Text('$price',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: shopColor
                ),)),
            Expanded(
                flex: 1,
                child: SvgPicture.asset('assets/icons/shoppingcart.svg')),
          ],
        ),
      ),
    );
  }
}

