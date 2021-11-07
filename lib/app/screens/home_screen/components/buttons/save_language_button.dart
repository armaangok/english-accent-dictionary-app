import 'package:flutter/material.dart';
import 'package:wordmind/database/hive_helper.dart';

Widget saveLanguageButton(countryLanguage) {
  return IconButton(
    icon: Icon(
      Icons.save,
    ),
    onPressed: () async {
      await hiveHelper.saveLanguage(countryLanguage);
    },
  );
}
