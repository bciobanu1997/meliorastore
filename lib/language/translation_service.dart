import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en_us.dart';
import 'ro_ro.dart';

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static const fallbackLocale = Locale('en', 'US');
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
        'ro_RO': roRo,
      };
}
