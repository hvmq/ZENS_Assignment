import 'package:flutter/material.dart';
import '../../utils/app_utils.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          const SizedBox(width: 10),
          Image.asset(AppAsset.logo, height: 45, width: 45),
          const Spacer(),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                AppString.nameUser_1,
                style: TextStyle(color: AppColor.describetextColor),
              ),
              Text(
                AppString.nameUser_2,
                style: TextStyle(color: AppColor.textBlack),
              ),
            ],
          ),
          const SizedBox(width: 10),
          ClipOval(
            child: Image.asset(
              AppAsset.avatar,
              height: 45,
              width: 45,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}
