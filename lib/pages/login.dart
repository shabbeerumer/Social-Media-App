import 'package:flutter/material.dart';
import 'package:social_media_app/component/buttons/Mybutton2.dart';
import 'package:social_media_app/component/buttons/mybutton1.dart';
import 'package:social_media_app/component/mymediaquery.dart';
import 'package:social_media_app/component/mysizedbox.dart';
import 'package:social_media_app/component/mytext.dart';
import 'package:social_media_app/component/mytextformfield.dart';
import 'package:social_media_app/constants/colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
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
              Mytextformfield(hintText: 'Name', labelText: 'Name'),
              Mysizedbox(height: Mymediaquery.getScreenHeight(context) * 0.02),

              Mytextformfield(hintText: 'Email', labelText: 'Email'),
              Mysizedbox(height: Mymediaquery.getScreenHeight(context) * 0.02),
              Align(
                  alignment: Alignment.centerRight,
                  child: Mytext(data: 'Forget Password?' )),

              Mysizedbox(height: Mymediaquery.getScreenHeight(context) * 0.02),

              Mybutton2(
                height: 50,
                btncolor: color1,
                borderRadius: BorderRadius.circular(10),
                data: 'Log in',
                textcolor: mywhite,
              ),

              Mysizedbox(height: Mymediaquery.getScreenHeight(context) * 0.02),
              Mytext(data: 'Don t have an account? Sign up'),
            ],
          ),
        ),
      ),
    );;
  }
}
