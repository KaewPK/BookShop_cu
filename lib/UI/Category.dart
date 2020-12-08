import 'package:chulabook/Shared/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorTheme.whilte,
          bottom: TabBar(
            indicatorColor: ColorTheme.pink,
            tabs: [
              Tab(text: "หนังสือ"),
              Tab(text: "อี-บุ๊ค"),
              Tab(text: "ไลฟ์สไตล์"),
            ],
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontFamily: "Heavent",
              fontWeight: FontWeight.w500,
              fontSize: size.height * 0.025,
            ),
          ),
          title: searchTextFiled(),
        ),
        body: TabBarView(
          children: [
            categoryBook(),
            categoryEBook(),
            categoryLiftStyle(),
          ],
        ),
      ),
    );
  }

  Widget searchTextFiled() {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.only(top: size.height * 0.02, bottom: size.height * 0.015),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: size.height * 0.05,
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
                    fontSize: size.height * 0.02,
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
      ),
    );
  }

  Widget categoryBook() {
    final List<String> categoryBook = <String>[
      'หนังสือ สสวท.',
      'คู่มือเตรียมสอบ',
      'บริหารธุรกิจ/เศรษฐศาสตร์',
      'การแพทย์และพยาบาล',
      'วรรณกรรม',
      'การศึกษา',
      'การพัฒนาตนเอง',
      'ครอบครัวและเด็ก',
      'การท่องเที่ยว',
      'วิศวกรรม',
      'พระราชนิพนธ์ พระนิพนธ์',
      'ประวัติศาสตร์ ศาสนา วัฒนธรรม การเมือง การปกครอง',
      'คอมพิวเตอร์',
      'อาหารโภชนาการ การตัดเย็บ',
      'ศิลปะ/ดนตรี/นันทนาการ'
    ];
    final size = MediaQuery.of(context).size;
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: categoryBook.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Container(
            height: size.height * 0.04,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: size.height * 0.03,
                      color: ColorTheme.pink,
                    ),
                    Container(
                      width: size.width * 0.8,
                      padding: EdgeInsets.only(left: size.width * 0.02),
                      child: Text(
                        '${categoryBook[index]}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "Heavent",
                          color: Colors.black,
                          fontSize: size.height * 0.0225,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: size.height * 0.02,
                  color: ColorTheme.pink,
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          Divider(thickness: size.height * 0.001),
    );
  }

  Widget categoryEBook() {
    final List<String> categoryBook = <String>[
      'หนังสือ สสวท.',
      'คู่มือเตรียมสอบ',
      'บริหารธุรกิจ/เศรษฐศาสตร์',
      'การแพทย์และพยาบาล',
      'วรรณกรรม',
      'การศึกษา',
      'การพัฒนาตนเอง',
      'ครอบครัวและเด็ก',
      'การท่องเที่ยว',
      'วิศวกรรม',
      'พระราชนิพนธ์ พระนิพนธ์',
      'ประวัติศาสตร์ ศาสนา วัฒนธรรม การเมือง การปกครอง',
      'คอมพิวเตอร์',
      'อาหารโภชนาการ การตัดเย็บ',
      'ศิลปะ/ดนตรี/นันทนาการ'
    ];
    final size = MediaQuery.of(context).size;
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: categoryBook.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Container(
            height: size.height * 0.04,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: size.height * 0.03,
                      color: ColorTheme.pink,
                    ),
                    Container(
                      width: size.width * 0.8,
                      padding: EdgeInsets.only(left: size.width * 0.02),
                      child: Text(
                        '${categoryBook[index]}',
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "Heavent",
                          color: Colors.black,
                          fontSize: size.height * 0.0225,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: size.height * 0.02,
                  color: ColorTheme.pink,
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          Divider(thickness: size.height * 0.001),
    );
  }

  Widget categoryLiftStyle() {
    final List<String> categoryBook = <String>[
      'สินค้าที่ระลึก',
      'อุปกรณ์การแพทย์',
      'เครื่องคำนวณ',
      'อุปกรณ์การเขียน',
      'เครื่องแบบ/เครื่องหมายนิสิต',
      'อุปกรณ์สำนักงาน',
      'อุปกรณ์เครื่องกีฬา',
      'อุปกรณ์คอมพิวเตอร์',
      'อุปกรณ์ใส่รูปถ่าย',
      'บัตรอวยพร',
      'เบ็ดเตล็ด'
    ];
    final size = MediaQuery.of(context).size;
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: categoryBook.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Container(
            height: size.height * 0.04,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: size.height * 0.03,
                      color: ColorTheme.pink,
                    ),
                    Container(
                      width: size.width * 0.8,
                      padding: EdgeInsets.only(left: size.width * 0.02),
                      child: Text(
                        '${categoryBook[index]}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "Heavent",
                          color: Colors.black,
                          fontSize: size.height * 0.0225,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: size.height * 0.02,
                  color: ColorTheme.pink,
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          Divider(thickness: size.height * 0.001),
    );
  }
}
