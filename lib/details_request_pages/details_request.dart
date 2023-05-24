import 'package:flutter/material.dart';
import 'package:with_me/completed_req/completed_req.dart';
import 'package:with_me/payment_page.dart';
import '../common/color/app_color.dart';
import '../common/custom_widgets/custom_button.dart';
import '../common/custom_widgets/text_form_field.dart';
import '../filter/widgets/slider_widget.dart';

class DetailsRequest extends StatefulWidget {
  const DetailsRequest({Key? key}) : super(key: key);

  @override
  State<DetailsRequest> createState() => _DetailsRequestState();
}

class _DetailsRequestState extends State<DetailsRequest> {
  String date="";
  String period="";
  String noOfPersons="";
  double slidervalue= 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(automaticallyImplyLeading: true,
        title: const Text('Your Request'),
        centerTitle: true,
        backgroundColor: AppColors.secondaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const SizedBox(
                  height: 20,
                ),

                 Text(
                  "Date",
                  style:
                  TextStyle(color: AppColors.textColor, fontSize: 18,fontWeight: FontWeight.bold,),
                ),
                AppTextFormFiled(
                  hintText: "",
                  textInputType: TextInputType.datetime,
                  onChanged: (text) {
                    date= text;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 20,
                ),

                 Text(
                  "Period",
                  style:
                  TextStyle(color: AppColors.textColor, fontSize: 18,fontWeight: FontWeight.bold,),
                ),
                AppTextFormFiled(
                  hintText: "",
                  textInputType: TextInputType.datetime,
                  onChanged: (text) {
                    period= text;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 20,
                ),

                 Text(
                  "No.of Persons",
                  style:
                  TextStyle(color: AppColors.textColor, fontSize: 18,fontWeight: FontWeight.bold,),
                ),
                AppTextFormFiled(
                  hintText: "",
                  textInputType: TextInputType.number,
                  onChanged: (text) {
                    noOfPersons= text;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 20,
                ),

                SliderWidget(
                  sliderValue:  slidervalue ,
                  onChanged: (value) {
                    slidervalue = value;
                    setState(() {});
                  },
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PaymentPage(),));
                   },
                  text: "Confirm Request",
                ),

              ]



          ),
        ),
      ),


    );
  }
}
