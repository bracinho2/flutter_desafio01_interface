import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';

class AppBarHomePageWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final String subTitle;

  const AppBarHomePageWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: const EdgeInsets.only(right: 20, left: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.menu,
              size: Resposivity.automatic(45, mediaQueryData),
              color: Colors.grey,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,
                  style: TextStyle(
                    fontSize: Resposivity.automatic(14, mediaQueryData),
                    fontFamily: 'Inter',
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  )),
              Text(subTitle,
                  style: TextStyle(
                    fontSize: Resposivity.automatic(20, mediaQueryData),
                    fontFamily: 'Inter',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          CircleAvatar(
            radius: Resposivity.automatic(35, mediaQueryData),
            child: ClipRRect(
              child: Image.asset('assets/images/gaita.png'),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(105);
}
