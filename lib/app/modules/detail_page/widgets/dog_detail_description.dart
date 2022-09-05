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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sparky',
                style: TextStyle(
                  fontSize: Resposivity.automatic(30, mediaQueryData),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'Raça do Cusco',
                style: TextStyle(
                  fontSize: Resposivity.automatic(14, mediaQueryData),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.place,
                    size: Resposivity.automatic(20, mediaQueryData),
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: Resposivity.automatic(10, mediaQueryData),
                  ),
                  Text(
                    'Sulina - PR',
                    style: TextStyle(
                      fontSize: Resposivity.automatic(12, mediaQueryData),
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(Resposivity.automatic(10, mediaQueryData)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.male,
                  color: Colors.black26,
                  size: Resposivity.automatic(30, mediaQueryData),
                ),
                Text(
                  'Idade do Cachorro',
                  style: TextStyle(
                    fontSize: Resposivity.automatic(14, mediaQueryData),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
