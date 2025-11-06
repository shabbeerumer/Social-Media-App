import 'package:flutter/material.dart';

class Mytextformfield extends StatefulWidget {
  String? hintText;
  String? labelText;
   Mytextformfield({super.key , required this.hintText , required this.labelText});

  @override
  State<Mytextformfield> createState() => _MytextformfieldState();
}

class _MytextformfieldState extends State<Mytextformfield> {
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        decoration: InputDecoration(
            hintText: widget.hintText,
            labelText: widget.labelText,
            border: OutlineInputBorder()
        ));
  }
}
