import 'package:flutter/material.dart';
import 'package:with_me/common/color/app_color.dart';
import 'package:with_me/details_request_pages/details_request.dart';
import '../common/custom_widgets/custom_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.primaryColor),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://thumbs.dreamstime.com/b/surprised-female-person-confused-isolated-surprised-female-person-confused-isolated-168304856.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Material(
                color: AppColors.sixColor.withOpacity(.5),
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sama Ahmed',
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.perm_contact_cal_rounded,
                            size: 21,
                            color: AppColors.primaryColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                                fontSize: 15,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 21,
                            color: AppColors.primaryColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Egypt / cairo',
                            style: TextStyle(
                                fontSize: 15,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      Row(
                        children:  [
                          const Icon(
                            Icons.phone,
                            size: 21,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '01225555200',
                            style:  TextStyle(
                                fontSize: 15,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                padding: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                color: AppColors.sixColor.withOpacity(.5),
                borderRadius: BorderRadius.circular(12),

                ),
                child: Text(
                  'Tourguide',
                  style: TextStyle(
                      fontSize: 18,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                color: AppColors.sixColor.withOpacity(.5),
                borderRadius: BorderRadius.circular(12),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Me',
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold),
                    ),
                     const SizedBox(height: 15,),
                     Text(
                      "Hello, my name's sama",
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              CustomButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DetailsRequest(),
                  ));
                },
                text: "Send Request",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
