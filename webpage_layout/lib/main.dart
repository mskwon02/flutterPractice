import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 60,//앱바 세로 크기
          leadingWidth: 250,//리딩영역 가로
          leading: Container(
            margin: EdgeInsets.all(10),
            child: Lottie.asset('lottie/logo.json'),
          ),
          title: Container(
            height: 40,
            width: 500,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[100],
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(70)),
              ),
            ),
          ),
          actions: [
            Container(
                margin: EdgeInsets.only(right: 50, left: 50),
                child: Icon(Icons.message)),
            Container(
                margin: EdgeInsets.only(right: 50, left: 50),
                child: Icon(Icons.person))
          ],
        ),
        body: SideBar()
    );
  }
}

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int selectedMenuIdx=0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 250,
          padding: EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                      tileColor: Colors.white,
                      onTap: () {
                        setState(() {
                          selectedMenuIdx = index;
                        });
                      },
                      leading: Icon(Icons.timer),
                      title: Text("Dashboard"),
                      selected: selectedMenuIdx == index,
                      selectedTileColor: Colors.blue,
                      //선택됐을 때 타일 색깔
                      selectedColor: Colors.white,
                      //선택됐을때 내용 색깔
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                );
              }),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey[200],
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: CardSmall()),
                      Expanded(child: CardSmall()),
                      Expanded(child: CardSmall()),
                      Expanded(child: CardSmall())
                    ],
                  ),
                  CardLarge(),
                  CardLarge()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CardSmall extends StatelessWidget {
  const CardSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Container(
        height: 150,
      ),
      color: Colors.white,
    );
  }
}

class CardLarge extends StatelessWidget {
  const CardLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Container(
        height: 300,
      ),
      color: Colors.white,
    );
  }
}
