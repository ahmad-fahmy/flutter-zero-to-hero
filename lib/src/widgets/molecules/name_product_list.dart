import 'package:flutter/widgets.dart';

class NameProductList extends StatelessWidget {
  final String name;
  NameProductList(this.name);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(bottom: 5.0),
        child: Text(
          name,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      );
}
