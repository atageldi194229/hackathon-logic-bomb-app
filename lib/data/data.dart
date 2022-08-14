import '../model/entry_imgs_model.dart';

List<VideoListModel> getImages() {
  List<VideoListModel> imgs = [];
  VideoListModel images=VideoListModel();

  images.imgUrl="https://images.pexels.com/photos/4049791/pexels-photo-4049791.jpeg?auto=compress&cs=tinysrgb&w=600";
  images.videoName="Bal gazan we söwda et";
  imgs.add(images);
  images=VideoListModel();
  //
  images.imgUrl="https://images.pexels.com/photos/4259707/pexels-photo-4259707.jpeg?auto=compress&cs=tinysrgb&w=600";
  images.videoName="Öz başarnyklaryňy öwret";
  imgs.add(images);
  images=VideoListModel();
  //
  images.imgUrl="https://images.pexels.com/photos/3584951/pexels-photo-3584951.jpeg?auto=compress&cs=tinysrgb&w=600";
  images.videoName="Surat almak sungatyny öwren";
  imgs.add(images);
  images=VideoListModel();
  //

  return imgs;
}