import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/app_resposivity.dart';
import 'package:flutter_desafio01_interface/app/core/styles/app_colors.dart';

class CustomDetailPageAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomDetailPageAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.all(Resposivity.automatic(20, mediaQueryData)),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.keyboard_arrow_left,
              size: Resposivity.automatic(26, mediaQueryData),
              color: Colors.black54,
            ),
          ),
          Container(
            height: Resposivity.automatic(45, mediaQueryData),
            width: Resposivity.automatic(45, mediaQueryData),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: AppColors.cinzaFraco,
              borderRadius: BorderRadius.circular(
                Resposivity.automatic(10, mediaQueryData),
              ),
            ),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
              size: Resposivity.automatic(20, mediaQueryData),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
