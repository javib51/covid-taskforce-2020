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
              child: Image.asset("assets/Logo.png", width: 70, height: 70,),
            ),
            SizedBox(width: getSizeWidth(context, 8),),
            Column(children: <Widget>[
              Text("Community", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xff9AD4D6),
                fontFamily: "Core Sans G",
              ),),

              title?.isEmpty ?? true? Container(): Text(title, style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: "Core Sans G",
              ),),
            ],),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
