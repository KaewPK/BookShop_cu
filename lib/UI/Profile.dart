import 'package:chulabook/Shared/Color.dart';
import 'package:chulabook/UI/Wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorTheme.whilte,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: ColorTheme.whilte,
        title: Image.asset(
          "assets/Logo.png",
          fit: BoxFit.contain,
          width: size.width * 0.3,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          child: Stack(
            children: [
              Container(height: size.height * 0.2, color: ColorTheme.pink),
              Container(
                width: size.width,
                height: size.height,
                child: Container(
                  margin: EdgeInsets.only(
                    top: size.height * 0.025,
                    left: size.width * 0.05,
                    right: size.width * 0.05,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width,
                        height: size.height * 0.27,
                        margin: EdgeInsets.only(bottom: size.height * 0.015),
                        child: Stack(children: [
                          Positioned(
                            top: size.height * 0.1,
                            child: Container(
                              width: size.width * 0.9,
                              height: size.height * 0.19,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorTheme.whilte,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.035,
                                  bottom: size.height * 0.02,
                                  left: size.width * 0.05,
                                  right: size.width * 0.05,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    textTitle(
                                      "User ChulaBook",
                                      size.height * 0.03,
                                      FontWeight.w500,
                                      Colors.black,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: size.height * 0.01),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              textTitle(
                                                "รายการที่ชื่นชอบ",
                                                size.height * 0.02,
                                                FontWeight.w500,
                                                Colors.black,
                                              ),
                                              FlatButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Wishlist()),
                                                  );
                                                },
                                                child: textTitle(
                                                  "2",
                                                  size.height * 0.025,
                                                  FontWeight.w500,
                                                  Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          // เส้นคั่น
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: size.width * 0.02,
                                                right: size.width * 0.02),
                                            color: ColorTheme.pink,
                                            height: size.height * 0.03,
                                            width: 2,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              textTitle(
                                                "คะแนนสะสม",
                                                size.height * 0.02,
                                                FontWeight.w500,
                                                Colors.black,
                                              ),
                                              textTitle(
                                                "0",
                                                size.height * 0.025,
                                                FontWeight.w500,
                                                Colors.black,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: CircleAvatar(
                              radius: size.height * 0.065,
                              backgroundColor: Colors.blue[900],
                              child: CircleAvatar(
                                radius: size.height * 0.06,
                                backgroundImage:
                                    AssetImage('assets/profile.jpg'),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(bottom: size.height * 0.01),
                          width: size.width,
                          height: size.height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: size.width * 0.05,
                                right: size.width * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textTitle("ข้อมูลส่วนตัว", size.height * 0.025,
                                    FontWeight.w500, Colors.black),
                                Icon(
                                  Icons.arrow_forward,
                                  color: ColorTheme.pink,
                                  size: size.width * 0.06,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(bottom: size.height * 0.01),
                          width: size.width,
                          height: size.height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: size.width * 0.05,
                                right: size.width * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textTitle("สมุดที่อยู่", size.height * 0.025,
                                    FontWeight.w500, Colors.black),
                                Icon(
                                  Icons.arrow_forward,
                                  color: ColorTheme.pink,
                                  size: size.width * 0.06,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(bottom: size.height * 0.01),
                          width: size.width,
                          height: size.height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: size.width * 0.05,
                                right: size.width * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textTitle(
                                    "พรีเมียมเมมเบอร์",
                                    size.height * 0.025,
                                    FontWeight.w500,
                                    Colors.black),
                                Icon(
                                  Icons.arrow_forward,
                                  color: ColorTheme.pink,
                                  size: size.width * 0.06,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext context) =>
                                CupertinoActionSheet(
                              title: textTitle(
                                'Select Language',
                                size.height * 0.03,
                                FontWeight.w500,
                                Colors.black,
                              ),
                              actions: <Widget>[
                                CupertinoActionSheetAction(
                                  child: textTitle(
                                    'ไทย',
                                    size.height * 0.02,
                                    FontWeight.w300,
                                    Colors.black,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                CupertinoActionSheetAction(
                                  child: textTitle(
                                    'English',
                                    size.height * 0.02,
                                    FontWeight.w300,
                                    Colors.black,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                              cancelButton: CupertinoActionSheetAction(
                                child: const Text('Cancel'),
                                isDefaultAction: true,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: size.height * 0.01),
                          width: size.width,
                          height: size.height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: size.width * 0.05,
                                right: size.width * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textTitle("เปลี่ยนภาษา", size.height * 0.025,
                                    FontWeight.w500, Colors.black),
                                Icon(
                                  Icons.arrow_forward,
                                  color: ColorTheme.pink,
                                  size: size.width * 0.06,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(bottom: size.height * 0.01),
                          width: size.width,
                          height: size.height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: size.width * 0.05,
                                right: size.width * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textTitle("ช่วยเหลือ", size.height * 0.025,
                                    FontWeight.w500, Colors.black),
                                Icon(
                                  Icons.arrow_forward,
                                  color: ColorTheme.pink,
                                  size: size.width * 0.06,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(bottom: size.height * 0.01),
                          width: size.width,
                          height: size.height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Container(
                            margin: EdgeInsets.only(
                                left: size.width * 0.05,
                                right: size.width * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textTitle("ออกจากระบบ", size.height * 0.025,
                                    FontWeight.w500, Colors.black),
                                Icon(
                                  Icons.arrow_forward,
                                  color: ColorTheme.pink,
                                  size: size.width * 0.06,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textTitle(text, fontSize, fontWeight, color) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: "Heavent",
        fontWeight: fontWeight,
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
