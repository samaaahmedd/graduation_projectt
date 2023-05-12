import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:with_me/common/color/app_color.dart';
import 'package:with_me/common/custom_widgets/custom_button.dart';
import 'package:with_me/common/domain/use_cases/set_login_usecase.dart';
import 'package:with_me/profile_page/profile_page.dart';
import 'package:with_me/welcome_page/welcome_page.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  final SetLogInUseCase _setLogInUseCase = SetLogInUseCase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
        centerTitle: true,
        backgroundColor: AppColors.secondaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration:  BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://thumbs.dreamstime.com/b/surprised-female-person-confused-isolated-surprised-female-person-confused-isolated-168304856.jpg"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 15,
            ),
            Text('Sama Ahamed',
                style: TextStyle(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 20)),
            const Spacer(),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ));
              },
              minLeadingWidth: 24,
              leading: Icon(Icons.person_outline,
                  color: AppColors.textColor, size: 28),
              title: Text('Profile',
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(color: AppColors.fifthColor, height: 1),
            ),
            ListTile(
              onTap: () {},
              minLeadingWidth: 20,
              leading:
                  Icon(Iconsax.message, color: AppColors.textColor, size: 26),
              title: Text('Contact Us',
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(color: AppColors.fifthColor, height: 1),
            ),
            const Spacer(),
            CustomButton(
              onPressed: () async {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const WelcomePage(),
                ));
                await _setLogInUseCase(false);
              },
              text: 'Log Out',
            ),
            CustomButton(
              onPressed: () async {},
              color: Colors.redAccent,
              text: 'Delete Account',
            ),
          ],
        ),
      ),
    );
  }
}
