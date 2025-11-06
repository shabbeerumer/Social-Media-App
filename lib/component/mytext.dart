import 'package:flutter/material.dart';

class Mytext extends StatefulWidget {
  String data;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;

   Mytext({super.key, required this.data  , this.fontSize , this.fontWeight , this.color });

  @override
  State<Mytext> createState() => _MytextState();
}

class _MytextState extends State<Mytext> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.data ,

      style: TextStyle(
        fontSize: widget.fontSize ,
        fontWeight: widget.fontWeight ,
        color: widget.color,

    ),);
  }
}
