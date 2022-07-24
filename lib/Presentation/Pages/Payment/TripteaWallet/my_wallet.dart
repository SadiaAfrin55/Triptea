
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
import '../../../Widgets/Card/MyWalletCard/wallet_card.dart';
import '../../../Widgets/TextField/creditcard_textfield.dart';
import '../../../Widgets/TextField/normal_textfield.dart';
class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {

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
                      child: Text('My Wallet',style: TextStyle(
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
            margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 14),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Image.asset('assets/images/card.png',)),
                  const SizedBox(height: 29,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Your transactions',style:TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF19224C),
                      ),),
                      IconButton(
                          onPressed: (){
                            Navigator.pushNamed(context, ADD_BALANCE);
                          },
                          icon: const Icon(Icons.arrow_forward_ios_outlined,
                          color: Color(0xFF19224C),
                          ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 21,),
                  TransectionCard(
                    title: '#T22149',
                    month: 'May',
                    time: '12:37am',
                    price: '-৳170.00',
                  ),
                  TransectionCard(
                    title: '#T22149',
                    month: 'May',
                    time: '12:37am',
                    price: '-৳170.00',
                  ),
                  TransectionCard(
                    title: '#T22149',
                    month: 'May',
                    time: '12:37am',
                    price: '-৳170.00',
                  ),
                  TransectionCard(
                    title: '#T22149',
                    month: 'May',
                    time: '12:37am',
                    price: '-৳170.00',
                  ),
                  TransectionCard(
                    title: '#T22149',
                    month: 'May',
                    time: '12:37am',
                    price: '-৳170.00',
                  ),
                  TransectionCard(
                    title: '#T22149',
                    month: 'May',
                    time: '12:37am',
                    price: '-৳170.00',
                  ),
                  TransectionCard(
                    title: '#T22149',
                    month: 'May',
                    time: '12:37am',
                    price: '-৳170.00',
                  ),
                  TransectionCard(
                    title: '#T22149',
                    month: 'May',
                    time: '12:37am',
                    price: '-৳170.00',
                  ),
                  TransectionCard(
                    title: '#T22149',
                    month: 'May',
                    time: '12:37am',
                    price: '-৳170.00',
                  ),
                  TransectionCard(
                    title: '#T22149',
                    month: 'May',
                    time: '12:37am',
                    price: '-৳170.00',
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
