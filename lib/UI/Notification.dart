import 'package:chulabook/Shared/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorTheme.whilte,
          bottom: TabBar(
            indicatorColor: ColorTheme.pink,
            tabs: [
              Tab(text: "ทั้งหมด"),
              Tab(text: "รอชำระเงิน"),
              Tab(text: "เตรียมส่ง"),
              Tab(text: "ระหว่างส่ง"),
            ],
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontFamily: "Heavent",
              fontWeight: FontWeight.w500,
              fontSize: size.height * 0.0225,
            ),
          ),
          title: Text(
            "รายการสั่งซื้อ",
            style: TextStyle(
              fontFamily: "Heavent",
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: size.height * 0.025,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            noItem(),
            noItem(),
            noItem(),
            noItem(),
          ],
        ),
      ),
    );
  }

  Widget noItem() {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("svg/not-cart.svg"),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.02),
          child: Text(
            "ไม่มีรายการสั่งซื้อ",
            style: TextStyle(
              fontFamily: "Heavent",
              color: ColorTheme.pink,
              fontWeight: FontWeight.w500,
              fontSize: size.height * 0.025,
            ),
          ),
        ),
      ],
    );
  }
}
