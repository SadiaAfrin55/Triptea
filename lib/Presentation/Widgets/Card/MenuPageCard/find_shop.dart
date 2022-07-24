
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../Constants/Colors/app_colors.dart';

class FindShopCard extends StatelessWidget {
  final Image? shopImage;
  final String? shopName;
  final String? shopLocation;
  final VoidCallback? onPressed;
  const FindShopCard({
    this.shopImage, this.shopName, this.shopLocation,this.onPressed,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 68,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: textFieldBorder,width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: shopImage),
            Expanded(
              flex: 6,
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
                flex: 1,
                child: SvgPicture.asset('assets/icons/fillLocation.svg')),
          ],
        ),
      ),
    );
  }
}

