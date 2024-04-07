import 'package:flutter/material.dart';

import '../../utils/app_utils.dart';
import 'custom_button.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
    required this.jokeText,
    required this.onPress,
  });

  final String jokeText;
  final Function(bool) onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    jokeText,
                    style: const TextStyle(
                      color: AppColor.textBlack,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(
                        onPress: () => onPress(true),
                        text: AppString.buttonFunny,
                        backgroundColor: AppColor.blueColor,
                      ),
                      CustomButton(
                        onPress: () => onPress(false),
                        text: AppString.buttonNotFunny,
                        backgroundColor: AppColor.greenColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
