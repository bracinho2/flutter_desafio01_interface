import 'package:flutter/material.dart';

class DogPhotos extends StatelessWidget {
  const DogPhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.white,
          width: 100,
          child: ShaderMask(
            shaderCallback: (Rect rect) {
              return const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.white,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.white
                ],
                stops: [0.0, 0.0, 0.0, 0.1],
              ).createShader(rect);
            },
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
        ),
        Stack(
          clipBehavior: Clip.hardEdge,
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(500)),
              height: 275,
              width: 275,
            ),
            Image.asset(
              'assets/images/dog.png',
              alignment: Alignment.centerRight,
              width: 200,
            ),
          ],
        ),
      ],
    );
  }
}
