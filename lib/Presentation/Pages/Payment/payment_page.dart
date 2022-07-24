
import 'package:flutter/material.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/Card/PaymentCard/paymentCard.dart';
class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
                        child: Text('Payment Method',style: TextStyle(
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
            body:Container(
              margin: EdgeInsets.all(25),
              child: Column(
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        PaymentMethodCard(
                          PaymentImage: Image.asset('assets/images/bkash.png',),
                          PaymentName: 'Bkash',
                          userCode: 'Use unique code',
                        ),
                        PaymentMethodCard(
                          PaymentImage: Image.asset('assets/images/nagad.png',),
                          PaymentName: 'Nagad',
                          userCode: 'Use unique code',
                        ),
                        PaymentMethodCard(
                          PaymentImage: Image.asset('assets/images/visa.png',),
                          PaymentName: 'Credit Card',
                          userCode: 'Use unique code',
                        ),
                        PaymentMethodCard(
                          PaymentImage: Image.asset('assets/images/tripWallet.png',),
                          PaymentName: 'TripTea Balance',
                          userCode: 'Use unique code',
                        ),
                      ],
                    ),
                  ),
                  CustomBtn(
                    btnText: 'Continue',
                    onpressed: (){
                      Navigator.pushNamed(context, CREDIT_CARD_PAGE);
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
