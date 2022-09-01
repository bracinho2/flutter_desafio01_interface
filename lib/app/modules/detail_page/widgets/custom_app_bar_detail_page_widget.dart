import 'package:flutter/material.dart';
import 'package:flutter_desafio01_interface/app/core/styles/app_colors.dart';

class CustomDetailPageAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomDetailPageAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.keyboard_arrow_left,
              size: 50,
              color: Colors.black54,
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: AppColors.cinzaFraco,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Icon(
              Icons.heart_broken,
              color: Colors.red,
              size: 25,
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
