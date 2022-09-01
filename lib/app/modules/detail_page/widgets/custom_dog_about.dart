import 'package:flutter/material.dart';

class DogAbout extends StatelessWidget {
  const DogAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Sobre',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronicd.It has survived not only five centuries, but also the leap into electronicd.It has survived not only five centuries, but also the leap into electronicd.',
              style: TextStyle(
                fontSize: 15,
                height: 2,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
