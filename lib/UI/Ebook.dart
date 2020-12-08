import 'package:chulabook/Shared/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ไม่ได้ใช้
class Ebook extends StatefulWidget {
  Ebook({Key key}) : super(key: key);

  @override
  _EbookState createState() => _EbookState();
}

class _EbookState extends State<Ebook> {
  List<String> bookImg = [
    'assets/1000236740_front_XXL.jpg',
    'assets/1000235778_front_XXL.jpg',
    'assets/1000235782_front_XXL.jpg',
    'assets/1000236055_front_XXL.jpg',
    'assets/1000235984_front_XXL.jpg',
    'assets/1000212303_front_XXL.jpg',
    'assets/1000236740_front_XXL.jpg',
    'assets/1000235778_front_XXL.jpg',
    'assets/1000235782_front_XXL.jpg',
    'assets/1000236055_front_XXL.jpg',
    'assets/1000235984_front_XXL.jpg',
    'assets/1000212303_front_XXL.jpg',
    'assets/1000236740_front_XXL.jpg',
    'assets/1000235778_front_XXL.jpg',
    'assets/1000235782_front_XXL.jpg',
    'assets/1000236055_front_XXL.jpg',
    'assets/1000235984_front_XXL.jpg',
    'assets/1000212303_front_XXL.jpg',
  ];
  List<String> bookName = [
    'นายคะ อย่ามาร้าย',
    'อร่อยล้นวัง เล่ม 3',
    'ฆ่าหมาป่า เล่ม 1',
    'You Are My Glory ดุจดวงดาวเกียรติยศ',
    'ล้ม ลุก เรียน รู้ FALL AND LEARN',
    'ตัวร้ายอย่างข้า...จะหนีเอาตัวรอดยังไงดี เล่ม 1',
    'นายคะ อย่ามาร้าย',
    'อร่อยล้นวัง เล่ม 3',
    'ฆ่าหมาป่า เล่ม 1',
    'You Are My Glory ดุจดวงดาวเกียรติยศ',
    'ล้ม ลุก เรียน รู้ FALL AND LEARN',
    'ตัวร้ายอย่างข้า...จะหนีเอาตัวรอดยังไงดี เล่ม 1',
    'นายคะ อย่ามาร้าย',
    'อร่อยล้นวัง เล่ม 3',
    'ฆ่าหมาป่า เล่ม 1',
    'You Are My Glory ดุจดวงดาวเกียรติยศ',
    'ล้ม ลุก เรียน รู้ FALL AND LEARN',
    'ตัวร้ายอย่างข้า...จะหนีเอาตัวรอดยังไงดี เล่ม 1',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorTheme.whilte,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: ColorTheme.pink,
        title: Text(
          "E-book ของฉัน",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: "Heavent",
            fontWeight: FontWeight.w500,
            color: ColorTheme.whilte,
            fontSize: size.height * 0.03,
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: ColorTheme.whilte,
        child: GridView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: bookImg.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: [
                    Container(
                      child: Image.asset(bookImg[index], fit: BoxFit.cover),
                      width: size.width * 0.285,
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      width: size.width * 0.285,
                      height: size.height * 0.04,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black,
                              Colors.black.withOpacity(0.75)
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                bookName[index],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: "Heavent",
                                  color: Colors.white,
                                  fontSize: size.height * 0.018,
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
            );
          },
        ),
      ),
    );
  }
}
