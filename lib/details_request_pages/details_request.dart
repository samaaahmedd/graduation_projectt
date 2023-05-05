import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:with_me/completed_req/completed_req.dart';

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
      backgroundColor: const Color(0xff5661f1),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Center(child: const Text("Your Request",style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold) )),
                const SizedBox(
                  height: 20,
                ),

                const Text(
                  "Date",
                  style:
                  TextStyle(color: Colors.white, fontSize: 18),
                ),
                AppTextFormFiled(
                  hintText: "",
                  labelText: "Date",
                  textInputType: TextInputType.datetime,
                  onChanged: (text) {
                    date= text;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 20,
                ),

                const Text(
                  "Period",
                  style:
                  TextStyle(color: Colors.white, fontSize: 18),
                ),
                AppTextFormFiled(
                  hintText: "",
                  labelText: "Period",
                  textInputType: TextInputType.datetime,
                  onChanged: (text) {
                    period= text;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 20,
                ),

                const Text(
                  "No.of Persons",
                  style:
                  TextStyle(color: Colors.white, fontSize: 18),
                ),
                AppTextFormFiled(
                  hintText: "",
                  labelText: "No.of Persons",
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CompletedRequest(),));
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
