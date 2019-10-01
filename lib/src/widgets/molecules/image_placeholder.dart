import 'package:flutter/widgets.dart';

class ImagePlaceholder extends StatelessWidget {
  final String imageUrl;
  final double widthImage;
  final double heightImage;

  ImagePlaceholder({this.imageUrl, this.widthImage, this.heightImage});

  @override
  Widget build(BuildContext context) => FadeInImage.assetNetwork(
        placeholder: 'images/placeholder.jpeg',
        image: imageUrl,
        width: widthImage,
        height: heightImage,
      );
}
