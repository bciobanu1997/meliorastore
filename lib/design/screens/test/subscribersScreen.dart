import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meliorabag/design/utils/colors.dart';
import 'package:meliorabag/design/utils/constant.dart';

class SubscribeScreen extends StatelessWidget {
  SubscribeScreen({Key? key}) : super(key: key);
  var fullName = '';
  var email = '';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    CollectionReference subscribersEmail =
        FirebaseFirestore.instance.collection('SubscribersEmailList');
    return Form(
      child: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: screenSize.width / 3,
                child: TextField(
                  style: TextStyle(color: AppColors.black),
                  onChanged: (value) {
                    if (value == null || value.isEmpty || value.length <= 3) {
                    } else {
                      fullName = value;
                    }
                  },
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
                width: screenSize.width / 3,
                child: TextField(
                  style: TextStyle(color: AppColors.black),
                  onChanged: (value) {
                    if (value.isEmail) {
                      email = value;
                    } else
                      print('Please enter corect email');
                  },
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
                      primary: AppColors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // <-- Radius
                      ),
                    ),
                    onPressed: () {
                      subscribersEmail
                          .add({'fullName': fullName, 'email': email})
                          .then((value) =>
                              print('Congratulation, see you soon !'))
                          .catchError(
                              (onError) => print('Failed to submit: $onError'));
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
      ),
    );
  }
}
