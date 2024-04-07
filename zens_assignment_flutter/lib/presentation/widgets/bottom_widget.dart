import 'package:flutter/material.dart';
import '../../utils/app_utils.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Divider(),
          Text(
            AppString.intro_1,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColor.describetextColor),
          ),
          SizedBox(height: 10),
          Text(
            AppString.intro_2,
            style: TextStyle(fontSize: 16, color: AppColor.textBlack),
          )
        ],
      ),
    );
  }
}
