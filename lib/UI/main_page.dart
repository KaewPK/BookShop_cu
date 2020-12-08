import 'package:chulabook/Shared/Color.dart';
import 'package:chulabook/UI/Category.dart';
import 'package:chulabook/UI/Home.dart';
import 'package:chulabook/UI/Notification.dart';
import 'package:chulabook/UI/Profile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final Home home = Home();
  final CategoryPage category = CategoryPage();
  final NotificationPage notification = NotificationPage();
  final Profile profile = Profile();

  Widget showPage = Home();
  Widget pageChooser(int page) {
    switch (page) {
      case 0:
        return home;
        break;
      case 1:
        return category;
        break;
      case 2:
        return notification;
        break;
      case 3:
        return profile;
        break;
      default:
        return new Container(
          child: Center(
            child: Text(
              "No page found by page chooser.",
              style: TextStyle(fontSize: 30),
            ),
          ),
        );
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      showPage = pageChooser(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: ColorTheme.whilte,
          body: showPage,
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'หน้าหลัก',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.view_comfy),
                label: 'หมวดหมู่',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'รายการสั่งซื้อ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'บัญชีฉัน',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: ColorTheme.pink,
            unselectedItemColor: ColorTheme.pink.withOpacity(0.5),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            iconSize: size.height * 0.03,
            onTap: _onItemTapped,
            selectedLabelStyle: TextStyle(
              fontFamily: "Heavent",
              fontWeight: FontWeight.w500,
              fontSize: size.height * 0.015,
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: "Heavent",
              fontWeight: FontWeight.w500,
              fontSize: size.height * 0.015,
            ),
          ),
        ),
      ),
    );
  }
}
