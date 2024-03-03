import 'package:flutter/material.dart';

class ColorTweenAnimator extends StatelessWidget {
  final Color randomColor;

  const ColorTweenAnimator({super.key, required this.randomColor});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: ColorTween(begin: randomColor, end: randomColor),
      duration: const Duration(milliseconds: 250),
      builder: (BuildContext context, Color? currentColor, Widget? child) {
        return Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(5, 5),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: currentColor,
          ),
          height: 100,
          width: 100,
          margin: const EdgeInsets.all(8.0),
        );
      },
    );
  }
}
