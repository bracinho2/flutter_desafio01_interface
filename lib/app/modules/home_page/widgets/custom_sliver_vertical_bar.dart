import 'package:flutter/material.dart';

class CustomSliverVerticalBar extends StatelessWidget {
  const CustomSliverVerticalBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Card(
            color: Colors.white,
            child: Container(
              height: 100,
            ),
          ),
        ),
        childCount: 9,
      ),
    );
  }
}
