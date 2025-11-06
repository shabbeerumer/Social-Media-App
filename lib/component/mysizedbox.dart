import 'package:flutter/material.dart';

class Mysizedbox extends StatefulWidget {
  double height;
  double width;
   Mysizedbox({super.key ,  this.height = 0.0 ,  this.width = 0.0});

  @override
  State<Mysizedbox> createState() => _MysizedboxState();
}

class _MysizedboxState extends State<Mysizedbox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
    );
  }
}
