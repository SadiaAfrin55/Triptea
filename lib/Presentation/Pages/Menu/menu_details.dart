
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/Card/MenuPageCard/DialogBox/product_dialog.dart';
import '../../Widgets/Card/MenuPageCard/menu_item.dart';
import '../../Widgets/Card/MenuPageCard/tea_details.dart';
class MenuDetails extends StatefulWidget {
  const MenuDetails({Key? key}) : super(key: key);

  @override
  _MenuDetailsState createState() => _MenuDetailsState();
}

class _MenuDetailsState extends State<MenuDetails> {
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
                      child: Text('Menu List',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF374151),
                      ),),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset('assets/icons/search.svg')
                      )),
                ],
              ),
            ),
          ),
         body: Container(
           padding: EdgeInsets.symmetric(vertical: 2,horizontal: 8),
           child: ListView.builder(
             itemCount: 12,
             itemBuilder: (context,index){
               return MenuItemCard(
                 onPressed: (){
                   ShowMenuDetails(context);
                 },
                 shopImage: 'assets/images/greentea.png',
                 shopName: 'Orange Tea',
                 shopLocation: 'Simplicity itself',
                 price: '৳15.00',
               );
             },

           ),
         ),
        ),
      ),
    );
  }
}

void ShowMenuDetails(BuildContext context){
   showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height*0.9,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                TeaDetailsCard()
              ],
            ),
          ),
        );
      });
}