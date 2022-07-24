
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../../Constants/Colors/app_colors.dart';
import '../../../../Constants/Strings/app_strings.dart';
import '../../../Widgets/Card/InvoiceCard/invoice_card.dart';
import '../../../Widgets/Card/InvoiceCard/wallet_card.dart';
import '../../../Widgets/TextField/creditcard_textfield.dart';
import '../../../Widgets/TextField/normal_textfield.dart';
import '../../../Widgets/TextField/underline_textfield.dart';
class AddBalance extends StatefulWidget {
  const AddBalance({Key? key}) : super(key: key);

  @override
  State<AddBalance> createState() => _AddBalanceState();
}

class _AddBalanceState extends State<AddBalance> {
  TextEditingController amountController= TextEditingController();
  TextEditingController msgController= TextEditingController();

  bool containerOne = false;
  bool containerTwo = false;
  bool containerThree = false;
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
            elevation: 1,
            title: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 1,
                      child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back,color: Color(0xFF1F2937),)
                      )),
                  const Expanded(
                    flex: 18,
                    child: Center(
                      child: Text('Add to Balance',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF374151),
                      ),),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 26),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.76,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400.withOpacity(0.2),
                                spreadRadius: 9,
                                blurRadius: 5,
                                offset: Offset(0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Enter amount',style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF19224C),
                                    ),),
                                    underlineTextField(lable:'৳0',readOnly: false,controller: amountController,),
                                  ],
                                ),
                                const SizedBox(height: 15,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('or quick choice',style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF9D97B1),
                                    ),),
                                    const SizedBox(height: 12,),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            onTap:(){
                                              setState(() {
                                               containerOne = !containerOne;
                                                print('clicked');
                                              });
                                            },
                                            child: Container(
                                              width: 84,
                                              height: 28,
                                              decoration: BoxDecoration(
                                                color:containerOne?btnColor:Colors.transparent,
                                                border: Border.all(color: Color(0xFFE6E6F4),width: 1),
                                                borderRadius: BorderRadius.circular(15)
                                              ),
                                              child: Center(
                                                child: Text('৳10',style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: containerOne?Colors.white:Color(0xFF19224C)
                                                ),),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap:(){
                                              setState(() {
                                                containerTwo = !containerTwo;
                                                print('clicked');
                                              });
                                            },
                                            child: Container(
                                              width: 84,
                                              height: 28,
                                              decoration: BoxDecoration(
                                                  color:containerTwo?btnColor:Colors.transparent,
                                                  border: Border.all(color: Color(0xFFE6E6F4),width: 1),
                                                  borderRadius: BorderRadius.circular(15)
                                              ),
                                              child: Center(
                                                child: Text('৳50',style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: containerTwo?Colors.white:Color(0xFF19224C)
                                                ),),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap:(){
                                              setState(() {
                                                containerThree = !containerThree;
                                                print('clicked');
                                              });
                                            },
                                            child: Container(
                                              width: 84,
                                              height: 28,
                                              decoration: BoxDecoration(
                                                  color:containerThree?btnColor:Colors.transparent,
                                                  border: Border.all(color: Color(0xFFE6E6F4),width: 1),
                                                  borderRadius: BorderRadius.circular(15)
                                              ),
                                              child: Center(
                                                child: Text('৳100',style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: containerThree?Colors.white:Color(0xFF19224C)
                                                ),),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Your message',style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF19224C),
                                    ),),
                                    underlineTextField(lable:'Content',readOnly: false,controller: msgController,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //const SizedBox(height: 50,),
                  CustomBtn(
                    btnText: 'Continue',
                    onpressed: (){
                      Navigator.pushNamed(context, PAYMENT_PAGE);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
