import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';

class DogAbout extends StatelessWidget {
  const DogAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Container(
      width: mediaQueryData.size.width,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(Resposivity.automatic(20, mediaQueryData)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sobre',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Resposivity.automatic(20, mediaQueryData),
              ),
            ),
            Text(
              'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronicd.It has survived not only five centuries.',
              maxLines: 2,
              style: TextStyle(
                fontSize: Resposivity.automaticFont(data: mediaQueryData),
                height: Resposivity.automatic(2, mediaQueryData),
                color: Colors.grey,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
