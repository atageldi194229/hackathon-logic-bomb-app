import 'package:flutter/material.dart';
import '../entry/entry_imgs.dart';

List<ImagesModel> getImages() {
  List<ImagesModel> imgs = [];
  ImagesModel images=ImagesModel();

  images.imgUrl="https://images.pexels.com/photos/4049791/pexels-photo-4049791.jpeg?auto=compress&cs=tinysrgb&w=600";
  images.letter="Bal gazan we söwda et";
  imgs.add(images);
  images=ImagesModel();
  //
  images.imgUrl="https://images.pexels.com/photos/4259707/pexels-photo-4259707.jpeg?auto=compress&cs=tinysrgb&w=600";
  images.letter="Öz başarnyklaryňy öwret";
  imgs.add(images);
  images=ImagesModel();
  //
  images.imgUrl="https://images.pexels.com/photos/3584951/pexels-photo-3584951.jpeg?auto=compress&cs=tinysrgb&w=600";
  images.letter="Surat almak sungatyny öwren";
  imgs.add(images);
  images=ImagesModel();
  //

  return imgs;
}