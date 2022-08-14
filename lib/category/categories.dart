import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../data/category_data.dart';
import '../model/category_model.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List<CategoriesModel> categories = [];

  @override
  void initState() {
    categories = getCategories();
    super.initState();
  }

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
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(Icons.search),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(height: 480,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: GridView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => CategoriesTile(
                  title: categories[index].categoriesName,
                  imgUrl: categories[index].imgUrl), 
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
              crossAxisSpacing: 14,mainAxisSpacing: 18,childAspectRatio: 0.9),
            ),
          ),
        ],
      ),
    );
  }
}




class CategoriesTile extends StatelessWidget {
  final String imgUrl, title;

  CategoriesTile({required this.title, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(imageUrl:imgUrl,width: 70,height: 70, fit: BoxFit.cover,),
        ),
        Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize:14 ,),),
      ],),
      );
  }
}