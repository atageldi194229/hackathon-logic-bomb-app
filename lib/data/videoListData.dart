import '../model/entry_imgs_model.dart';

List<VideoListModel> getVideos() {
  List<VideoListModel> videoList = [];
  VideoListModel videos=VideoListModel();

  videos.imgUrl="https://images.pexels.com/photos/1199590/pexels-photo-1199590.jpeg?auto=compress&cs=tinysrgb&w=600";
  videos.videoName="Fitnes";
  videos.time="15 min";
  videoList.add(videos);
  videos=VideoListModel();
  //
  videos.imgUrl="https://images.pexels.com/photos/542556/pexels-photo-542556.jpeg?auto=compress&cs=tinysrgb&w=600";
  videos.videoName="Sungaty owren";
  videos.time="25 min";
  videoList.add(videos);
  videos=VideoListModel();
  //
  videos.imgUrl="https://images.pexels.com/photos/2696064/pexels-photo-2696064.jpeg?auto=compress&cs=tinysrgb&w=600";
  videos.videoName="Tagamlar";
  videos.time="10 min";
  videoList.add(videos);
  videos=VideoListModel();
  //
  videos.imgUrl="https://images.pexels.com/photos/3654771/pexels-photo-3654771.jpeg?auto=compress&cs=tinysrgb&w=600";
  videos.videoName="Ansat orum";
  videos.time="20";
  videoList.add(videos);
  videos=VideoListModel();
  //
  videos.imgUrl="https://images.pexels.com/photos/4260325/pexels-photo-4260325.jpeg?auto=compress&cs=tinysrgb&w=600";
  videos.videoName="Ansat owren";
  videos.time="15";
  videoList.add(videos);
  videos=VideoListModel();
  //

  return videoList;
}