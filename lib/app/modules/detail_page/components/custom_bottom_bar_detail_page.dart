import 'package:flutter/material.dart';

import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';

class CustomBottomBarDetailPage extends StatelessWidget {
  final String title;
  const CustomBottomBarDetailPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft:
                    Radius.circular(Resposivity.automatic(30, mediaQueryData)),
              ),
            ),
            height: 60,
            width: Resposivity.automatic(150, mediaQueryData),
            child: Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(
                  Icons.flutter_dash,
                  color: Colors.white,
                  size: Resposivity.automatic(30, mediaQueryData),
                ),
                SizedBox(
                  width: Resposivity.automatic(15, mediaQueryData),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'ROBOTO',
                    fontSize: Resposivity.automatic(14, mediaQueryData),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
