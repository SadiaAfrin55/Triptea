
import 'package:flutter/material.dart';

import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/Card/MenuPageCard/DialogBox/cart_dialog.dart';
import '../../Widgets/Card/MenuPageCard/cart_card.dart';
class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

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
                      child: Text('Cart',style: TextStyle(
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
            margin: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CartCard(
                    onPressed: (){
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height*0.28,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  CartDilogCard(
                                    price: '৳60.00',
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    teaImage: Image.asset('assets/images/shopTwo.png',),
                    teaName: 'Orange Tea',
                    teaLocation: '৳25',
                  ),
                  CartCard(
                    onPressed: (){
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height*0.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  CartDilogCard(
                                    price: '৳60.00',
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    teaImage: Image.asset('assets/images/shopTwo.png',),
                    teaName: 'Orange Tea',
                    teaLocation: '৳25',
                  ),
                  CartCard(
                    onPressed: (){
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height*0.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  CartDilogCard(
                                    price: '৳60.00',
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    teaImage: Image.asset('assets/images/shopTwo.png',),
                    teaName: 'Orange Tea',
                    teaLocation: '৳25',
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showBottomBar(){

  }
}
