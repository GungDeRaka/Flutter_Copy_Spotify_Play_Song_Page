import 'package:flutter/material.dart';

class TimeProgressBar extends StatelessWidget {
  const TimeProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Stack(alignment: Alignment.centerLeft, children: [
        Container(
          color: Colors.grey[800],
          height: 1,
          width: size.width * 0.85,
        ),
        SizedBox(
          width: size.width * 0.85,
          child: Row(
            children: [
              Material(
                child: Container(
                  height: 2,
                  width: (size.width * 0.85) / 7.4,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                ),
              ),
              const CircleAvatar(
                radius: 5.5,
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
