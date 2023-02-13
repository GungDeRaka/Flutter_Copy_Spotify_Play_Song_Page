import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton(
      {super.key,
      required this.onTap,
      required this.buttonColor,
      required this.buttonIcon});

  final void Function()? onTap;
  final Color buttonColor;
  final IconData buttonIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 24,
        backgroundColor: buttonColor,
        child: Icon(
          buttonIcon,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}
