import 'package:flutter/material.dart';
import 'package:with_me/common/color/app_color.dart';
import 'package:with_me/home_page/home_page.dart';
import 'package:with_me/request_page/request_page.dart';
import 'package:iconsax/iconsax.dart';
import 'more_page/more_page.dart';

class HostPage extends StatefulWidget {
  const HostPage({Key? key}) : super(key: key);

  @override
  State<HostPage> createState() => _HostPageState();
}

class _HostPageState extends State<HostPage> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = const [HomePage(), RequestPage(), MorePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme:
            IconThemeData(color: AppColors.primaryColor, size: 25),
        selectedLabelStyle:
            TextStyle(color: AppColors.textColor, fontWeight: FontWeight.w500),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.direct_inbox),
            label: 'Requests',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.more),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        backgroundColor: AppColors.sixColor,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
