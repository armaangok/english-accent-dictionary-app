import 'package:flutter/material.dart';
import 'package:wordmind/app/screens/settings_screen/settings.dart';
import 'package:wordmind/database/hive_helper.dart';

class AddWordButtonWidget extends StatelessWidget {
  const AddWordButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        String lang = await hiveHelper.getLanguage();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Setting(countryLanguage: lang),
          ),
        );
      },
      icon: Icon(Icons.add_circle, size: 30),
    );
  }
}
