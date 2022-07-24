
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:triptea/Presentation/Widgets/Button/custom_btn.dart';

import '../../../Constants/Colors/app_colors.dart';
import '../../../Constants/Strings/app_strings.dart';
import '../../Widgets/TextField/creditcard_textfield.dart';
import '../../Widgets/TextField/normal_textfield.dart';
class CreditCardPage extends StatefulWidget {
  const CreditCardPage({Key? key}) : super(key: key);

  @override
  State<CreditCardPage> createState() => _CreditCardPageState();
}

class _CreditCardPageState extends State<CreditCardPage> {
  TextEditingController cardNumberController= TextEditingController();
  TextEditingController cardHolderController= TextEditingController();
  TextEditingController cvvController= TextEditingController();
  String? infoTakenDate;
  String? dateOfBirght;

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
                      child: Text('Credit Card',style: TextStyle(
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
            margin: const EdgeInsets.only(left: 23,right: 23,top: 15,bottom: 26),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.78,
                    child: Column(
                      children: [
                        Center(child: SvgPicture.asset('assets/icons/creditCard.svg')),
                        Container(
                          height: MediaQuery.of(context).size.height*0.35,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CreditCardTextField(lable:tr("Card number"),readOnly: false,controller:cardNumberController ,),
                              const SizedBox(height: 20,),
                              CreditCardTextField(lable:tr("Cardholder name"),readOnly: false,controller:cardHolderController ,),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Expanded(
                                      flex: 4,
                                      child: InkWell(
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
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(dateOfBirght??tr('Expried date'),style: TextStyle(
                                                      color: black,fontSize: 16
                                                  ),),
                                                  Icon(Icons.calendar_today_outlined,color: lightTextColor,),
                                                ],
                                              ),
                                            )
                                        ),
                                      ),
                                  ),
                                  const SizedBox(width: 20,),
                                  Expanded(
                                      flex: 2,
                                      child: CreditCardTextField(lable:tr("CVV"),readOnly: false,controller: cvvController,)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //const SizedBox(height: 40,),
                  CustomBtn(
                    btnText: 'Continue',
                    onpressed: (){
                      Navigator.pushNamed(context, INVOICE_PAGE);
                    },
                  ),
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
