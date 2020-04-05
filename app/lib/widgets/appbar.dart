import 'package:bordered_text/bordered_text.dart';
import 'package:covid/utils.dart';
import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String title;

  const MyCustomAppBar({
    Key key,
    @required this.height,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isTitleEmpty = title?.isEmpty ?? true;
    return Column(
      children: [
        SizedBox(
          height: getSizeHeight(context, 2),
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: getSizeWidth(context, 5),
              ),
              child: Image.asset(
                "assets/grape_logo.png",
                width: 70,
                height: 70,
              ),
            ),
            SizedBox(
              width: getSizeWidth(context, 8),
            ),
            Column(
              children: <Widget>[
                BorderedText(
                  strokeWidth: 3.0,
                  child: Text(
                    "Grape",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      decorationColor: Color(0xff564787),
                      fontSize: isTitleEmpty ? 32 : 32,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff9AD4D6),
                    ),
                  ),
                ),
                isTitleEmpty
                    ? Container()
                    : Text(
                        title,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
