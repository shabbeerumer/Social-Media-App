import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_app/component/buttons/Mybutton2.dart';
import 'package:social_media_app/component/buttons/mybutton1.dart';
import 'package:social_media_app/component/mymediaquery.dart';
import 'package:social_media_app/component/mysizedbox.dart';
import 'package:social_media_app/component/mytext.dart';
import 'package:social_media_app/component/mytextformfield.dart';
import 'package:social_media_app/constants/colors.dart';
import 'package:social_media_app/controllers/auth_controller.dart';

class Registers extends StatefulWidget {
  const Registers({super.key});

  @override
  State<Registers> createState() => _RegistersState();
}

class _RegistersState extends State<Registers> {
  AuthController controller = Get.put(AuthController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/Logomark.png'),
                    Mytext(
                      data: 'Social',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Mysizedbox(height: Mymediaquery.getScreenHeight(context) * 0.04),
                Mybutton1(
                  height: 50,
                  border: Border.all(color: mygrey),
                  imagename: 'images/Google.png',
                  data: 'Sign up with Google',
                ),

                Mysizedbox(height: Mymediaquery.getScreenHeight(context) * 0.02),
                Mybutton1(
                  height: 50,
                  border: Border.all(color: mygrey),
                  imagename: 'images/Email.png',
                  data: 'Log in with Email',
                ),
                Mysizedbox(height: Mymediaquery.getScreenHeight(context) * 0.02),

                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: mygrey,
                        indent: 20,
                        endIndent: 10,
                      ),
                    ),
                    Mytext(
                      data: 'OR',
                      fontWeight: FontWeight.bold,
                      color: mygrey,
                    ),

                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: mygrey,
                        indent: 10,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),

                Mysizedbox(height: Mymediaquery.getScreenHeight(context) * 0.04),
                Mytextformfield(
                  keyboardType: TextInputType.text,
                  hintText: 'Name', labelText: 'Name' , controller: controller.namecontroller.value,),
                Mysizedbox(height: Mymediaquery.getScreenHeight(context) * 0.02),

                Mytextformfield(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email', labelText: 'Email' , controller: controller.emailcontroller.value, ),
                Mysizedbox(height: Mymediaquery.getScreenHeight(context) * 0.02),

                Mytextformfield(
                  keyboardType: TextInputType.text,
                  hintText: 'Username', labelText: 'Username' , controller: controller.usernamecontroller.value,),
                Mysizedbox(height: Mymediaquery.getScreenHeight(context) * 0.02),

                Mytextformfield(
                  keyboardType: TextInputType.number,
                  hintText: 'Password', labelText: 'Password' , controller: controller.passwordcontroller.value,),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Mytext(data: 'I agree to the Terms and Privacy Policy.'),
                  ],
                ),


                Mybutton2(
                  onTap: controller.registeruser,
                  height: 50,
                  btncolor: color1,
                  borderRadius: BorderRadius.circular(10),
                  data: 'Continue',
                  textcolor: mywhite,
                ),

                Mysizedbox(height: Mymediaquery.getScreenHeight(context) * 0.02),
                Mytext(data: 'Have an account? Log In'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
