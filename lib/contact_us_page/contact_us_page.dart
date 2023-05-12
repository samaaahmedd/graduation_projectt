import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:with_me/common/color/app_color.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text('Contact Us'),
          backgroundColor: AppColors.secondaryColor),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                child: Divider(
                    color: AppColors.secondaryColor, height: 3, thickness: 1),
              ),
              Text(
                'You Can Contact Us Via',
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.secondaryColor,
                    fontWeight: FontWeight.w700),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                child: Divider(
                    color: AppColors.secondaryColor, height: 3, thickness: 1),
              ),
              ListTile(
                minLeadingWidth: 20,
                leading: Icon(Icons.email_outlined,
                    color: AppColors.textColor, size: 26),
                title: Text('samaa_ahmed@gmail.com',
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 18)),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                child: Divider(
                    color: AppColors.secondaryColor, height: 3, thickness: 1),
              ),
              Text(
                'OR Via Our Social',
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.secondaryColor,
                    fontWeight: FontWeight.w700),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                child: Divider(
                    color: AppColors.secondaryColor, height: 3, thickness: 1),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  FaIcon(FontAwesomeIcons.facebook,
                      color: Colors.blue, size: 40),
                  FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.green,
                    size: 40,
                  ),
                  FaIcon(FontAwesomeIcons.twitter,
                      color: Colors.blueAccent, size: 40),
                  FaIcon(FontAwesomeIcons.instagram,
                      color: Colors.redAccent, size: 40),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
