import 'package:flutter/material.dart';
import 'package:social_media_app/component/mytext.dart';

class Mybutton2 extends StatefulWidget {
  double? height;
  Color? btncolor;
  BorderRadiusGeometry? borderRadius;
  String data;
  Color? textcolor;
   Mybutton2({super.key , this.height , this.btncolor , this.borderRadius , this.data = '' , this.textcolor});

  @override
  State<Mybutton2> createState() => _Mybutton2State();
}

class _Mybutton2State extends State<Mybutton2> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: widget.height,
      width: double.infinity,
      decoration: BoxDecoration(
          color: widget.btncolor,
          borderRadius: widget.borderRadius
      ),
      child: Center(child: Mytext(data: widget.data , color: widget.textcolor)),
    );
  }
}
