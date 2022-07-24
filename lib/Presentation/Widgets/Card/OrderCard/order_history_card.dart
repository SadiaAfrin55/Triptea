
import 'package:flutter/material.dart';

import '../../Button/custom_borderbtn.dart';
import '../../Button/custom_fillbtn.dart';
class OrderHistoryCard extends StatelessWidget {
  final String? code;
  final String? month;
  final String? time;
  final Image? img;
  final String? teaname;
  final String? teapricede;
  final String? totalprice;
  final VoidCallback? complain;
  final VoidCallback? reorder;
  const OrderHistoryCard({
    this.code,
    this.month,
    this.time,
    this.img,
    this.teaname,
    this.teapricede,
    this.totalprice,
    this.complain,
    this.reorder,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 17),
      width: MediaQuery.of(context).size.width,
      height: 295,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFF26A59A).withOpacity(0.2)),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$code',style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color:Color(0xFF000000),
                ),),
                Row(
                  children: [
                    Text('$month',style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color:Color(0xFF747474),
                    ),),
                    Text('$time',style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color:Color(0xFF747474),
                    ),),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Divider(thickness: 2,color: Color(0xFF26A59A).withOpacity(0.2),),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: Center(child: img,),
                ),
                const SizedBox(width: 9,),
                Expanded(
                  flex: 9,
                  child: Text('$teaname',style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color:Color(0xFF000000),
                  ),),
                ),
                Expanded(
                  flex: 3,
                  child: Text('$teapricede',style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color:Color(0xFF000000),
                  ),),
                ),
              ],
            ),
            const SizedBox(height: 21),
            Divider(thickness: 2,color: Color(0xFF26A59A).withOpacity(0.2),),
            const SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 11,
                  child: Text('Grand Total',style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color:Color(0xFF000000),
                  ),),
                ),
                Expanded(
                  flex: 3,
                  child: Text('$totalprice',style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color:Color(0xFF000000),
                  ),),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 22),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: CustomBorderBtn(
                      btnText: 'Complain',
                      onpressed: complain,
                    ),
                  ),
                  const SizedBox(width: 14,),
                  Expanded(
                    flex: 4,
                    child: CustomFillBtn(
                      btnText: 'Re-Order',
                      onpressed: reorder,
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
