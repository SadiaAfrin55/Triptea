
import 'package:flutter/material.dart';

import '../../Widgets/Card/SettingsCard/language_card.dart';
class LanguageSettings extends StatefulWidget {
  const LanguageSettings({Key? key}) : super(key: key);

  @override
  _LanguageSettingsState createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
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
                        child: Text('Select Language',style: TextStyle(
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
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    LanguageCard(
                      flag: Image.asset('assets/images/usFlag.png'),
                      country: 'English',
                    ),
                    LanguageCard(
                      flag: Image.asset('assets/images/spniFlag.png'),
                      country: 'Spanish',
                    ),
                    LanguageCard(
                      flag: Image.asset('assets/images/korFlag.png'),
                      country: 'Korean',
                    ),
                    LanguageCard(
                      flag: Image.asset('assets/images/banFlag.png'),
                      country: 'Bengali',
                    ),
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
