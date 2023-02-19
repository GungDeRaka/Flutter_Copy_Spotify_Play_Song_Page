// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class MusicBar extends StatelessWidget {
  const MusicBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
        Bar(height: Random().nextInt(28).toDouble()),
      ],
    );
  }
}

class Bar extends StatelessWidget {
  const Bar({
    Key? key,
    required this.height,
  }) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: Container(
        height: height,
        width: 4,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(90.0),
          ),
        ),
      ),
    );
  }
}
