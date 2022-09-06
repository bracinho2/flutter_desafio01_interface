import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';

class AppBarMainWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subTitle;

  const AppBarMainWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
          horizontal: Resposivity.automatic(20, mediaQueryData)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            size: Resposivity.automatic(24, mediaQueryData),
            color: Colors.grey.shade600,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: Resposivity.fontSize(16, mediaQueryData),
                  fontFamily: 'Roboto',
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: Resposivity.fontSize(16, mediaQueryData),
                  fontFamily: 'Roboto',
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: Resposivity.automatic(45, mediaQueryData),
            child: CircleAvatar(
              radius: 40,
              child: ClipRRect(
                child: Image.asset('assets/images/gaita.png'),
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(105);
}
