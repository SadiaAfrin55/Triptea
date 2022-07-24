
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Constants/Colors/app_colors.dart';
import '../../Widgets/Card/OrderCard/order_history_card.dart';
import '../../Widgets/Card/OrderCard/order_ongoing_card.dart';
import '../../Widgets/TextField/comment_textfield.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>  with SingleTickerProviderStateMixin{
  late TabController _tabController;
  TextEditingController commentController= TextEditingController();

  @override
  void initState() {
    _tabController =  TabController(length:2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                ),
                const Expanded(
                  flex: 4,
                  child: Center(
                    child: Text('Order',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF374151),
                    ),),
                  ),
                ),
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('assets/icons/search.svg')
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: DefaultTabController(
                    length: 2,
                    child: Container(
                      padding:const EdgeInsets.symmetric(horizontal: 5,vertical: 20),
                      width: MediaQuery.of(context).size.width,
                      height:50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                //padding:const EdgeInsets.symmetric(vertical: 30),
                                margin:const EdgeInsets.symmetric(horizontal: 0),
                                decoration: BoxDecoration(
                                  color:Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade200.withOpacity(0.5),
                                      spreadRadius: 7,
                                      blurRadius: 7,
                                      offset: Offset(0, 5), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child:TabBar(
                                  controller: _tabController,
                                  labelColor: Colors.white,
                                  unselectedLabelColor: Colors.black,
                                  indicator: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color:Color(0xFF26A59A), width: 0.5),
                                    // Creates border
                                    color: Color(0xFFE9F6F5),
                                  ),
                                  tabs: const [
                                    Tab(
                                        child: Text('Ongoing',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF26A59A),
                                          ),
                                        )
                                    ),
                                    Tab(
                                        child: Text('History',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF26A59A),
                                          ),
                                        )
                                    ),
                                  ],
                                )
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Expanded(
                            flex: 18,
                            child: TabBarView(
                                controller: _tabController,
                                children: [
                                  Container(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children:  [
                                          OrderOngoingCard(
                                            code: '#T22149',
                                            month: 'May, ',
                                            time: '12:37am',
                                            img: Image.asset('assets/images/milktea.png',fit: BoxFit.fill,),
                                            teaname: 'Regular Tea (3X)',
                                            teapricede: '৳45.00',
                                            totalprice: '৳170.00',
                                            complain: (){
                                              showAlertDialog(context);
                                            },
                                          ),
                                          OrderOngoingCard(
                                            code: '#T221410',
                                            month: 'May, ',
                                            time: '12:37am',
                                            img: Image.asset('assets/images/milktea.png',fit: BoxFit.fill,),
                                            teaname: 'Regular Tea (3X)',
                                            teapricede: '৳45.00',
                                            totalprice: '৳170.00',
                                          ),
                                          OrderOngoingCard(
                                            code: '#T221411',
                                            month: 'May, ',
                                            time: '12:37am',
                                            img: Image.asset('assets/images/milktea.png',fit: BoxFit.fill,),
                                            teaname: 'Regular Tea (3X)',
                                            teapricede: '৳45.00',
                                            totalprice: '৳170.00',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children:  [
                                          OrderHistoryCard(
                                            code: '#T229',
                                            month: 'May, ',
                                            time: '12:37am',
                                            img: Image.asset('assets/images/milktea.png',fit: BoxFit.fill,),
                                            teaname: 'Regular Tea (3X)',
                                            teapricede: '৳45.00',
                                            totalprice: '৳170.00',
                                            complain: (){
                                              showAlertDialog(context);
                                            },
                                            reorder: (){},
                                          ),
                                          OrderHistoryCard(
                                            code: '#T2210',
                                            month: 'May, ',
                                            time: '12:37am',
                                            img: Image.asset('assets/images/milktea.png',fit: BoxFit.fill,),
                                            teaname: 'Regular Tea (3X)',
                                            teapricede: '৳45.00',
                                            totalprice: '৳170.00',
                                          ),
                                          OrderHistoryCard(
                                            code: '#T2211',
                                            month: 'May, ',
                                            time: '12:37am',
                                            img: Image.asset('assets/images/milktea.png',fit: BoxFit.fill,),
                                            teaname: 'Regular Tea (3X)',
                                            teapricede: '৳45.00',
                                            totalprice: '৳170.00',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      content: Container(
        width: MediaQuery.of(context).size.width,
        height: 383,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "What’s Wrong?",
                  style: TextStyle(
                      color: Color(0XFF292D32),
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ).tr(),
                const SizedBox(height: 12,),
                const Text(
                  "Let us know what’s going on, we use your\nfeedback to help us learn when something\nisn’t right",
                  style: TextStyle(
                      color: Color(0XFF4F5358),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ).tr(),
              ],
            ),
            const SizedBox(height: 26,),
            CommentTextField(readOnly: false,controller:commentController ,),
            const SizedBox(height: 26,),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            height: 47,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.transparent),
                            child: Center(
                              child: Text(
                                "Cancel",
                                style:
                                TextStyle(color: Color(0XFF26A59A), fontSize: 14,fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ).tr(),
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: InkWell(
                          onTap: () {
                          },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            height: 47,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFF26A59A)),
                            child: Center(
                              child: Text(
                                "Submit",
                                style:
                                TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ).tr(),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
