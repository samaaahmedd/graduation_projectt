import 'dart:async';

import 'package:flutter/material.dart';
import 'package:with_me/host_page.dart';

class CompletedRequest extends StatefulWidget {
  const CompletedRequest({Key? key}) : super(key: key);


  @override
  State<CompletedRequest> createState() => _CompletedRequestState();
}

class _CompletedRequestState extends State<CompletedRequest> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5),
        (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HostPage(),));}   );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5661f1),
      body:
      Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/smile.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(height: 30,),

                Center(child: const Text(textAlign: TextAlign.center ,"Your Request has been sent successfully",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold) )),




            ],

              ),
            ),
          ),
      ),
      );

  }
}
