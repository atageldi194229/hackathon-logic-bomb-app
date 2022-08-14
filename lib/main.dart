import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon/category/categories.dart';
import 'package:hackathon/profile/profile.dart';
import 'home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int change=0;
  List sahypa=[];
  @override
  void initState() {
    HomePage homePage = HomePage();
    Categories categories=Categories();
    ProfilePage profilePage=ProfilePage();
    ProfilePage profile=ProfilePage();
    sahypa=[homePage,categories,profilePage,profile];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sahypa[change],
      bottomNavigationBar:ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: BottomNavyBar(
          selectedIndex: change,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeIn,
          backgroundColor: Color.fromRGBO(80, 86, 89, 1),
          //backgroundColor: Color.fromRGBO(25, 33, 38, 1),
          onItemSelected: (index) => setState(() => change = index),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.home_filled),
              title: Text('Baş sahypa'),
              activeColor: Colors.white,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('Kategoriva'),
              activeColor: Colors.white,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.shopping_bag),
              title: Text('Dukan',),
              activeColor: Colors.white,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.person_rounded),
              title: Text('Profil'),
              activeColor: Colors.white,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
