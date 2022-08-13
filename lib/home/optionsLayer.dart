import 'package:flutter/material.dart';

class OptionsLayer extends StatefulWidget {
  const OptionsLayer({Key? key}) : super(key: key);

  @override
  State<OptionsLayer> createState() => _OptionsLayerState();
}

class _OptionsLayerState extends State<OptionsLayer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 61,
          width: MediaQuery.of(context).size.width,
          child: Stack(children: [Image.asset("../asset/img/Group19.png",
          ),
            Container(
              padding: EdgeInsets.only(left: 15,top: 5),
              width: MediaQuery.of(context).size.width*0.7,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Image.asset("../asset/img/image1.png",),
                Image.asset("../asset/img/image2.png",),
                Image.asset("../asset/img/image3.png",),
              ],),
            ),
          ],),
        ),
        Container(width: MediaQuery.of(context).size.width/1.5,
          margin: EdgeInsets.only(right: 90),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sapak ber",style: TextStyle(fontWeight: FontWeight.w700,fontSize:12 ),),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Text(" Bal gazan",style: TextStyle(fontWeight: FontWeight.w700,fontSize:12 ),),
              ),
              Text("Dükanda söwda et",style: TextStyle(fontWeight: FontWeight.w700,fontSize:12 ),),
            ],),
        )
      ],
    );
  }
}
