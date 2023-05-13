import 'dart:async';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:with_me/common/color/app_color.dart';
import 'package:with_me/common/custom_widgets/rating_bar.dart';
import 'package:with_me/details_page/details_page.dart';
import 'package:with_me/filter/filter_page.dart';
import 'package:with_me/notification_page/notification_page.dart';
import 'ui/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Hello My Friend',
                  style: TextStyle(fontWeight: FontWeight.w700)),
              SizedBox(
                height: 8,
              ),
              Text('Explore The Best Places In The World.',
                  style: TextStyle(fontSize: 14)),
            ]),
        elevation: 0,
        backgroundColor: AppColors.secondaryColor,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationPage(),
                ));
              },
              icon: const Icon(
                Icons.notifications_rounded,
              ))
        ],
      ),
      body: Column(
        children: [
          Material(
            color: AppColors.secondaryColor,
            child: Row(children: [
              Expanded(
                  child: SearchWidget(
                onChanged: (value) {},
              )),
              IconButton(
                  constraints: const BoxConstraints(maxWidth: 25),
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.sort,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: _navigateToFilter,
                  icon: const Icon(
                    Iconsax.filter,
                    color: Colors.white,
                  )),
            ]),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DetailsPage(),
                  ));
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppColors.sixColor.withOpacity(.5),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
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
                          children: [
                            Text("Sama",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textColor,
                                    fontSize: 17)),
                            const RatingBar(rate: 0),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 17,
                                  color: AppColors.secondaryColor,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Egypt/cairo',
                                  style: TextStyle(
                                      color: AppColors.secondaryColor),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("2500 \$",
                                style:
                                    TextStyle(color: AppColors.secondaryColor)),
                          ],
                        ))
                      ]),
                ),
              );
            },
          )),
        ],
      ),
    );
  }

  Future<void> _navigateToFilter() async {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const FilterPage(),
    ));
  }
}
