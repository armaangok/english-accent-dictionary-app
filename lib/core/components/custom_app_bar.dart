import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.title,
    this.enableBackButton = true,
    this.height = kToolbarHeight,
    this.onTap,
  }) : super(key: key);

  final Widget? title;
  final bool enableBackButton;
  final double? height;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: enableBackButton
          ? GestureDetector(
              onTap: onTap != null ? () => onTap!() : () => alternativeOnTap,
              child: const Icon(Icons.arrow_back_ios_new),
            )
          : const SizedBox(),
      title: title,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height!);

  void get alternativeOnTap => Get.back();
}
