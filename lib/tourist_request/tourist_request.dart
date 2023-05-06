import 'package:flutter/material.dart';

import '../common/custom_widgets/custom_button.dart';
import '../common/custom_widgets/text_form_field.dart';

class TouristRequest extends StatefulWidget {
  const TouristRequest({Key? key}) : super(key: key);

  @override
  State<TouristRequest> createState() => _TouristRequestState();
}

class _TouristRequestState extends State<TouristRequest> {
  String date="";
  String period="";
  String noOfPersons="";
  String pricerange="";

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
                Center(child: const Text("Tourist Request",style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold) )),
                const SizedBox(
                  height: 20,
                ),

                const Text(
                  "Date",
                  style:
                  TextStyle(color: Colors.white, fontSize: 18),
                ),
                AppTextFormFiled(
                  hintText: "22/12/2005",
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
                  hintText: "2 weeks",
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
                  hintText: "1",
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
                const Text(
                  "Price Range",
                  style:
                  TextStyle(color: Colors.white, fontSize: 18),
                ),
                AppTextFormFiled(
                  hintText: "50",
                  labelText: "Price Range",
                  textInputType: TextInputType.number,
                  onChanged: (text) {
                    pricerange= text;
                    setState(() {});
                  },
                ),

                CustomButton(
                  onPressed: () {
                  },
                  text: "Accept",
                ),

              ]



          ),
        ),
      ),
    );
  }
}
