import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_app/pages/homepage.dart';
import 'package:social_media_app/pages/login.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  final firebaseFirestore = FirebaseFirestore.instance.collection('users');
  RxBool loding = false.obs;

  Rx<TextEditingController> namecontroller = TextEditingController().obs;
  Rx<TextEditingController> emailcontroller = TextEditingController().obs;
  Rx<TextEditingController> usernamecontroller = TextEditingController().obs;
  Rx<TextEditingController> passwordcontroller = TextEditingController().obs;

  registeruser() {
    loding.value = true;
    auth
        .createUserWithEmailAndPassword(
          email: emailcontroller.value.text.toString(),
          password: passwordcontroller.value.text.toString(),
        )
        .then((onValue) {

          firebaseFirestore
              .doc(auth.currentUser!.uid)
              .set({
                'id': auth.currentUser!.uid,
                'name': namecontroller.value.text,
                'email': emailcontroller.value.text,
                'username': usernamecontroller.value.text,
              })
              .then((value) {
                loding.value = false;

                namecontroller.value.clear();
                emailcontroller.value.clear();
                usernamecontroller.value.clear();
                passwordcontroller.value.clear();


                Get.to(Login());
              })
              .onError((error, stacktrace) {
                loding.value = false;

                Get.snackbar('error', error.toString());
                print('firestore error' + error.toString());
              });
        })
        .onError((error, stacktrace) {
          loding.value = false;

          Get.snackbar('error', error.toString());
          print('Auth' + error.toString());
        });
  }

  loginuse() {
    loding.value = true;
    auth
        .signInWithEmailAndPassword(
          email: emailcontroller.value.text,
          password: passwordcontroller.value.text,
        )
        .then((onValue) {
          loding.value = false;
          Get.to(Homepage());
        })
        .onError((error, stacktrace) {
          loding.value = false;
          Get.snackbar('error', error.toString());
        });
  }
}
