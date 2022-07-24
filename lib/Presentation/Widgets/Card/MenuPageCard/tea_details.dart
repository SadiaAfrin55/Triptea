
import 'package:flutter/material.dart';
import 'PopupCard/details.dart';
import 'PopupCard/slider.dart';
class TeaDetailsCard extends StatelessWidget {
  const TeaDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Center(
                  child: Image.asset('assets/images/milk.png',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  )
              ),
              // Container(
              //     width: MediaQuery.of(context).size.width,
              //     height: 344,
              //     color:Colors.red,
              //     child: ImageSlider(),
              // ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.clear),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color(0XFFFF8A00),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Icon(Icons.shopping_cart,color: Colors.white,),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 26,),
          const popupDetails(
            teaType:'Regular Tea',
            teaDetail:'Complex, yet smooth flavor made to order.',
            shopName:'Bhai Bhai Tea Stall',
            shopAddress:'Address: Gulasha 1, Road 24',
            rating:'4.5',
            comments:'(10k) ',
            teaprice:'৳15.00',
          )

        ],
      ),
    );
  }
}
