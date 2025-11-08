import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_app/component/mytext.dart';
import 'package:social_media_app/constants/colors.dart';
import 'package:social_media_app/controllers/auth_controller.dart';

class Mybutton2 extends StatefulWidget {
  double? height;
  Color? btncolor;
  BorderRadiusGeometry? borderRadius;
  String data;
  Color? textcolor;
  void Function()? onTap;
   Mybutton2({super.key , this.height , this.btncolor , this.borderRadius , this.data = '' , this.textcolor , this.onTap});

  @override
  State<Mybutton2> createState() => _Mybutton2State();
}

class _Mybutton2State extends State<Mybutton2> {
  @override
  AuthController controller = Get.put(AuthController());

  Widget build(BuildContext context) {
    return Obx((){
      return GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: widget.height,
          width: double.infinity,
          decoration: BoxDecoration(
              color: widget.btncolor,
              borderRadius: widget.borderRadius
          ),
          child:  Center(child: controller.loding.value ? CircularProgressIndicator(color: mywhite,) :  Mytext(data: widget.data , color: widget.textcolor)),
        ),
      );
    });


  }
}
