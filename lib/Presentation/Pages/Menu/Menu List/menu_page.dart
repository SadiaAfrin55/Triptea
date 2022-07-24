
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../Constants/Colors/app_colors.dart';
import '../../../../Constants/Strings/app_strings.dart';
import '../../../Widgets/Card/MenuPageCard/find_shop.dart';
class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
            title: const Text('Menu List',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF374151),
            ),),
            centerTitle: true,
            leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,color: Color(0xFF1F2937),),
            ),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context,index){
                return FindShopCard(
                  onPressed: (){
                    Navigator.pushNamed(context, SHOP_DETAILS);
                  },
                  shopImage: Image.asset('assets/images/shop.png'),
                  shopName: 'Bhai Bhai Tea Stall',
                  shopLocation: 'Gulshan 1, Road: 24',
                );
              },

            ),
          ),
        ),
      ),
    );
  }
}
