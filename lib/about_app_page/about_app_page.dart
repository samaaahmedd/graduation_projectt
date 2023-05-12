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
              'With You app the free app that you can write whatever you want, put a picture or an audio recording to hear it whenever you want, Add your Missions as a tasks to motivate you to complete them and organize your tasks, Put all your memories details and photo to always remember them whenever you want\n\n'
              'Save your private note ,task and memory in secret to be the only one how can with own password you created.'
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
