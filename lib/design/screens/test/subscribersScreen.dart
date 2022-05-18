import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:meliorabag/design/screens/test/testController.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';
import 'package:meliorabag/firebase_db/firebaseDatabase.dart';

class SubscribeScreen extends StatelessWidget {
  SubscribeScreen({Key? key}) : super(key: key);
  final fieldTextName = TextEditingController();
  final fieldTextEmail = TextEditingController();
  SubscriberController controller = SubscriberController();
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
            textInputAction: TextInputAction.next,
            controller: fieldTextEmail,
            style: GoogleFonts.roboto(
                color: AppColors.black,
                fontSize: Constant.small,
                fontWeight: FontWeight.w400),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: const TextStyle(
                color: AppColors.black,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xFFCECCCC)),
              ),
              isDense: true,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: screenSize.height / 3,
          child: TextField(
            textInputAction: TextInputAction.done,
            onEditingComplete: () {},
            controller: fieldTextName,
            style: GoogleFonts.roboto(
                color: AppColors.black,
                fontSize: Constant.small,
                fontWeight: FontWeight.w400),
            keyboardAppearance: Brightness.dark,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Full Name',
              labelStyle: const TextStyle(
                color: AppColors.black,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xFFCECCCC)),
              ),
              isDense: true,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 40,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: AppColors.dust,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                ),
              ),
              onPressed: () {
                //Register subscriber
                subscriberCheck();
              },
              child: Text('subscribe'.tr,
                  style: GoogleFonts.roboto(
                      color: AppColors.black,
                      fontSize: Constant.small,
                      fontWeight: FontWeight.w400))),
        ),
        Obx(() => (controller.subscriberCheck.value == true)
            ? const SubscribedSuccess()
            : const Text(
                '',
                style: TextStyle(color: AppColors.black),
              )),
        Obx(() => (controller.subscriberError.value == true)
            ? const SubscribedUnsuccess()
            : const Text(
                '',
                style: TextStyle(color: AppColors.black),
              )),
      ],
    );
  }

  Column _rowSubscriberForm(Size screenSize) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: screenSize.height / 3,
              child: TextField(
                textInputAction: TextInputAction.next,
                controller: fieldTextEmail,
                style: GoogleFonts.roboto(
                    color: AppColors.black,
                    fontSize: Constant.small,
                    fontWeight: FontWeight.w400),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: const TextStyle(
                    color: AppColors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xFFCECCCC)),
                  ),
                  isDense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                ),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: screenSize.height / 4,
              child: TextField(
                textInputAction: TextInputAction.done,
                onEditingComplete: () {
                  //this is called only when done or ok is button is tapped in keyboard
                },
                controller: fieldTextName,
                style: GoogleFonts.roboto(
                    color: AppColors.black,
                    fontSize: Constant.small,
                    fontWeight: FontWeight.w400),
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  labelStyle: const TextStyle(
                    color: AppColors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xFFCECCCC)),
                  ),
                  isDense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                ),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.dust,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    //Register subscriber
                    subscriberCheck();
                  },
                  child: Text('subscribe'.tr,
                      style: GoogleFonts.roboto(
                          color: AppColors.black,
                          fontSize: Constant.small,
                          fontWeight: FontWeight.w400))),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Obx(() => (controller.subscriberCheck.value == true)
            ? const SubscribedSuccess()
            : const Text(
                '',
                style: TextStyle(color: AppColors.black),
              )),
        Obx(() => (controller.subscriberError.value == true)
            ? const SubscribedUnsuccess()
            : const Text(
                '',
                style: TextStyle(color: AppColors.black),
              )),
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

  Future<void> subscriberCheck() async {
    if (fieldTextName.text.isNotEmpty &&
        fieldTextName.text.length >= 6 &&
        fieldTextEmail.text.isNotEmpty &&
        fieldTextEmail.text.contains('@')) {
      FirebaseDatabase.subscribersEmail
          .add({'fullName': fieldTextName.text, 'email': fieldTextEmail.text})
          .then((value) => sendEmail())
          .then((value) => fieldTextEmail.clear())
          .then((value) => fieldTextName.clear())
          .then((value) => controller.subscriberCheck.value = true)
          .then((value) => print(controller.subscriberCheck.value))
          .catchError((onError) => controller.subscriberError.value = true);
    } else {
      controller.subscriberError.value = true;
      await Future.delayed(const Duration(seconds: 5), () {
        controller.subscriberError.value = false;
      });
    }
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

class SubscribedSuccess extends StatelessWidget {
  const SubscribedSuccess({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Text('subscribedSuccess'.tr,
        style: GoogleFonts.cinzel(
            color: AppColors.black,
            fontSize: screenSize.height / 50,
            fontWeight: FontWeight.w300));
  }
}

class SubscribedUnsuccess extends StatelessWidget {
  const SubscribedUnsuccess({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Text('subscribedUnsuccessful'.tr,
        style: GoogleFonts.cinzel(
            color: AppColors.black,
            fontSize: screenSize.height / 50,
            fontWeight: FontWeight.w300));
  }
}
