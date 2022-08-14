import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Owretmek extends StatefulWidget {
  const Owretmek({Key? key}) : super(key: key);

  @override
  State<Owretmek> createState() => _OwretmekState();
}

class _OwretmekState extends State<Owretmek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 12, right: 34),
            child: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 38),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CircleAvatar(
                radius: 50,
                child: ClipRRect(
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&w=600',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "At",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1,
                    color: Color.fromRGBO(185, 185, 185, 1),
                  ),
                ),
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromRGBO(185, 185, 185, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 23),
              child: TextFormField(
                readOnly: true,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Reýting(141200)",
                  suffixIcon: Image.asset("../asset/img/star.png"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(185, 185, 185, 1),
                    ),
                  ),
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color.fromRGBO(185, 185, 185, 1),
                  ),
                ),
              ),
            ),
            CachedNetworkImage(imageUrl: "imageUrl"),
            Container(
              alignment: Alignment.center,
              height: 34,
              width: 127,
              margin: EdgeInsets.only(top: 70),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
              child: Text(
                "Sahypa acmak",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
