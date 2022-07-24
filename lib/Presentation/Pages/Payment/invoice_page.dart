
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../Constants/Colors/app_colors.dart';
import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/Card/InvoiceCard/invoice_card.dart';
import '../../Widgets/Card/InvoiceCard/wallet_card.dart';
import '../../Widgets/TextField/creditcard_textfield.dart';
import '../../Widgets/TextField/normal_textfield.dart';
class InvoicePage extends StatefulWidget {
  const InvoicePage({Key? key}) : super(key: key);

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
 
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
                      child: Text('Invoice',style: TextStyle(
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
            margin: const EdgeInsets.symmetric(vertical: 26,horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.76,
                    child: Column(
                      children: [
                        Container(
                        width: MediaQuery.of(context).size.width,
                        height: 420,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400.withOpacity(0.2),
                                spreadRadius: 7,
                                blurRadius: 5,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 21,right:21,top: 25,bottom: 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                InvoiceCard(
                                  title: 'InvoiceCard',
                                  price: '৳25',
                                ),
                                InvoiceCard(
                                  title: 'InvoiceCard',
                                  price: '৳25',
                                ),
                                InvoiceCard(
                                  title: 'InvoiceCard',
                                  price: '৳25',
                                ),
                                InvoiceCard(
                                  title: 'InvoiceCard',
                                  price: '৳25',
                                ),

                                Container(
                                    margin: EdgeInsets.symmetric(vertical: 20),
                                    child: DottedLine()),
                                InvoiceCard(
                                  title: 'InvoiceCard',
                                  price: '৳25',
                                ),
                                InvoiceCard(
                                  title: 'InvoiceCard',
                                  price: '৳25',
                                ),
                                Container(
                                    margin: EdgeInsets.symmetric(vertical: 20),
                                    child: DottedLine()),
                                InvoiceCard(
                                  title: 'InvoiceCard',
                                  price: '৳25',
                                ),
                              ],
                            ),
                          ),
                ),
                        const SizedBox(height: 26,),
                        WalletCard(
                          balance: 'Balance: ৳500.00',
                          onPressed: (){
                            Navigator.pushNamed(context, MY_WALLET_PAGE);
                          },
                        ),
                      ],
                    ),
                  ),
                  //const SizedBox(height: 31,),
                  CustomBtn(
                    btnText: 'Continue',
                    onpressed: (){
                      Navigator.pushNamed(context, PAYMENT_SUCCESS);
                    },

                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
