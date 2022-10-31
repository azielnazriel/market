import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  // TabController _tabController;
  // int _activeTabIndex;

  @override
  void iniState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Beranda'),
      // ),
      //menu search
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 274,
                  height: 29,
                  child: Form(
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 255, 255, 255))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                // height:20,
                                width: 14,
                                color: Color.fromARGB(138, 145, 215, 118))),
                        hintText: "temukan tanaman yang anda inginkan",
                        prefixIcon: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Color.fromARGB(26, 58, 11, 1),
                          ),
                          onPressed: () {},
                        ),
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(47, 85, 24, 1),
                            fontSize: 12.0,
                            fontFamily: 'Roboto'),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
                height: 300,
                width: double.infinity,
                child: Carousel(
                  dotSize: 6.0,
                  dotSpacing: 15.0,
                  dotPosition: DotPosition.bottomCenter,
                  dotColor: Color.fromRGBO(166, 212, 141, 1),
                  images: [
                      Image.asset('assets/1.jpg', fit: BoxFit.cover,),
                      Image.asset('assets/2.jpg', fit: BoxFit.cover,),
                      Image.asset('assets/3.jpg', fit: BoxFit.cover,),
                      Image.asset('assets/4.png', fit: BoxFit.cover,),
                    ],
                )
           ),
          ],
        ),
      ),
    );
  }
}
