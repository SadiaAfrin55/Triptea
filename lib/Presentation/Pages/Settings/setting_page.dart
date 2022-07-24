
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/Card/SettingsCard/settings_card.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
                        child: Text('Settings',style: TextStyle(
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
              margin: EdgeInsets.symmetric(vertical: 19,horizontal: 24),
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, PASSWORD_SETTINGS);
                    },
                    child: SettingsCard(
                      image: SvgPicture.asset('assets/icons/passwordcheck.svg'),
                      title: 'Password Setting',
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, LANGUAGE_SETTINGS);
                    },
                    child: SettingsCard(
                      image: SvgPicture.asset('assets/icons/languagecheck.svg'),
                      title: 'Language Setting',
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, PAYMENT_HISTORY);
                    },
                    child: SettingsCard(
                      image: SvgPicture.asset('assets/icons/notification.svg'),
                      title: 'Notification Setting',
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: SettingsCard(
                      image: SvgPicture.asset('assets/icons/about.svg'),
                      title: 'About Us',
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: SettingsCard(
                      image: SvgPicture.asset('assets/icons/reports.svg'),
                      title: 'Reports',
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: SettingsCard(
                      image: SvgPicture.asset('assets/icons/share.svg'),
                      title: 'Invite Friends',
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
