
import 'package:flutter/material.dart';
import 'package:with_me/common/color/app_color.dart';

class SliderWidget extends StatelessWidget {
  final double sliderValue;
  final void Function(double)? onChanged;
  const SliderWidget({Key? key, required this.sliderValue, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Price Range",
            style: TextStyle(
                color: AppColors.textColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Theme(
            data: ThemeData(
                sliderTheme: const SliderThemeData(
                  showValueIndicator: ShowValueIndicator.always,
                )),
            child: Slider(
              value: sliderValue,
              activeColor: AppColors.primaryColor,
              inactiveColor: AppColors.fifthColor,
              min: 0,
              max: 10000,
              label: sliderValue.round().toString(),
              onChanged: onChanged

            ),
          ),
        ],
      ),
    );
  }
}
