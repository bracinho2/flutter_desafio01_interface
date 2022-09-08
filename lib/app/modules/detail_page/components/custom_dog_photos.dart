import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';

class DogPhotos extends StatelessWidget {
  const DogPhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.only(left: Resposivity.automatic(20, mediaQueryData)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.white,
            width: Resposivity.automatic(80, mediaQueryData),
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
                  stops: [0.0, 0.1, 0.9, 1.0],
                ).createShader(rect);
              },
              blendMode: BlendMode.dstOut,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) => Padding(
                      padding: EdgeInsets.only(
                          bottom: Resposivity.automatic(16, mediaQueryData)),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: Resposivity.automatic(2.0, mediaQueryData),
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(
                                Resposivity.automatic(20, mediaQueryData))),
                        child: Image.asset('assets/images/gaita.png'),
                      ),
                    )),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      Resposivity.automatic(100, mediaQueryData))),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    right: (mediaQueryData.size.width * 0.3) * -1,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/dog.png',
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
