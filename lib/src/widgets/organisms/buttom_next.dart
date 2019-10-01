import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  final String title;
  final Function onPressed;

  ButtonNext({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 24.0,
          ),
          color: Color(0xffFDC69D),
          onPressed: () {
            onPressed();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: Color(0xfffafafa),
                  fontSize: 16.0,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.chevron_right),
              )
            ],
          ),
        ),
      );
}
