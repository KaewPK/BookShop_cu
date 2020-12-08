import 'package:chulabook/Shared/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cart extends StatefulWidget {
  Cart({Key key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<String> bookImg = [
    'assets/1000236740_front_XXL.jpg',
    'assets/1000235778_front_XXL.jpg',
  ];
  List<String> bookName = [
    'นายคะ อย่ามาร้าย',
    'อร่อยล้นวัง เล่ม 3',
  ];
  List<double> bookPrice = [349.00, 340.00];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorTheme.whilte,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: ColorTheme.pink,
        title: textTitle("ตะกร้าหนังสือ", size.height * 0.03, FontWeight.w500,
            ColorTheme.whilte),
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: ColorTheme.whilte,
            size: size.height * 0.05,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        width: size.width,
        color: Colors.grey[200],
        child: Container(
          child: ListView.separated(
            itemCount: bookImg.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: size.height * 0.125,
                color: ColorTheme.whilte,
                child: Container(
                  margin: EdgeInsets.only(
                    top: size.height * 0.01,
                    bottom: size.height * 0.01,
                    left: size.width * 0.05,
                    right: size.width * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        bookImg[index],
                        fit: BoxFit.contain,
                        height: size.height * 0.1,
                      ),
                      Container(
                        width: size.width * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            textTitle(bookName[index], size.height * 0.018,
                                FontWeight.w300, Colors.black),
                            textTitle(
                                bookPrice[index].toStringAsFixed(2) + " บาท",
                                size.height * 0.018,
                                FontWeight.w300,
                                Colors.black),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove_circle_outline),
                            iconSize: size.width * 0.06,
                            color: Colors.red,
                            onPressed: () {},
                          ),
                          Container(
                            width: size.width * 0.1,
                            child: textTitle("1", size.height * 0.025,
                                FontWeight.w500, Colors.black),
                          ),
                          IconButton(
                            icon: Icon(Icons.control_point),
                            iconSize: size.width * 0.06,
                            color: Colors.green,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => Divider(),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin:
            EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05),
        height: size.height * 0.1,
        color: ColorTheme.whilte,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          textTitle("ยอดชำระ : 689.00 บาท", size.height * 0.025,
              FontWeight.w500, Colors.black),
          Container(
            width: size.width * 0.4,
            child: RaisedButton(
              onPressed: () => {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              color: ColorTheme.pink,
              child: Text(
                "ไปหน้าชำระเงิน",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Heavent",
                  fontWeight: FontWeight.w500,
                  fontSize: size.height * 0.02,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget textTitle(text, fontSize, fontWeight, color) {
    return Text(
      text,
      textAlign: TextAlign.center,
      maxLines: 2,
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
