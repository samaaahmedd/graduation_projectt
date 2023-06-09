import 'dart:async';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:with_me/common/color/app_color.dart';
import 'package:with_me/common/custom_widgets/rating_bar.dart';
import 'package:with_me/common/data/local_data_mapper.dart';
import 'package:with_me/details_page/details_page.dart';
import 'package:with_me/filter/filter_page.dart';
import 'package:with_me/home_page/ui/filter_logic.dart';

import 'package:with_me/home_page/ui/sort.dart';
import 'package:with_me/home_page/ui/sort_dialog.dart';
import 'package:with_me/notification_page/notification_page.dart';
import '../common/data/home_model.dart';
import '../common/data/local_data.dart';
import '../common/data/model.dart';
import 'ui/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SortLogic _sortLogicObj = SortLogic();
  final FilterLogic _filterLogic = FilterLogic();

  SortEnum sortValue = SortEnum.highestReview;
  String? _searchText;
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
                onChanged: (value) { _searchText = value;
                _onSearchTextChane(value);},
              )),
              IconButton(
                  constraints: const BoxConstraints(maxWidth: 25),
                  padding: EdgeInsets.zero,
                  onPressed:  () {
    SortDialog.sortDialog(context, initialValue: sortValue)
        .then((value) {
    if (value != null) {
    sortValue = value;
    _getHomeData();
    setState(() {});
    }
    });
    },
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
              child: FutureBuilder(future: _getHomeData(),
                builder: (context,snapshot) {
                  return ListView.builder(
                    itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              final HomeModel? item = snapshot.data?[index];
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
                              decoration:  BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                         item?.image?? "https://thumbs.dreamstime.com/b/surprised-female-person-confused-isolated-surprised-female-person-confused-isolated-168304856.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(item?.name??"",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.textColor,
                                        fontSize: 17)),
                                 RatingBar(rate: item?.rate??0),
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
                                      item?.address??
                                      'Egypt/cairo',
                                      style: TextStyle(
                                          color: AppColors.secondaryColor),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("${item?.price} \$",
                                    style:
                                        TextStyle(color: AppColors.secondaryColor)),
                              ],
                            ))
                          ]),
                    ),
                  );
            },
          );
                }
              )),
        ],
      ),
    );
  }

  Timer? _searchTimer;
  void _onSearchTextChane(String text) {
    _searchTimer?.cancel();
    _searchTimer = Timer(const Duration(milliseconds: 350), () async {
      await _getHomeData();
      setState(() {});
    });
  }

  List<HomeModel> _getSearchResult(String? text, List<HomeModel> data) {
    final List<HomeModel> searchData = [];
    for (HomeModel item in data) {
      if (item.name.toLowerCase().contains(text?.toLowerCase() ?? '')) {
        searchData.add(item);
      }
    }
    return searchData;
  }

  Future<List<HomeModel>> _getHomeData() async {
    final apiModel = ApiHomeModel.fromJson(apiHomeLocalData);
    List<HomeModel> homeData = apiModel.data.map((e) => e.map()).toList();
    if (_searchText != null && _searchText != "") {
      homeData = _getSearchResult(_searchText, [...homeData]);
    }
    homeData = _filterLogic(homeData);
    return _sortLogicObj.sortData(homeData, sortValue);
  }

  Future<void> _navigateToFilter() async {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (context) => const FilterPage(),
    ))
        .then((value) {
      if (value != null) {
        _getHomeData();
        setState(() {});
      }
    });
  }
}
