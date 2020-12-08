import 'package:chulabook/Shared/Color.dart';
import 'package:chulabook/UI/BookDetail.dart';
import 'package:chulabook/UI/Cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:image_slider/image_slider.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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
  List<String> bookAuthorName = [
    'เจ้าหญิงผู้เลอโฉม',
    'Lu Ye Qian He',
    'Priest (พีต้า)',
    'กู้ม่าน',
    'ธนา เธียรอัจฉริยะ',
    'โม่เซียงถงซีว',
  ];
  List<String> bookDescription = [
    "ใครจะไปคิดว่า AE สาวสวยสุดเพอร์เฟ็กต์อย่าง 'กุ๊งกิ๊ง' จะแอบมีความสัมพันธ์ลับๆ กับผู้ชายคนหนึ่ง คนที่รักษาระยะห่างเสมอในที่ทำงาน แต่กลับเบียดแนบชิดอย่างเร่าร้อนในยามค่ำคืนโดยไม่มีใครรู้ \n ก็ 'ฮาโซเบะ ชินเซ' คนนั้นเป็นทั้งเจ้านายที่แสนร้ายกาจและเพื่อนที่รู้ใจเธอนี่นา ไม่ว่าเรื่องอะไรเธอและเขาก็เข้ากันได้ดีเสมอ โดยเฉพาะ ‘เรื่องบนเตียง’ เป็นแค่ความสัมพันธ์แบบสบายๆ ไม่ต้องผูกมัดให้วุ่นวาย เหงาเมื่อไหร่ก็มาเจอกัน หรือถ้าอยากจูบ...ตอนไหนก็ได้ทั้งนั้น ขอแค่ไม่เผลอใจไปหลงรัก และผูกพันกันเพียงร่างกายตามที่ตกลงกันไว้ก็พอ \n แต่กุ๊งกิ๊งจะทำยังไง เมื่อวันหนึ่งความอ่อนโยนที่ไม่จำเป็นของชินเซเริ่มทำให้หัวใจเธอหวั่นไหว จนเริ่มติดใจ ‘การเล่นเป็นแฟนกัน’ ขึ้นมา เธอจะเลือกทางไหนระหว่างความใกล้ชิดที่แสนทรมาน หรือตัดใจจบความสัมพันธ์ที่ไม่อาจไปได้ไกลกว่านี้ลงซะ",
    "'ซูอวี้' เชฟอาหารทะเลที่อยู่ๆ ก็เกิดทะลุมิติเข้ามาอยู่ในร่างคุณชายน้อยตระกูลขุนนางตกยาก ทั้งยังถูกปฏิบัติอย่างโหดร้ายทารุณ ทำให้เขาต้องงัดเอาฝีมือในการทำอาหารออกมาใช้เพื่อหาเลี้ยงชีพ ทว่าเมื่อเขาได้พบกับเจ้าแมวน้อยที่ดูเหมือนจะไม่ใช่แมวธรรมดา... ชีวิตเขาในวันข้างหน้าก็ไม่เหมือนเดิมต่ออีกต่อไป",
    "ในแคว้นต้าเหลียงอันยิ่งใหญ่ ซึ่งเจริญรุ่งเรืองด้วยสิ่งอำนวนความสะดวก อย่างหุ่นจักรวาลและเครื่องจักรไอน้ำที่ใช้ถ่านหิน รวมถึงเชื้อเพลิงหายากอย่างทองคำเหลวม่วงในการขับเคลื่อน \n เด็กหนุ่มนาม 'ฉางเกิง' อาศัยอยู่ในเมืองเล็กๆ ตรงชายแดนเมื่อครั้งฉางเกิงยังเยาว์วัยได้ลอบหนีออกไปเที่ยวเล่น นอกประตูเมืองตามลำพัง ทำให้พบเข้ากับฝูงหมาป่าจนเกือบเอาชีวิตไม่รอด ดีที่ 'เสิ่นสือลิ่ว' ผ่านมาช่วยไว้ทัน จึงกราบเป็นพ่อบุญธรรมเพื่อทดแทนบุญคุณช่วยชีวิต \n แต่แล้ววันหนึ่งกองทัพอนารยชนนอกด่านลอบบุกเข้ามาโจมตีเมือง ชีวิตของฉางเกิงเกิดการเปลี่ยนแปลงอย่างใหญ่หลวงภายในค่ำคืนเดียว ราวกับว่าชีวิตในเมืองเล็กๆ แห่งนี้เป็นเพียงภาพลวงตา ยามนี้เขาไม่ได้เป็นเพียงเด็กหนุ่มที่มีชาติกำเนิดธรรมดาอีกแล้ว กระทั่งมารดาหรือแม้แต่พ่อบุญธรรมน้อยของเขาเองก็มีสถานะเปลี่ยนไป...",
    "สิบปีก่อน เฉียวจิงจิงไม่คิดว่าตัวเองจะส่องประกายเป็นดาวได้ แต่ถึงเธอจะสวยน่ารัก ผู้ชายที่เธอชอบกลับไม่รู้และไม่เคยสังเกตเห็นเธอเลยแม้แต่น้อย... เฉียวจิงจิง ซูเปอร์สตาร์สาวมืออาชีพ ทำงานหนักมาก แอบชอบเพื่อนสมัยเรียนมาเป็นสิบปีและไม่เคยลืมเขา แต่ในระหว่างระยะเวลาสิบปี เธอก็ยังใช้ชีวิตปกติ ยังมีแฟน ยังหวังว่าจะสามารถใช้ชีวิตได้โดยปราศจากผู้ชายคนนั้น อวี้ทู่ หรืออวี้ต้าเสินแห่งโรงเรียนมัธยม เขามีความฝันที่จะเป็นวิศวกรการบินและอวกาศ แต่ครอบครัวอยากให้เรียนเกี่ยวกับการเงิน แม้จะเรียนตามครอบครัวชี้นำ แต่กลับเลือกเรียนต่อและทำงานในหน่วยงานด้านการบินและอวกาศแห่งชาติ ระหว่างเรียนเขาได้คบหาผู้หญิงคนหนึ่ง ไม่กี่ปีก็เลิกกัน ทั้งสองคนพบกันอีกครั้งในโลกออนไลน์ ในเกม King of Glory",
    "น่าตื่นเต้นที่เราจะได้ฟังผู้บริหารธุรกิจมากประสบการณ์อย่าง 'ธนา เธียรอัจฉริยะ' เล่าถึงเส้นทางการย้ายตำแหน่งตัวเองจาก 'เด็กปลายโต๊ะ' มานั่งหัวโต๊ะ ประสบการณ์ของเขาในการร่วมงานกับบุคลากรชั้นครูของประเทศจะทำให้คุณรู้สึกเหมือนได้เคล็ดวิชาจากปราชญ์หลายท่านในเล่มนี้ เล่มเดียว",
    "'เจ้าจะลงไปเอง หรือจะให้ข้าลงมือ' เสิ่นหยวน ไม่คาดคิดมาก่อนว่าหนึ่งชีวิตของตนจะต้องมาสวมบทบาทเป็นชายใจโฉด ถูกลิขิตให้ต้องลงมือฆ่าลูกศิษย์อย่างโหดเหี้ยม เดิมทีเขาเป็นเพียงเด็กหนุ่มใกล้ตายคนหนึ่ง เมื่อลาจากโลกไปแล้วกลับตื่นขึ้นมาพบว่าตนอยู่ในร่างของ ‘เสิ่นชิงชิว’ ตัวร้ายของนิยายฮาเร็มที่เขาเคยอ่าน \n ตามเนื้อเรื่องแล้ว เสิ่นชิงชิวผู้นี้บุคลิกสง่างาม ทว่าเนื้อแท้กลับหน้าไหว้หลังหลอก ต่ำช้าถึงที่สุด คอยหาโอกาสเหยียบย่ำ ‘ลั่วปิงเหอ’ พระเอกของเรื่องในทุกทาง ซ้ำยังวางแผนปลิดชีพอย่างเลือดเย็น แต่เขาไม่ต้องการเป็นคนชั่วช้า ที่สุดท้ายต้องมาถูกพระเอกฆ่าตายอย่างอเนจอนาถตามบท แล้วเขาจะเอาตัวรอดยังไงดี? \n ทว่านึกไม่ถึง...ตัวร้ายกากๆ อย่างเขาที่ต้องหนีเอาชีวิตรอด กลับต้องคอยเอาตัวมาขวางดาบรับมีดแทนพระเอกตลอด บทที่เป็นของพวกนางเอกในฮาเร็มก็ดันมาตกอยู่ที่เขาหมด ทั้งไม่รู้ว่าบุพเพเล่นกลหรือนรกอเวจีเป็นใจ พระเอกที่เขาสอนมา กลับหาเรื่องให้เขาต้องคอยดุอยู่เรื่อย 'ลั่วปิงเหอ คุกเข่าดีๆ รู้หรือไม่ว่าทำไมถึงให้เจ้าคุกเข่า' ลั่วปิงเหอนั่งคุกเข่าตัวตรงแหน่ว กล่าวว่า 'ในฐานะที่เป็นศิษย์ แต่กลับล่วงละเมิดซือจุนขอรับ...'",
  ];
  List<double> bookRating = [0, 5, 5, 4.5, 0, 4.5];
  List<double> bookPrice = [349.00, 340.00, 350.00, 415.00, 395.00, 399.00];
  List<double> bookPSF = [0, 0, 0, 0, 0, 0];
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: ColorTheme.whilte,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.015, bottom: size.height * 0.015),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  color: ColorTheme.pink,
                  icon: Icon(Icons.menu),
                  iconSize: size.height * 0.03,
                  onPressed: () {},
                ),
                Image.asset(
                  "assets/Logo.png",
                  fit: BoxFit.contain,
                  width: size.width * 0.3,
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
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: size.height * 0.015),
            child: searchTextFiled(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (_, index) {
                if (index == 0) {
                  return ImageSlider(
                    showTabIndicator: true,
                    tabIndicatorColor: ColorTheme.whilte,
                    tabIndicatorSelectedColor: ColorTheme.pink,
                    tabIndicatorHeight: 10,
                    tabIndicatorSize: 10,
                    tabController: tabController,
                    curve: Curves.slowMiddle,
                    width: MediaQuery.of(context).size.width,
                    height: size.height * 0.25,
                    autoSlide: true,
                    duration: Duration(seconds: 8),
                    allowManualSlide: true,
                    children: links.map((String link) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          link,
                          width: MediaQuery.of(context).size.width,
                          height: 220,
                          fit: BoxFit.cover,
                        ),
                      );
                    }).toList(),
                  );
                } else if (index == 1) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                      top: size.height * 0.0125,
                      bottom: size.height * 0.01,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textTitle("หนังสือขายดี"),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "ดูทั้งหมด >",
                            style: TextStyle(
                              fontFamily: "Heavent",
                              fontWeight: FontWeight.w500,
                              color: ColorTheme.pink,
                              fontSize: size.height * 0.025,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else if (index == 2) {
                  return recommandCard();
                } else if (index == 3) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                      top: size.height * 0.0125,
                      bottom: size.height * 0.01,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textTitle("หนังสือมาใหม่"),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "ดูทั้งหมด >",
                            style: TextStyle(
                              fontFamily: "Heavent",
                              fontWeight: FontWeight.w500,
                              color: ColorTheme.pink,
                              fontSize: size.height * 0.025,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else if (index == 4) {
                  return recommandCard();
                } else if (index == 5) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                      top: size.height * 0.0125,
                      bottom: size.height * 0.01,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textTitle("หมวดหนังสือแนะนำ"),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "ดูทั้งหมด >",
                            style: TextStyle(
                              fontFamily: "Heavent",
                              fontWeight: FontWeight.w500,
                              color: ColorTheme.pink,
                              fontSize: size.height * 0.025,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else if (index == 6) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/1600421556833.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      left: size.width * 0.425,
                      bottom: size.height * 0.01,
                    ),
                    child: recommandCard(),
                  );
                } else if (index == 7) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/1596680979537.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      left: size.width * 0.425,
                      bottom: size.height * 0.01,
                    ),
                    child: recommandCard(),
                  );
                } else if (index == 8) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/1596681476879.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      left: size.width * 0.425,
                      bottom: size.height * 0.01,
                    ),
                    child: recommandCard(),
                  );
                } else if (index == 9) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/1589339968519.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      left: size.width * 0.425,
                      bottom: size.height * 0.01,
                    ),
                    child: recommandCard(),
                  );
                } else if (index == 10) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/1596681539453.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      left: size.width * 0.425,
                      bottom: size.height * 0.01,
                    ),
                    child: recommandCard(),
                  );
                } else if (index == 11) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/1596681641020.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      left: size.width * 0.425,
                      bottom: size.height * 0.01,
                    ),
                    child: recommandCard(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget recommandCard() {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bookImg.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
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
                      height: size.height * 0.25,
                      width: size.width * 0.375,
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      width: size.width * 0.375,
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

  Widget searchTextFiled() {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: size.height * 0.06,
        width: size.width * 0.95,
        padding: EdgeInsets.fromLTRB(size.width * 0.05, size.height * 0.015,
            size.width * 0.05, size.height * 0.015),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(1, 2),
              blurRadius: 5.0,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "พิมพ์ชื่อหนังสือ / ผู้แต่ง...",
                style: TextStyle(
                  fontFamily: "Heavent",
                  fontWeight: FontWeight.w500,
                  color: Colors.black38,
                  fontSize: size.height * 0.025,
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
                size: size.width * 0.06,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textTitle(text) {
    final size = MediaQuery.of(context).size;
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: "Heavent",
        fontWeight: FontWeight.w500,
        color: ColorTheme.pink,
        fontSize: size.height * 0.03,
      ),
    );
  }
}
