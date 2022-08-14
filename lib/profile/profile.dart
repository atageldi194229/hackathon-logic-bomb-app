import 'package:flutter/material.dart';
import 'package:hackathon/profile/owretmek.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int max=3;
  bool gizlin=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: Text("Telefon belgi arkaly registrasiýa",
            style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18,right: 38),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Sahypaňyz barmy?",style: TextStyle(fontWeight: FontWeight.w700,fontSize:12,
                    color: Color.fromRGBO(103, 101, 101, 1)),),
                InkWell(onTap: (){
                  setState(() {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Owretmek(),),);
                  });
                },
                  child: Container(height: 25,width: 97,
                    decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black),
                    borderRadius: BorderRadius.circular(5)),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Text("Gir",style: TextStyle(fontWeight: FontWeight.w700,fontSize:12, ),),
                      Icon(Icons.arrow_forward),
                    ],),
                  ),
                ),
              ],),
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "At",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 1,color: Color.fromRGBO(185, 185, 185, 1),),),
                hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize:16,
                color: Color.fromRGBO(185, 185, 185, 1),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 23),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Familiýa",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1,color: Color.fromRGBO(185, 185, 185, 1),),),
                  hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize:16,
                    color: Color.fromRGBO(185, 185, 185, 1),),
                ),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Telefon belgi",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1,color: Color.fromRGBO(185, 185, 185, 1),),),
                hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize:16,
                  color: Color.fromRGBO(185, 185, 185, 1),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 23),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Açar söz",
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1,color: Color.fromRGBO(185, 185, 185, 1),),),
                  hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize:16,
                    color: Color.fromRGBO(185, 185, 185, 1),),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(value: gizlin,
                    onChanged: (change){
                  setState(() {
                    gizlin=change!;
                  });
                    }),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Gizlilik syyasaty bilen ylalasyaryn",style: TextStyle(fontWeight: FontWeight.w700,fontSize:12, ),),
                ),
              ],),
            InkWell(
              onTap: (){
                setState(() {
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 39,width: 295,
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: Colors.black),
                child: Text("Sahypa acmak",style: TextStyle(fontWeight: FontWeight.w700,fontSize:12,
                color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
