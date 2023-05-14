import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:with_me/common/color/app_color.dart';
import 'package:with_me/host_page.dart';

class CompletedRequest extends StatefulWidget {
  const CompletedRequest({Key? key}) : super(key: key);

  @override
  State<CompletedRequest> createState() => _CompletedRequestState();
}

class _CompletedRequestState extends State<CompletedRequest> {
  @override
  void initState() {
    Timer(const Duration(seconds: 10), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const HostPage(),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/mark.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                    child: Text(
                        textAlign: TextAlign.center,
                        "Your Request has been sent successfully",
                        style: GoogleFonts.lobster(
                          textStyle: TextStyle(fontSize: 32),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
