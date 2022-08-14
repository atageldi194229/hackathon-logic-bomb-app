import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Carousell extends StatefulWidget {
  const Carousell({Key? key}) : super(key: key);

  @override
  State<Carousell> createState() => _CarousellState();
}

class _CarousellState extends State<Carousell> {

  List carouselImag=[
    "https://images.pexels.com/photos/3791664/pexels-photo-3791664.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/4492129/pexels-photo-4492129.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/6996351/pexels-photo-6996351.jpeg?auto=compress&cs=tinysrgb&w=600",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25,bottom: 25),
      child: CarouselSlider.builder(
        itemCount: carouselImag.length,
        options: CarouselOptions(
          viewportFraction: 1,
          aspectRatio: 1,
          height: 160,
          //enlargeCenterPage: true,
          autoPlayAnimationDuration: Duration(seconds: 2),
          autoPlay: true,
          autoPlayCurve: Curves.easeIn,
          clipBehavior: Clip.antiAliasWithSaveLayer,
        ),
        itemBuilder: (ctx, index, realIdx) {
          return Container(
            width: MediaQuery.of(context).size.width,
            child:Expanded(
              child: CachedNetworkImage(
                imageUrl: carouselImag[index],
              width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
            ),
          );
        },
      ),);
  }
}