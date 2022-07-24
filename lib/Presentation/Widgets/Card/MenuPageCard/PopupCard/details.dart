
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../Constants/Strings/app_strings.dart';
import '../../../Button/custom_btn.dart';
class popupDetails extends StatefulWidget {
  final String? teaType;
  final String? teaDetail;
  final String? shopName;
  final String? shopAddress;
  final String? rating;
  final String? comments;
  final String? teaprice;
  final VoidCallback? tap;
  const popupDetails({
    this.teaType, this.teaDetail, this.shopName, this.shopAddress,
    this.rating, this.comments, this.teaprice,this.tap,
    Key? key}) : super(key: key);

  @override
  _popupDetailsState createState() => _popupDetailsState();
}

class _popupDetailsState extends State<popupDetails> {
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${widget.teaType}',style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF14142B),
                  ),),
                  const SizedBox(height: 8,),
                  Text('${widget.teaDetail}',style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6E7191),
                  ),),
                ],
              ),
            ),
            const SizedBox(height: 18,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${widget.shopName}',style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3E4958),
                  ),),
                  const SizedBox(height: 8,),
                  Text('${widget.shopAddress}',style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6E7191),
                  ),),
                ],
              ),
            ),
            const SizedBox(height: 24,),
            Container(
              margin: EdgeInsets.symmetric(vertical: 22),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/star.svg'),
                  const SizedBox(width: 8,),
                  Text('${widget.rating}',style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFF2994A),
                  ),),
                  const SizedBox(width: 8,),
                  Text('${widget.comments}',style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF66738F),
                  ),),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    flex:7,
                    child: Row(
                      children: [
                        InkWell(
                          onTap:(){_decrement();},
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xFFEFF0F6),
                            child: Center(child: SvgPicture.asset('assets/icons/minus.svg')),
                          ),
                        ),
                        const SizedBox(width: 14,),
                        Text('$_counter',style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF14142B),
                        ),),
                        const SizedBox(width: 14,),
                        InkWell(
                          onTap: (){_increment();},
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xFFEFF0F6),
                            child: Center(child: SvgPicture.asset('assets/icons/plus.svg')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text('${widget.teaprice}',style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFF8A00),
                  ),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 32),
              child: CustomBtn(btnText: 'Add to Cart',onpressed: (){
                Navigator.pushNamed(context, CART_PAGE);
              },),
            ),
          ],
        ),
      ),
    );
  }
}
