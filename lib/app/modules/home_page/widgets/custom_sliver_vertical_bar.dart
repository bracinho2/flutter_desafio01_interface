import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';
import 'package:flutter_desafio01_interface/app/modules/detail_page/detail_page.dart';

class CustomSliverVerticalBar extends StatelessWidget {
  const CustomSliverVerticalBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailPage()));
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: Resposivity.automatic(25, mediaQueryData),
              right: Resposivity.automatic(25, mediaQueryData),
              bottom: Resposivity.automatic(20, mediaQueryData),
            ),
            child: Container(
              height: Resposivity.automatic(120, mediaQueryData),
              width: Resposivity.automatic(315, mediaQueryData),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(Resposivity.automatic(20, mediaQueryData)),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(
                            Resposivity.automatic(8.0, mediaQueryData)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              Resposivity.automatic(20, mediaQueryData)),
                          child: Image.asset('assets/images/gaita.png'),
                        ),
                      ),
                      SizedBox(
                        width: Resposivity.automatic(10, mediaQueryData),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Spark',
                            style: TextStyle(
                              fontSize:
                                  Resposivity.automatic(20, mediaQueryData),
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
                            children: [
                              Icon(
                                Icons.place,
                                color: Colors.red,
                                size: Resposivity.automatic(20, mediaQueryData),
                              ),
                              SizedBox(
                                width:
                                    Resposivity.automatic(12, mediaQueryData),
                              ),
                              Text(
                                'Sulina - PR',
                                style: TextStyle(
                                  fontSize:
                                      Resposivity.automatic(12, mediaQueryData),
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
                  Padding(
                    padding: EdgeInsets.all(
                        Resposivity.automatic(12, mediaQueryData)),
                    child: const Align(
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
