
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:triptea/Constants/Colors/app_colors.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../../Constants/Colors/app_colors.dart';
import '../../../../Constants/Strings/app_strings.dart';
class ShopDetails extends StatefulWidget {
  const ShopDetails({Key? key}) : super(key: key);

  @override
  _ShopDetailsState createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            elevation: 1.0,
            title: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back,color: Colors.black,size: 24,)),
                  const Text('Bhai bhai Tea Stall',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF374151),
                  ),),
                  SvgPicture.asset('assets/icons/saved.svg'),
                ],
              ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade300,
                        image: const DecorationImage(
                          image: AssetImage("assets/images/shopDetails.png"),
                          fit: BoxFit.fitWidth,
                        ),
                      ),

                  ),
                  Container(
                    height: 66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: textFieldBorder,width: 1),
                      color:Color(0xFFF2F2F2)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/fillLocation.svg',color:Color(0xFFFF3D00),height: 16,),
                              const SizedBox(width: 7,),
                              const Text('Dhaka',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF637875)
                              ),)
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/telegram.svg'),
                              const SizedBox(width: 7,),
                              const Text('1.5 km',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF637875)
                              ),)
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/correct.svg'),
                              const SizedBox(width: 7,),
                              const Text('Open',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF637875)
                              ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 26,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            const Text('About',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: blackLight
                            ),),
                            const SizedBox(height: 6,),
                            RichText(
                              text: const TextSpan(
                                children: <TextSpan>[
                                  TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Libero, vivamus pharetra ut\nfaucibus in odio scelerisque morbi... ',
                                      style: TextStyle(
                                        fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color:Color(0xFF637875)
                                      )),
                                  TextSpan(text: 'Read more',
                                      style: TextStyle(
                                        fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: btnColor
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                             Text('Opening hours',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: blackLight
                              ),),
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset('assets/icons/time.svg'),
                                        const SizedBox(width: 5,),
                                        Text('09:00 am - 22:00 pm',style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: blackLight
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset('assets/icons/calender.svg'),
                                        const SizedBox(width: 5,),
                                        Text('Monday - Sunday',style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: blackLight
                                        ),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              Text('Contact',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: blackLight
                              ),),
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset('assets/icons/phone.svg'),
                                        const SizedBox(width: 5,),
                                        Text('021 666 888',style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF1FA7B0)
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Row(
                                      children: [
                                        Image.asset('assets/icons/ssmedia.png'),
                                        const SizedBox(width: 5,),
                                        Text('+62 123 456 789',style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF1FA7B0)
                                        ),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          width: MediaQuery.of(context).size.width*0.95,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              Text('Address',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: blackLight
                              ),),
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset('assets/icons/fillLocation.svg',color:Color(0xFFFF3D00),height: 16,),
                                        const SizedBox(width: 5,),
                                        Text('Gulshan 1, Road 24 Dhaka, Bangladesh',style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: blackLight
                                        ),),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                              const SizedBox(height: 10,),
                              Image.asset('assets/icons/map.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, MENU_DETAILS);
                          },
                          child: CustomBtn(btnText: 'Go to Menu',))),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
