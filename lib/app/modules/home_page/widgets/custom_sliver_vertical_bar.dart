import 'package:flutter/material.dart';

class CustomSliverVerticalBar extends StatelessWidget {
  const CustomSliverVerticalBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Card(
          color: Colors.white,
          child: ListTile(
              leading: Container(
                height: 120.0,
                width: 120.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/gaita.png'),
                    //fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              title: const Text(
                'Title',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Raça'),
                  const Text('Idade'),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_city,
                      ),
                      Text('2.5 KM away')
                    ],
                  ),
                ],
              ),
              trailing: const Icon(Icons.heart_broken, color: Colors.red)),
        ),
        childCount: 9,
      ),
    );
  }
}
