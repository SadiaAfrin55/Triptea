
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../Constants/Colors/app_colors.dart';
import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/Button/custom_btn.dart';
import '../../Widgets/TextField/normal_textfield.dart';
class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text('Edit Profile',style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Color(0xFF374151),
        ),),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back,color: Color(0xFF1F2937),size: 24,)),
      ),
      body: Container(
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      showAlertDialog(context);
                    },
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height*0.15,
                      child: const Center(
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/icons/user.png'),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //margin: const EdgeInsets.only(top: 16),
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
                        Container(
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
                  const SizedBox(height: 61,),
                  CustomBtn(btnText: 'Save Change',),
                  const SizedBox(height: 26,),
                ],
              ),
            ),
          )
      ),
    );
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      dateOfBirght = args.value.toString().substring(0, 10);
    });
  }
  showAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Container(
        width: MediaQuery.of(context).size.width,
        height: 117,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/camera.svg'),
                  const SizedBox(height: 5,),
                  const Text(
                    "Take a photo",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ).tr(),
                ],
              ),
            ),
            //const SizedBox(width: 26,),
            Container(
              margin: EdgeInsets.symmetric(vertical: 19),
              color: Color(0xFFC4C4C4),width: 1,height: 80,),
            //const SizedBox(width: 26,),
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/gallery.svg'),
                  const SizedBox(height: 5,),
                  const Text(
                    "Gallary",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ).tr(),
                ],
              ),
            ),
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

