import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:meliorabag/design/utils/app_textstyle.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';
import 'package:meliorabag/design/utils/controller.dart';
import 'package:meliorabag/firebase_db/firebaseDatabase.dart';

class SubscribeWidget extends StatelessWidget {
  SubscribeWidget({Key? key}) : super(key: key);

  SubscriberController controller = SubscriberController();
  final fieldTextEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            Expanded(flex: (width > 800) ? 4 : 1, child: SizedBox()),
            Expanded(
                flex: 3,
                child: Obx(
                  () => SizedBox(
                    height: 40,
                    child: TextField(
                      controller: fieldTextEmail,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          color: AppColors.black,
                          fontSize: Constant.small,
                          fontWeight: FontWeight.w400),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: _getMessage(),
                        labelStyle: const TextStyle(
                          fontFamily: 'Montserrat',
                          color: AppColors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: const BorderSide(color: AppColors.black),
                        ),
                        isDense: true,
                      ),
                    ),
                  ),
                )),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                              side: BorderSide(color: AppColors.black)))),
                  onPressed: () {
                    //Register subscriber
                    subscriberCheck();
                  },
                  child: const AppTextStyle(
                    alignment: Alignment.center,
                    fontfamily: 'Montserrat',
                    text: 'Subscribe',
                    color: AppColors.white,
                    fontSize: Constant.small,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Expanded(flex: (width > 800) ? 4 : 1, child: SizedBox()),
          ],
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: AppTextStyle(
            alignment: Alignment.center,
            text: 'subscribeMessage'.tr,
            color: AppColors.black,
            fontSize: Constant.extraSmall,
          ),
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
            'user_email': fieldTextEmail.text,
          }
        }));
    return response.statusCode;
  }

  Future<void> subscriberCheck() async {
    if (fieldTextEmail.text.isNotEmpty && fieldTextEmail.text.contains('@')) {
      FirebaseDatabase.subscribersEmail
          .add({'email': fieldTextEmail.text})
          .then((value) => sendEmail())
          .then((value) => fieldTextEmail.clear())
          .then((value) => controller.subscriberCheck.value = true)
          .then((value) async =>
              await Future.delayed(const Duration(seconds: 5), () {
                controller.subscriberCheck.value = false;
              }))
          .catchError((onError) => controller.subscriberError.value = true)
          .catchError((onError) async =>
              await Future.delayed(const Duration(seconds: 5), () {
                controller.subscriberError.value = false;
              }));
    } else {
      print('unsuccess');
      controller.subscriberError.value = true;
      await Future.delayed(const Duration(seconds: 5), () {
        controller.subscriberError.value = false;
      });
    }
  }

  String _getMessage() {
    if (controller.subscriberCheck == true) {
      return 'Thank you for subscription';
    } else if (controller.subscriberError == true) {
      return 'Try again, something wrong';
    } else {
      return 'Enter your email';
    }
  }
}
