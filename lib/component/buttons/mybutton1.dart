import 'package:flutter/material.dart';
import 'package:social_media_app/component/mymediaquery.dart';
import 'package:social_media_app/component/mysizedbox.dart';
import 'package:social_media_app/component/mytext.dart';

class Mybutton1 extends StatefulWidget {
  double? height;
  BoxBorder? border;
  String imagename;
  String data;

  Mybutton1({super.key , this.height , this.border , this.imagename = '' , this.data = '' , });

  @override
  State<Mybutton1> createState() => _Mybutton1State();
}

class _Mybutton1State extends State<Mybutton1> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: widget.height,
      width: double.infinity,
      decoration: BoxDecoration(
          border: widget.border
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(widget.imagename),
          Mysizedbox(width: Mymediaquery.getScreenWidth(context) * 0.03),

          Mytext(data: widget.data )

        ],
      ),
    );
  }
}
