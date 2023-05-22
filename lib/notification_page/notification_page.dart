import 'package:flutter/material.dart';
import 'package:with_me/common/color/app_color.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.sixColor,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Notification"),
          centerTitle: true,
        backgroundColor: AppColors.primaryColor,
      ),

      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 8),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://thumbs.dreamstime.com/b/surprised-female-person-confused-isolated-surprised-female-person-confused-isolated-168304856.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text("Sama" ,style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 5,
                          ),
                          Text( 'Egyption'),

                          SizedBox(
                            height: 5,
                          ),
                          Text("2500 \$"),
                        ],
                      )),
                  Text("Accepted"),
                ]),
          );
        },
      ),
    );

  }
}
