import 'package:flutter/material.dart';

import '../../../core/styles/app_text_styles.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subTitle;
  final bool loginbutton;
  const AppBarWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.loginbutton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            size: 40,
            color: Colors.grey,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title, style: AppTextStyles.appBarTitle),
              Text(subTitle, style: AppTextStyles.appBarSubtitle),
            ],
          ),
          const CircleAvatar(
            child: Text(
              'Img Here',
              style: TextStyle(
                fontSize: 8,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
