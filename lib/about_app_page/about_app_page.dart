import 'package:flutter/material.dart';
import 'package:with_me/common/color/app_color.dart';

class AboutAppPage extends StatefulWidget {
  const AboutAppPage({Key? key}) : super(key: key);

  @override
  State<AboutAppPage> createState() => _AboutAppPageState();
}

class _AboutAppPageState extends State<AboutAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text('About App'),
          backgroundColor: AppColors.secondaryColor),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              'An application that makes traveling cheaper and easier. Reservation through atravel agency costs a lot of money and forces you to adhere to their trip plan andthat you are always with the tour group\n\n'
              '“WithYou” you do not book through a travel agency,but you book with someone of the same nationality as you'
              '\n\nYou can save your preferable note, task and memory in favorite to get in any time.',
              style: TextStyle(
                  fontSize: 17,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w500),
            ),
          ]),
        ),
      ),
    );
  }
}
