import 'package:flutter/material.dart';
import 'package:with_me/common/color/app_color.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({Key? key, required this.rate}) : super(key: key);

  final int rate ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        itemBuilder: (context, index) {
          if(index < rate){
            return  Icon(
              Icons.star,
              color: AppColors.primaryColor,
              size: 16,
            );
          }
          return  Icon(
            Icons.star_border,
            color: AppColors.primaryColor,
            size: 17,
          );
        },
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
      ),
    );
  }
}
