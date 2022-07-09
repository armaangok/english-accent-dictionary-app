import 'package:flutter/material.dart';

import '../../feature/export/export.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.dismissKeyboard(),
      child: Scaffold(
        // bottomNavigationBar: AdvertisementWidget(
        //   ad: generateAd.ad,
        //   unitID: AdHelper.bannerAdUnitId1,
        // ),
        body: ListView(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          children: const [
            Divider(),
          ],
        ),
      ),
    );
  }
}
