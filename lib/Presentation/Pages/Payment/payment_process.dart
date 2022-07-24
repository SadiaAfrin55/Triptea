
import 'package:flutter/material.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/Card/PaymentCard/paymentCard.dart';
import '../../Widgets/Card/PaymentCard/payment_process.dart';
class PaymentProcess extends StatefulWidget {
  const PaymentProcess({Key? key}) : super(key: key);

  @override
  _PaymentProcessState createState() => _PaymentProcessState();
}

class _PaymentProcessState extends State<PaymentProcess> {
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
                        PaymentProcessCard(
                          PaymentImage: Image.asset('assets/images/bkash.png',),
                          PaymentName: 'Pick-up',
                        ),
                        PaymentProcessCard(
                          PaymentImage: Image.asset('assets/images/nagad.png',),
                          PaymentName: 'Delivery',
                        ),
                      ],
                    ),
                  ),
                  CustomBtn(
                    btnText: 'Continue',
                    onpressed: (){
                      Navigator.pushNamed(context, PAYMENT_PAGE);
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
