import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/detail_page.dart';

class CustomSliverVerticalBar extends StatelessWidget {
  const CustomSliverVerticalBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => InkWell(
          onTap: () {
            print('Clicked =) $index');
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailPage()));
          },
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
            child: Container(
              height: 120,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/images/gaita.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Spark',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const Text(
                            'Raça do Cusco',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text('Idade do cusco'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.place,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Sulina - PR',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.heart_broken,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        childCount: 9,
      ),
    );
  }
}
