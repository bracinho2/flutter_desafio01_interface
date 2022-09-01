import 'package:flutter/material.dart';

class DogPhotos extends StatelessWidget {
  const DogPhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 80,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: ((context, index) => Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/images/gaita.png'),
                  ),
                )),
          ),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          width: 300,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(150)),
                height: size.height * .3,
                width: size.width * .55,
              ),
              Image.asset(
                'assets/images/dog.png',
                alignment: Alignment.centerRight,
                width: 150,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
