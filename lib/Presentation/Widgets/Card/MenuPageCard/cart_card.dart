
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../Constants/Colors/app_colors.dart';

class CartCard extends StatefulWidget {
  final Image? teaImage;
  final String? teaName;
  final String? teaLocation;
  final VoidCallback? onPressed;
  const CartCard({
    this.teaImage, this.teaName, this.teaLocation,this.onPressed,
    Key? key}) : super(key: key);

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int _counter = 1;
  void _increment(){
    setState(() {
      _counter++;
    });
  }
  void _decrement(){
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Color(0xFFEEEEEF),width: 1),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFBBBBBB).withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 7,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(child: widget.teaImage),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${widget.teaName}',style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: shopColor
                  ),),
                  Text('${widget.teaLocation}',style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFF8A00)
                  ),),
                ],
              ),
            ),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    InkWell(
                      onTap:(){_decrement();},
                      child: CircleAvatar(
                        radius: 17,
                        backgroundColor: Color(0xFFFFEAEA),
                        child: Center(child: SvgPicture.asset('assets/icons/minus.svg',color:Color(0xFFFF2222),)),
                      ),
                    ),
                    const SizedBox(width: 14,),
                    Text('$_counter',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF14142B),
                    ),),
                    const SizedBox(width: 14,),
                    InkWell(
                      onTap: (){_increment();},
                      child: CircleAvatar(
                        radius: 17,
                        backgroundColor: Color(0xFFD4EDEB),
                        child: Center(child: SvgPicture.asset('assets/icons/plus.svg',color: Color(0xFF26A59A),)),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

