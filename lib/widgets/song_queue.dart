import 'package:flutter/material.dart';

class SongQueue extends StatelessWidget {
  const SongQueue({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage(
                  "assets/icons/Shuffle.png",
                ),
                size: 24.0,
              ),
            ),
            const Text("Shuffle",
            style: TextStyle(
            fontSize: 12.0,
            ),
            ),
          ],
        ),
        const SizedBox(
        width: 40.0,
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage(
                  "assets/icons/Repeat.png",
                ),
                size: 24.0,
              ),
            ),
            const Text("Repeat",
            style: TextStyle(
            fontSize: 12.0,
            ),
            ),
          ],
        ),
        const SizedBox(
        width: 40.0,
        ),
        Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage(
                  "assets/icons/Queue.png",
                ),
                size: 24.0,
              ),
            ),
            const Text("Go To Queue",
            style: TextStyle(
            fontSize: 12.0,
            ),
            ),
          ],
        ),

      ],
    );
  }
}
