import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DogDetailDescription extends StatelessWidget {
  final String name;
  final String region;
  final FaIcon icon;
  final String city;
  final String experience;
  final FaIcon favorite;

  const DogDetailDescription({
    Key? key,
    required this.name,
    required this.region,
    required this.icon,
    required this.city,
    required this.experience,
    required this.favorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Resposivity.automatic(20, mediaQueryData)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontFamily: 'serif',
                  fontSize: Resposivity.fontSize(32, mediaQueryData),
                  fontWeight: FontWeight.w900,
                ),
              ),
              FaIcon(
                icon.icon,
                color: Colors.black26,
                size: Resposivity.automatic(26, mediaQueryData),
              ),
            ],
          ),
          SizedBox(
            height: Resposivity.automatic(12, mediaQueryData),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                region,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: Resposivity.fontSize(16, mediaQueryData),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                experience,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: Resposivity.fontSize(16, mediaQueryData),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: Resposivity.automatic(12, mediaQueryData),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FaIcon(
                favorite.icon,
                size: Resposivity.automatic(19, mediaQueryData),
                color: Colors.red,
              ),
              SizedBox(
                width: Resposivity.automatic(10, mediaQueryData),
              ),
              Text(
                city,
                style: TextStyle(
                  fontSize: Resposivity.automatic(14, mediaQueryData),
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
