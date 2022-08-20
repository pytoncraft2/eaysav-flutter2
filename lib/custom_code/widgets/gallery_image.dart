// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:galleryimage/galleryimage.dart' as mygallery;

class GalleryImage extends StatefulWidget {
  const GalleryImage({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  State<GalleryImage> createState() => _GalleryImageState();
}

class _GalleryImageState extends State<GalleryImage> {
  @override
  Widget build(BuildContext context) {
    return mygallery.GalleryImage(
      imageUrls: [
        "https://cosmosmagazine.com/wp-content/uploads/2020/02/191010_nature.jpg",
        "https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg",
        "https://isha.sadhguru.org/blog/wp-content/uploads/2016/05/natures-temples.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/7/77/Big_Nature_%28155420955%29.jpeg",
        "https://s23574.pcdn.co/wp-content/uploads/Singular-1140x703.jpg",
        "https://www.expatica.com/app/uploads/sites/9/2017/06/Lake-Oeschinen-1200x675.jpg"
      ],
    );
  }
}
