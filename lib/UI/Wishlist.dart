import 'package:chulabook/Shared/Color.dart';
import 'package:chulabook/UI/BookDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Wishlist extends StatefulWidget {
  Wishlist({Key key}) : super(key: key);

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  List<String> bookImg = [
    'assets/1000236740_front_XXL.jpg',
    'assets/1000235778_front_XXL.jpg',
  ];
  List<String> bookName = [
    'นายคะ อย่ามาร้าย',
    'อร่อยล้นวัง เล่ม 3',
  ];
  List<String> bookAuthorName = ['เจ้าหญิงผู้เลอโฉม', 'Lu Ye Qian He'];
  List<String> bookDescription = [
    "ใครจะไปคิดว่า AE สาวสวยสุดเพอร์เฟ็กต์อย่าง 'กุ๊งกิ๊ง' จะแอบมีความสัมพันธ์ลับๆ กับผู้ชายคนหนึ่ง คนที่รักษาระยะห่างเสมอในที่ทำงาน แต่กลับเบียดแนบชิดอย่างเร่าร้อนในยามค่ำคืนโดยไม่มีใครรู้ \n ก็ 'ฮาโซเบะ ชินเซ' คนนั้นเป็นทั้งเจ้านายที่แสนร้ายกาจและเพื่อนที่รู้ใจเธอนี่นา ไม่ว่าเรื่องอะไรเธอและเขาก็เข้ากันได้ดีเสมอ โดยเฉพาะ ‘เรื่องบนเตียง’ เป็นแค่ความสัมพันธ์แบบสบายๆ ไม่ต้องผูกมัดให้วุ่นวาย เหงาเมื่อไหร่ก็มาเจอกัน หรือถ้าอยากจูบ...ตอนไหนก็ได้ทั้งนั้น ขอแค่ไม่เผลอใจไปหลงรัก และผูกพันกันเพียงร่างกายตามที่ตกลงกันไว้ก็พอ \n แต่กุ๊งกิ๊งจะทำยังไง เมื่อวันหนึ่งความอ่อนโยนที่ไม่จำเป็นของชินเซเริ่มทำให้หัวใจเธอหวั่นไหว จนเริ่มติดใจ ‘การเล่นเป็นแฟนกัน’ ขึ้นมา เธอจะเลือกทางไหนระหว่างความใกล้ชิดที่แสนทรมาน หรือตัดใจจบความสัมพันธ์ที่ไม่อาจไปได้ไกลกว่านี้ลงซะ",
    "'ซูอวี้' เชฟอาหารทะเลที่อยู่ๆ ก็เกิดทะลุมิติเข้ามาอยู่ในร่างคุณชายน้อยตระกูลขุนนางตกยาก ทั้งยังถูกปฏิบัติอย่างโหดร้ายทารุณ ทำให้เขาต้องงัดเอาฝีมือในการทำอาหารออกมาใช้เพื่อหาเลี้ยงชีพ ทว่าเมื่อเขาได้พบกับเจ้าแมวน้อยที่ดูเหมือนจะไม่ใช่แมวธรรมดา... ชีวิตเขาในวันข้างหน้าก็ไม่เหมือนเดิมต่ออีกต่อไป",
  ];
  List<double> bookRating = [0, 5, 5];
  List<double> bookPrice = [349.00, 340.00];
  List<double> bookPSF = [0, 0];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorTheme.whilte,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: ColorTheme.pink,
        title: textTitle("หนังสือที่ชื่นชอบ", size.height * 0.03,
            FontWeight.w500, ColorTheme.whilte),
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
          child: GridView.builder(
            padding: EdgeInsets.only(
              top: size.height * 0.01,
              left: size.width * 0.02,
              right: size.width * 0.02,
            ),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: 2,
            itemBuilder: (_, index) => InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookDetail(
                      bookName: bookName[index],
                      bookImg: bookImg[index],
                      bookRating: bookRating[index],
                      bookPrice: bookPrice[index],
                      bookAuthorName: bookAuthorName[index],
                      bookDescription: bookDescription[index],
                      bookPSF: bookPSF[index],
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Container(
                    color: ColorTheme.whilte,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            bookImg[index],
                            fit: BoxFit.contain,
                            width: size.width * 0.35,
                          ),
                        ),
                        Positioned(
                            top: 0.0,
                            right: 0.0,
                            child: IconButton(
                              icon: Icon(Icons.delete),
                              iconSize: size.height * 0.035,
                              color: Colors.red,
                              onPressed: () {},
                            )),
                        Positioned(
                          left: 0.0,
                          bottom: 0.0,
                          width: size.width * 0.44,
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
              ),
            ),
          ),
        ),
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
