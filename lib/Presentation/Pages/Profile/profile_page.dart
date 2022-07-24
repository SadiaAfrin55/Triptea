
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../Constants/Colors/app_colors.dart';
import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/Button/custom_btn.dart';
import '../../Widgets/TextField/normal_textfield.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController emilController= TextEditingController();
  TextEditingController nameController= TextEditingController();
  TextEditingController phoneController= TextEditingController();
  TextEditingController dobController= TextEditingController();
  String? infoTakenDate;
  String? dateOfBirght;
  List<String> issueTypeDrop = ['Male','Female'];
  String? issueType;
  bool isSelected = false;

  @override
  void initState() {
    // TODO: implement initState
     infoTakenDate=DateFormat('MM/dd/yyyy hh:mm:ss').format(DateTime.now()).substring(0,11);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              elevation: 0.5,
              toolbarHeight: 60,
              title: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                      flex: 12,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('User',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: textGrey
                          ),),
                          SizedBox(height: 2,),
                          Text('TripTea: 250 Point',style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFFF8A00)
                          ),),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child:  InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, SETTINGS_PAGE);
                          },
                          child: SvgPicture.asset('assets/icons/setting.svg')),
                    )
                  ],
                ),
              ),
            ),
            body: Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.15,
                      child: const Center(
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.lightBlue,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, EDIT_PROFILE);
                      },
                      child: Container(
                        height: 54,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: btnColor,width: 2)
                        ),
                        child: const Center(
                          child: Text('Edit Profile',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: btnColor
                          ),),
                        ),
                      ),
                    ),
                    const SizedBox(height: 26,),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Your Name',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: lightTextColor
                          ),),
                          const SizedBox(height: 8,),
                          MaterialTextField(lable:tr("Name"),readOnly: false,icon: Icon(Icons.person_outline,color: Colors.black.withOpacity(0.3),), controller:nameController ,),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Your Email',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: lightTextColor
                          ),),
                          const SizedBox(height: 8,),
                          MaterialTextField(lable:tr("Email"),readOnly: false,icon: Icon(Icons.email_outlined,color: Colors.black.withOpacity(0.3),), controller:emilController ,),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Your Phone No',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: lightTextColor
                          ),),
                          const SizedBox(height: 8,),
                          MaterialTextField(lable:tr("Phone"),readOnly: false,icon: Icon(Icons.phone,color: Colors.black.withOpacity(0.3),), controller:nameController ,),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Birth Date',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: lightTextColor
                          ),),
                          const SizedBox(height: 8,),
                          InkWell(
                            onTap: (){
                              showDatedialog();
                            },
                            child:Container(
                                width: MediaQuery.of(context).size.width,
                                height:56 ,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color:textFieldBorder, width: 1.0)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.calendar_today_outlined,color: lightTextColor,),
                                      const SizedBox(width: 10,),
                                      Text(dateOfBirght??tr('Select date of birth'),style: TextStyle(
                                          color: black,fontSize: 16
                                      ),),
                                    ],
                                  ),
                                )
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Gender',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: lightTextColor
                          ),),
                          const SizedBox(height: 8,),
                          Container(
                            height: 56,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color:textFieldBorder, width: 1.0)
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                hint: Text('Select gender',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: black
                                  ),
                                ).tr(),
                                value: issueType,
                                icon: const Icon(Icons.keyboard_arrow_down,color: lightTextColor),
                                iconSize: 30,
                                onChanged: (newValue) {
                                  setState(() {
                                    issueType = newValue.toString();
                                    if(issueType!=null){
                                      setState(() {
                                        isSelected=true;
                                      });
                                    }else{
                                      setState(() {
                                        isSelected=false;
                                      });
                                    }
                                  });
                                },
                                items: issueTypeDrop.map((location) {
                                  return DropdownMenuItem(
                                    child:  Text(location,style: TextStyle(
                                        color: black,fontSize: 16
                                    ),).tr(),
                                    value:location,
                                  );
                                }).toList(),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(height: 26,),
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      dateOfBirght = args.value.toString().substring(0, 10);
    });
  }

  void showDatedialog() {
    Widget okButton = FlatButton(
      child: Container(
        width: 80,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: btnColor
        ),
        child: Center(
          child: Text(
            "Ok",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white,fontSize: 14),
          ).tr(),
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          insetPadding: EdgeInsets.all(6),
          title: Text('Select date').tr(),
          content: Container(
            height: 300,
            width: MediaQuery.of(context).size.width - 20,
            child: SfDateRangePicker(
              todayHighlightColor: btnColor,
              cancelText: 'CANCEL',
              view: DateRangePickerView.month,
              monthViewSettings:
              DateRangePickerMonthViewSettings(firstDayOfWeek: 6),
              showNavigationArrow: true,
              selectionShape: DateRangePickerSelectionShape.rectangle,
              toggleDaySelection: true,
              // selectionMode: DateRangePickerSelectionMode.range,
              selectionMode: DateRangePickerSelectionMode.single,
              onSelectionChanged: _onSelectionChanged,
            ),
          ),
          actions: [
            okButton,
          ],
        ));
  }

}

