import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';

class DogDetailDescription extends StatelessWidget {
  const DogDetailDescription({Key? key}) : super(key: key);

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
                'Sparky',
                style: TextStyle(
                  fontFamily: 'serif',
                  fontSize: Resposivity.fontSize(32, mediaQueryData),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Icon(
                Icons.male,
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
                'Raça do Cusco',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: Resposivity.fontSize(16, mediaQueryData),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Idade do Cachorro',
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
              Icon(
                Icons.place,
                size: Resposivity.automatic(19, mediaQueryData),
                color: Colors.red,
              ),
              SizedBox(
                width: Resposivity.automatic(10, mediaQueryData),
              ),
              Text(
                'Sulina - PR',
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
