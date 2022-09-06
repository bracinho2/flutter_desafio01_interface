import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomHorizontalMenuItem extends StatelessWidget {
  final bool clicked;
  final FaIcon icon;
  final String name;

  const CustomHorizontalMenuItem({
    Key? key,
    required this.clicked,
    required this.icon,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(left: Resposivity.automatic(16, mediaQueryData)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(Resposivity.automatic(12, mediaQueryData)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  Resposivity.automatic(17, mediaQueryData)),
              color: clicked ? Colors.red : Colors.white,
            ),
            child: Row(
              children: [
                FaIcon(
                  icon.icon,
                  color: clicked ? Colors.white : Colors.black26,
                ),
                if (name.isNotEmpty)
                  Padding(
                    padding: EdgeInsets.only(
                        left: Resposivity.automatic(12, mediaQueryData)),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: clicked ? Colors.white : Colors.black87,
                      ),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
