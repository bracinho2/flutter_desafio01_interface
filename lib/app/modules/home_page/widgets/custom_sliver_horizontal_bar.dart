import 'package:flutter/material.dart';

class CustomSliverHorizontalBar extends StatelessWidget {
  const CustomSliverHorizontalBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 5,
          left: 25,
          bottom: 5,
          right: 25,
        ),
        child: SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 11,
            itemBuilder: ((context, index) => Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 20,
                      left: 5,
                      right: 5,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      alignment: Alignment.center,
                      height: 90,
                      width: 110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          Text(
                            'Description',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
