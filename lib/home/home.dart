import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon/data/data.dart';
import 'package:hackathon/entry/entry.dart';
import 'package:hackathon/home/videoList.dart';
import 'package:hackathon/model/entry_imgs_model.dart';
import 'package:hackathon/home/carousel.dart';
import 'package:hackathon/home/optionsLayer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Entry(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xfff5f8fd)),
            padding: EdgeInsets.symmetric(horizontal: 24),
            margin: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Gözle",
                      hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(Icons.search),
              ],
            ),
          ),
          Carousell(),
          OptionsLayer(),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 23,right: 23),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Saýlananlar",style: TextStyle(fontWeight: FontWeight.w700,fontSize:12 ,
              color: Color.fromRGBO(252, 74, 74, 1)),),
              Text("Ählisi",style: TextStyle(fontWeight: FontWeight.w700,fontSize:12, ),),
            ],),
          ),
          VideoList(),
        ],
      ),
    );
  }
}
