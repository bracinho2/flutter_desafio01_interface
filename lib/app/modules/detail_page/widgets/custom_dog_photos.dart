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
          width: 80,
          child: ShaderMask(
            shaderCallback: (Rect rect) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.white,
                ],
                stops: [
                  0.0,
                  0.1,
                  0.9,
                  1.0,
                ],
              ).createShader(rect);
            },
            blendMode: BlendMode.dstOut,
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
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          width: 300,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                right: (size.width * 0.11) * -1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(150)),
                  height: size.height * .3,
                  width: size.width * .55,
                ),
              ),
              Image.asset(
                'assets/images/dog.png',
                //alignment: Alignment.centerRight,
                width: 200,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
