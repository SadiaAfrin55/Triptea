
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Widgets/Card/HomeCard/home_card.dart';
import '../../Widgets/TextField/search_textdield.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      //E5E5E5
      color: Color(0xFFE5E5E5),
        child: SafeArea(
            child: Scaffold(
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
                            child: SvgPicture.asset('assets/icons/menudrawer.svg'),
                          )),
                      const SizedBox(width: 17,),
                      Expanded(
                        flex: 19,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Current Location',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF374151),
                            ),),
                            Text('Gulshan 1',style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF26A59A),
                            ),),
                          ],
                        ),
                      ),
                      SvgPicture.asset('assets/icons/notification-home.svg')
                    ],
                  ),
                ),
              ),
              backgroundColor: Colors.white,
              body: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SearchTextField(
                        lable: 'Search',
                        prefIcon: Icon(Icons.search),
                        readOnly: false,
                        controller: searchController,
                      ),
                      const SizedBox(height: 20,),
                      Center(child: SvgPicture.asset('assets/images/homeBanner.svg')),
                      const SizedBox(height: 20,),
                      Text('Most Popular',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),),
                      const SizedBox(height: 12,),
                      SizedBox(
                        height: 226,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,i){
                            return Container(
                              margin: EdgeInsets.only(right: 16),
                              child: HomeCard(
                                storeName: 'Bhai Bhai Tea Stall',
                                storeLocation: 'Gulshan 1, Road: 24',
                              ),
                            );
                          }
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
        )
    );
  }
}
