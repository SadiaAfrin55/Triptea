import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SettingsCard extends StatelessWidget {
  final String? title;
  final SvgPicture? image;

  SettingsCard({
    this.title,
    this.image,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          color: Colors.white
      ),
      padding: EdgeInsets.symmetric(vertical: 4,horizontal: 16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 9,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CircleAvatar(
                            backgroundColor: Color(0xFFD4EDEB),
                            radius: 22,
                            child: Center(child: image)
                        ),
                      ),
                      SizedBox(width: 16,),
                      Expanded(
                        flex: 8,
                        child: Text('$title',style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),).tr(),
                      ),
                    ],
                  )
              ),
              Expanded(
                  flex: 1,
                  child: SvgPicture.asset('assets/icons/backarrow.svg',)
              )
            ],
          ),
          const Divider(
            indent: 40,
            thickness: 1.0,
          )
        ],
      ),
    );
  }
}
