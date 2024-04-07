import 'package:flutter/material.dart';
import '../../utils/app_utils.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.greenColor,
      height: 140,
      width: double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            AppString.headerText_1,
            style: TextStyle(
                fontSize: 21,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.w600),
          ),
          Text(
            AppString.headerText_2,
            style: TextStyle(color: AppColor.whiteColor),
          ),
        ],
      ),
    );
  }
}
