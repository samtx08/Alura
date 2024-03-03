import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'tween_animator.dart';

class Cores extends StatefulWidget {
  const Cores({super.key});

  @override
  State<Cores> createState() => _CoresState();
}

class _CoresState extends State<Cores> {
  var randomColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
                  (index) {
                randomColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

                return ColorTweenAnimator(randomColor: randomColor);
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                randomColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
              });
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
