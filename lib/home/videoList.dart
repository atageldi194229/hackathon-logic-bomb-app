import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../data/videoListData.dart';
import '../model/entry_imgs_model.dart';


class VideoList extends StatefulWidget {
  const VideoList({Key? key}) : super(key: key);

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {

  List<VideoListModel> videoList = [];

  @override
  void initState() {
    videoList = getVideos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(height: 188,
      padding: EdgeInsets.only(left: 25,right: 35),
      child: ListView.builder(itemBuilder: (context, index) {
        return VideoTutorials(imgUrl:videoList[index].imgUrl,videoName: videoList[index].videoName,time: videoList[index].time,);
      },itemCount: videoList.length,),
    );
  }
}


class VideoTutorials extends StatelessWidget {
  var star=Icon(Icons.star,color: Color.fromRGBO(255, 199, 0, 1),);
   final String imgUrl, videoName,time;

   VideoTutorials({required this.videoName, required this.imgUrl,required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Stack(alignment: Alignment.center,
          children:[ 
            ClipRRect(child: CachedNetworkImage(imageUrl: imgUrl,width: 163,height: 130,)),
          Container(width: 163,height: 110,
                color: Colors.black26,
              child: Icon(Icons.play_arrow_rounded,size: 40,)),
        ],),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text(videoName,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color.fromRGBO(255, 18, 18, 1)),),
          Text(time,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(71, 71, 71, 1),),),
          Text("Başlangyç",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(71, 71, 71, 1),),),
          Row(children: [
            Icon(Icons.star,color: Color.fromRGBO(255, 199, 0, 1),),
            Icon(Icons.star,color: Color.fromRGBO(255, 199, 0, 1),),
            Icon(Icons.star,color: Color.fromRGBO(255, 199, 0, 1),),
            Icon(Icons.star,color: Color.fromRGBO(255, 199, 0, 1),),
            Icon(Icons.star,color: Color.fromRGBO(255, 199, 0, 1),),
          ],)
            ],),
      ],),
    );
  }
}
