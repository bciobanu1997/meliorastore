import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';
import 'package:meliorabag/firebase_db/firebaseDatabase.dart';

class SubscribeScreen extends StatelessWidget {
  SubscribeScreen({Key? key}) : super(key: key);
  final fieldTextName = TextEditingController();
  final fieldTextEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Form(
      child: (screenSize.width > 900)
          ? _rowSubscriberForm(screenSize)
          : _columnSubscriberForm(screenSize),
    );
  }

  Column _columnSubscriberForm(Size screenSize) {
    return Column(
      children: [
        const SizedBox(height: 30),
        SizedBox(
          width: screenSize.height / 3,
          child: TextField(
            controller: fieldTextEmail,
            style: TextStyle(color: AppColors.black),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(
                color: AppColors.shuttleGrey,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(40),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(40),
                borderSide: BorderSide(color: Color(0xFFCECCCC)),
              ),
              isDense: true,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            ),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: screenSize.height / 3,
          child: TextField(
            controller: fieldTextName,
            style: TextStyle(color: AppColors.black),
            keyboardAppearance: Brightness.dark,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Full Name',
              labelStyle: TextStyle(
                color: AppColors.shuttleGrey,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(40),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(40),
                borderSide: BorderSide(color: Color(0xFFCECCCC)),
              ),
              isDense: true,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            ),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 40,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.blazeOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // <-- Radius
                ),
              ),
              onPressed: () {
                //Register subscriber
                subscriberCheck();
              },
              child: Text('submit'.tr,
                  style: GoogleFonts.roboto(
                      color: AppColors.white,
                      fontSize: Constant.small,
                      fontWeight: FontWeight.w600))),
        ),
      ],
    );
  }

  Column _rowSubscriberForm(Size screenSize) {
    return Column(
      children: [
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: screenSize.height / 3,
              child: TextField(
                controller: fieldTextEmail,
                style: TextStyle(color: AppColors.black),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: AppColors.shuttleGrey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(40),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(40),
                    borderSide: BorderSide(color: Color(0xFFCECCCC)),
                  ),
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                ),
              ),
            ),
            SizedBox(width: 10),
            SizedBox(
              width: screenSize.height / 4,
              child: TextField(
                controller: fieldTextName,
                style: TextStyle(color: AppColors.black),
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: TextStyle(
                    color: AppColors.shuttleGrey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(40),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(40),
                    borderSide: BorderSide(color: Color(0xFFCECCCC)),
                  ),
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                ),
              ),
            ),
            SizedBox(width: 10),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.blazeOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    //Register subscriber
                    subscriberCheck();
                  },
                  child: Text('submit'.tr,
                      style: GoogleFonts.roboto(
                          color: AppColors.white,
                          fontSize: Constant.small,
                          fontWeight: FontWeight.w600))),
            )
          ],
        ),
      ],
    );
  }

  Future sendEmail() async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    const serviceId = 'service_7596imy';
    const templateId = 'template_7lu1okf';
    const userId = '5lnqCBjPS8f1AMEBc';
    final response = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': fieldTextName.text,
            'user_email': fieldTextEmail.text,
          }
        }));
    return response.statusCode;
  }

  void subscriberCheck() {
    if (fieldTextName.text.isNotEmpty &&
        fieldTextName.text.length >= 6 &&
        fieldTextEmail.text.isNotEmpty &&
        fieldTextEmail.text.contains('@')) {
      FirebaseDatabase.subscribersEmail
          .add({'fullName': fieldTextName.text, 'email': fieldTextEmail.text})
          .then((value) => sendEmail())
          .then((value) => fieldTextEmail.clear())
          .then((value) => fieldTextName.clear())
          //.then((value) => subscribeUserError())
          .catchError((onError) => print('Failed to submit: $onError'));
    } else
      //subscribeUserSuccess();
      print('');
  }

  /*void subscribeUserError() {
    Get.snackbar('Succes', 'Subscription confirmed,',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(milliseconds: 1200),
        backgroundColor: Colors.white);
  }

  void subscribeUserSuccess() {
    Get.snackbar('Error', 'Something Wrong,',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(milliseconds: 1200),
        backgroundColor: Colors.white);
  }*/
}
