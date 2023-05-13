import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../common/color/app_color.dart';
import '../common/custom_widgets/custom_button.dart';
import '../common/custom_widgets/text_form_field.dart';

class TouristRequest extends StatefulWidget {
  const TouristRequest({Key? key}) : super(key: key);

  @override
  State<TouristRequest> createState() => _TouristRequestState();
}

class _TouristRequestState extends State<TouristRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text('Request Details'),
        centerTitle: true,
        backgroundColor: AppColors.secondaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: AppColors.sixColor,
                title: Text(
                  "Date",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                subtitle: Text(
                  "22/12/2005",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                leading: Icon(
                  Icons.date_range,
                  color: AppColors.textColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: AppColors.sixColor,
                title: Text(
                  "Period",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                subtitle: Text(
                  "2 weeks",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                leading: Icon(
                  Icons.timer_outlined,
                  color: AppColors.textColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: AppColors.sixColor,
                title: Text(
                  "No.of Persons",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                subtitle: Text(
                  "4 persons",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                leading: Icon(
                  Icons.person,
                  color: AppColors.textColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: AppColors.sixColor,
                title: Text(
                  "Price Range",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                subtitle: Text(
                  "100 \$",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                leading: Icon(
                  Icons.wallet_outlined,
                  color: AppColors.textColor,
                ),
              ),
            ),
            CustomButton(
              onPressed: () {},
              text: "Accept",
            ),
            CustomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: AppColors.thirdColor,
              text: "Reject",
            ),
          ]),
        ),
      ),
    );
  }
}
