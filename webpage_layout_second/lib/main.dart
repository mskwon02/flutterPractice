import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 200, right: 200),
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 70,
          leading: Image.asset("image/logo2.png"),
          leadingWidth: 180,
          shape: Border(bottom: BorderSide(color: Color(0x77A1A1A1), width: 1)),
          title: Row(
            children: [
              Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Home",
                    style: TextStyle(fontSize: 16),
                  )),
              Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Product",
                    style: TextStyle(fontSize: 16),
                  )),
              Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Setting",
                    style: TextStyle(fontSize: 16),
                  )),
              Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "About",
                    style: TextStyle(fontSize: 16),
                  ))
            ],
          ),
          actions: [
            Container(
                margin: EdgeInsets.all(10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                )),
            Container(
                margin: EdgeInsets.all(10),
                child: Container(
                  height: 60,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0x77A1A1A1)),
                          backgroundColor: Colors.white,
                          elevation: 0,
                          foregroundColor: Colors.black),
                      onPressed: () {},
                      child: Text("Get Start")),
                ))
          ],
        ),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      //그라데이션 박스
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffe7e9f6),
                            Colors.white,
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 32,
                          ),
                          Text(
                            "Say bye to chaos.",
                            style: TextStyle(
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                                fontSize: 48),
                          ),
                          Container(
                              width: 500,
                              margin: EdgeInsets.all(12),
                              child: Text(
                                "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                                textAlign: TextAlign.center,
                              )),
                          Container(
                            margin: EdgeInsets.all(24),
                            width: 200,
                            height: 60,
                            child: ElevatedButton(
                                onPressed: () {}, child: Text('Get started')),
                          ),
                          Container(
                              margin: EdgeInsets.all(24),
                              child: Image.asset("image/mainPageImg.png"))
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Logoipsum(Icon(Icons.ac_unit)),
                      Logoipsum(Icon(Icons.account_balance)),
                      Logoipsum(Icon(Icons.local_fire_department)),
                      Logoipsum(Icon(Icons.sunny))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

Widget Logoipsum(Icon iconWidget){
  return Container(
    width: 200,
    margin: EdgeInsets.all(20),
    child: ListTile(
        leading: iconWidget,
        title: Text("Logoipsum")),
  );
}

