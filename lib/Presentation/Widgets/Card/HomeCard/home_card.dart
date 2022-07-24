
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeCard extends StatelessWidget {
  final String? storeName;
  final String? storeLocation;
  const HomeCard({this.storeName,this.storeLocation,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.5,
      height: 206,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xFFE7E7E7),width: 1),
        color: Colors.white,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                //color: Colors.lightBlue,
                child: Image.asset('assets/images/homeCard.png',
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  fit: BoxFit.fill,
                )),
            const SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('$storeName',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF14142B),
                    ),),
                    Text('$storeLocation',style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF6E7191),
                    ),),
                  ],
                ),
                SvgPicture.asset('assets/icons/fillLocation.svg',
                color: Color(0xFF26A59A),height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
