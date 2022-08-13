import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/entry/entry_imgs.dart';

import '../data/data.dart';

class Entry extends StatefulWidget {
  const Entry({Key? key}) : super(key: key);

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {

  List<ImagesModel> imgs = [];

  void initState() {
    imgs = getImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 3,
        itemBuilder: (contex,index)=>
          Images(title: imgs[index].letter, imgUrl:imgs[index].imgUrl ,),),
    );
  }
}

class Images extends StatelessWidget {
  final String imgUrl, title;

  Images({required this.title, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            child: Expanded(
              child: CachedNetworkImage(
                imageUrl: imgUrl,fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          ),
          Positioned(bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
              decoration: BoxDecoration(gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color.fromRGBO(194, 177, 177, 1),Color.fromRGBO(255, 255, 255, 0)])),
              child: Text(title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(43, 43, 43,1)),),
            ),
          ),
        ],
      ),
    );
  }
}
