import 'package:flutter/material.dart';
import 'package:flutter_zero_to_hero/src/widgets/molecules/image_placeholder.dart';
import 'package:flutter_zero_to_hero/src/widgets/organisms/appbar_action_buttons.dart';
import 'package:flutter_zero_to_hero/src/widgets/organisms/detail_product.dart';

class DetailProductPage extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String price;

  DetailProductPage({this.imageUrl, this.name, this.price});

  @override
  _DetailProductPage createState() => _DetailProductPage();
}

class _DetailProductPage extends State<DetailProductPage>
    with SingleTickerProviderStateMixin {
  AnimationController imageAnimationCtrl;
  Animation imageAnim;

  @override
  void initState() {
    super.initState();

    imageAnimationCtrl = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    imageAnim = Tween<double>(begin: 0.0, end: 1.0).animate(imageAnimationCtrl);
    imageAnimationCtrl.forward();

    imageAnim.addListener(() {
      setState(() {
        print(imageAnim.value);
      });
    });

    imageAnim.addStatusListener((status) {
      print(status);
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: AppbarActionButtons(),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xff092C52),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              FadeTransition(
                opacity: imageAnim,
                child: ImagePlaceholder(
                  imageUrl: widget.imageUrl,
                  widthImage: MediaQuery.of(context).size.width,
                ),
              ),
              DetailProduct(
                name: widget.name,
                price: widget.price,
              )
            ],
          ),
        ),
      );
}
