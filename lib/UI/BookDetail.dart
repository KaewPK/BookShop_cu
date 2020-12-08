import 'package:chulabook/Shared/Color.dart';
import 'package:chulabook/UI/Cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:share/share.dart';

class BookDetail extends StatefulWidget {
  final String bookName, bookImg, bookAuthorName, bookDescription;
  final double bookRating, bookPrice, bookPSF;
  BookDetail(
      {Key key,
      @required this.bookName,
      this.bookImg,
      this.bookAuthorName,
      this.bookDescription,
      this.bookPrice,
      this.bookRating,
      this.bookPSF})
      : super(key: key);

  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  bool liked = false;
  TabController tabController;
  List<String> links = [
    'assets/Branner1.jpeg',
    'assets/Branner2.jpeg',
  ];
  List<String> bookImg = [
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
  ];
  List<double> bookRating = [0, 5, 5, 4.5, 0, 4.5];
  List<double> bookPrice = [349.00, 340.00, 350.00, 415.00, 395.00, 399.00];
  String text = 'https://www.chulabook.com/th/home';
  String subject = 'Share';

  _pressed() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorTheme.whilte,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: ColorTheme.pink,
            size: size.height * 0.05,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: ColorTheme.whilte,
        elevation: 0.0,
        actions: [
          IconButton(
            color: ColorTheme.pink,
            icon: Icon(Icons.share),
            iconSize: size.height * 0.03,
            onPressed: () {
              final RenderBox box = context.findRenderObject();
              Share.share(text,
                  subject: subject,
                  sharePositionOrigin:
                      box.localToGlobal(Offset.zero) & box.size);
            },
          ),
          IconButton(
            color: ColorTheme.pink,
            icon: Icon(Icons.local_grocery_store),
            iconSize: size.height * 0.03,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          color: ColorTheme.whilte,
          child: Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ชื่อหนังสือ
                Container(
                    width: size.width * 0.8,
                    child: textTitle(
                        widget.bookName, size.height * 0.03, Colors.black, 3)),
                // รูปหนังสือ
                Container(
                  margin: EdgeInsets.only(
                    top: size.height * 0.01,
                    bottom: size.height * 0.01,
                  ),
                  child: Image.asset(
                    widget.bookImg,
                    fit: BoxFit.contain,
                    width: size.width * 0.5,
                  ),
                ),
                // ราคา และ ชื่นชอบ
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        textTitle("฿ " + widget.bookPrice.toStringAsFixed(2),
                            size.height * 0.03, ColorTheme.pink, 1),
                        Container(
                          margin: EdgeInsets.only(
                            left: size.width * 0.02,
                            top: size.height * 0.005,
                          ),
                          child: Text(
                            widget.bookPSF.toStringAsFixed(2),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontFamily: "Heavent",
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: size.height * 0.025,
                            ),
                          ),
                        )
                      ],
                    ),
                    IconButton(
                      icon:
                          Icon(liked ? Icons.favorite : Icons.favorite_border),
                      color: liked ? Colors.red : Colors.grey,
                      onPressed: () => _pressed(),
                    ),
                  ],
                ),
                // ชื่อผู้เขียน และ หมวดหมู่
                Row(
                  children: [
                    textTitle("ผู้เขียน : " + widget.bookAuthorName,
                        size.height * 0.02, Colors.black, 1),
                    Container(
                      margin: EdgeInsets.only(
                          left: size.width * 0.02, right: size.width * 0.02),
                      color: Colors.grey,
                      height: size.height * 0.02,
                      width: 2,
                    ),
                    textTitle("หมวดหมู่ : นิยายโรมานซ์", size.height * 0.02,
                        Colors.black, 1),
                  ],
                ),
                // รีวิว และ จำนวนสินค้าที่มี
                Container(
                  margin: EdgeInsets.only(
                      top: size.height * 0.01, bottom: size.height * 0.01),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textTitle(
                          "รีวิว : ", size.height * 0.02, Colors.black, 1),
                      RatingBarIndicator(
                        rating: widget.bookRating,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 10.0,
                        unratedColor: Colors.amber.withAlpha(50),
                        direction: Axis.horizontal,
                      ),
                      textTitle(" ( ${widget.bookRating.toString()} )",
                          size.height * 0.02, Colors.black, 1),
                      Container(
                        margin: EdgeInsets.only(
                            left: size.width * 0.02, right: size.width * 0.02),
                        color: Colors.grey,
                        height: size.height * 0.02,
                        width: 2,
                      ),
                      textTitle("มีสินค้าทั้งหมด : 60 ชิ้น", size.height * 0.02,
                          Colors.black, 1),
                    ],
                  ),
                ),
                // เส้นคั่น
                Container(
                  color: Colors.black12,
                  height: 2,
                  width: size.width * 0.8,
                ),
                // Tags
                Container(
                  margin: EdgeInsets.only(
                      top: size.height * 0.01, bottom: size.height * 0.01),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textTitle("TAGS : ", size.height * 0.02, Colors.black, 1),
                      buttonTag("วรรณกรรม"),
                      buttonTag("นิยายโรมานซ์"),
                    ],
                  ),
                ),
                // เส้นคั่น
                Container(
                  color: Colors.black12,
                  height: 2,
                  width: size.width * 0.8,
                ),
                // บทย่อ
                Container(
                  margin: EdgeInsets.only(
                      top: size.height * 0.02, bottom: size.height * 0.02),
                  child: Text(
                    widget.bookDescription,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 10,
                    style: TextStyle(
                      fontFamily: "Heavent",
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: size.height * 0.018,
                    ),
                  ),
                ),
                // เส้นคั่น
                Container(
                  color: Colors.black12,
                  height: 2,
                  width: size.width * 0.8,
                ),
                // ข้อมูลหนังสือ
                Container(
                  margin: EdgeInsets.only(
                      top: size.height * 0.02, bottom: size.height * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textTitle("ข้อมูลหนังสือ", size.height * 0.0225,
                          ColorTheme.pink, 1),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // BarCode
                              Row(
                                children: [
                                  Icon(Icons.arrow_forward_ios,
                                      color: ColorTheme.pink,
                                      size: size.height * 0.018),
                                  textTitle(" BarCode : 000000000000000",
                                      size.height * 0.02, Colors.black, 1),
                                ],
                              ),
                              // ขนาด ( w x h )
                              Row(
                                children: [
                                  Icon(Icons.arrow_forward_ios,
                                      color: ColorTheme.pink,
                                      size: size.height * 0.018),
                                  textTitle(" ขนาด ( w x h ) : 210 x 300 mm.",
                                      size.height * 0.02, Colors.black, 1),
                                ],
                              ),
                              // จำนวนหน้า
                              Row(
                                children: [
                                  Icon(Icons.arrow_forward_ios,
                                      color: ColorTheme.pink,
                                      size: size.height * 0.018),
                                  textTitle(" จำนวนหน้า : 250 หน้า",
                                      size.height * 0.02, Colors.black, 1),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ISBN
                              Row(
                                children: [
                                  Icon(Icons.arrow_forward_ios,
                                      color: ColorTheme.pink,
                                      size: size.height * 0.018),
                                  textTitle(" ISBN : 0000000000",
                                      size.height * 0.02, Colors.black, 1),
                                ],
                              ),
                              // ปีพิมพ์
                              Row(
                                children: [
                                  Icon(Icons.arrow_forward_ios,
                                      color: ColorTheme.pink,
                                      size: size.height * 0.018),
                                  textTitle(" ปีพิมพ์ : 16/2560",
                                      size.height * 0.02, Colors.black, 1),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // เส้นคั่น
                Container(
                  color: Colors.black12,
                  height: 2,
                  width: size.width * 0.8,
                ),
                // เรื่องที่มักซื้อด้วยกัน
                Container(
                  margin: EdgeInsets.only(
                      top: size.height * 0.02, bottom: size.height * 0.02),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: textTitle("หนังสือที่เคยดูล่าสุด",
                        size.height * 0.0225, ColorTheme.pink, 1),
                  ),
                ),
                recommandCard(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottom(),
    );
  }

  Widget buttonTag(text) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.025,
      margin: EdgeInsets.only(left: size.width * 0.02),
      child: RaisedButton(
        onPressed: () => {},
        color: Colors.grey[200],
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "Heavent",
            fontWeight: FontWeight.w500,
            color: Colors.grey[800],
            fontSize: size.height * 0.018,
          ),
        ),
      ),
    );
  }

  Widget recommandCard() {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bookImg.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Stack(
                  children: [
                    Container(
                      child: Image.asset(
                        bookImg[index],
                        fit: BoxFit.cover,
                      ),
                      height: size.height * 0.15,
                      width: size.width * 0.3,
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      width: size.width * 0.3,
                      height: size.height * 0.055,
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
                                  fontSize: size.height * 0.015,
                                ),
                              ),
                            ),
                            RatingBarIndicator(
                              rating: bookRating[index],
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 10.0,
                              unratedColor: Colors.amber.withAlpha(20),
                              direction: Axis.horizontal,
                            ),
                            Text(
                              bookPrice[index].toStringAsFixed(2) + " บาท",
                              style: TextStyle(
                                fontFamily: "Heavent",
                                color: Colors.white,
                                fontSize: size.height * 0.015,
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
        },
      ),
    );
  }

  Widget textTitle(text, fontSize, color, maxLines) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: "Heavent",
        fontWeight: FontWeight.w500,
        color: color,
        fontSize: fontSize,
      ),
    );
  }

  Widget bottom() {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.07,
      child: Row(
        children: <Widget>[
          Container(
            width: size.width * 0.25,
            color: ColorTheme.pink.withOpacity(0.25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.chat,
                    color: ColorTheme.pink, size: size.height * 0.025),
                textTitle("พูดคุย", size.height * 0.02, ColorTheme.pink, 1),
              ],
            ),
          ),
          Container(
            width: size.width * 0.25,
            color: ColorTheme.pink.withOpacity(0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.local_grocery_store,
                    color: ColorTheme.pink, size: size.height * 0.025),
                textTitle(
                    "หยิบใส่รถเข็น", size.height * 0.02, ColorTheme.pink, 1),
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: ColorTheme.pink,
              child: textTitle(
                  "ซื้อทันที", size.height * 0.03, ColorTheme.whilte, 1),
            ),
          ),
        ],
      ),
    );
  }
}
