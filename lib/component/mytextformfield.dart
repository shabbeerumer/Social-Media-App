import 'package:flutter/material.dart';

class Mytextformfield extends StatefulWidget {
  String? hintText;
  String? labelText;
  TextEditingController? controller;
  TextInputType? keyboardType;
   Mytextformfield({super.key , required this.hintText , required this.labelText , this.controller , this.keyboardType});

  @override
  State<Mytextformfield> createState() => _MytextformfieldState();
}

class _MytextformfieldState extends State<Mytextformfield> {
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
        decoration: InputDecoration(
            hintText: widget.hintText,
            labelText: widget.labelText,
            border: OutlineInputBorder()
        ));
  }
}
