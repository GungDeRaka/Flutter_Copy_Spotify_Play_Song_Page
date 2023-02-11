import 'package:flutter/material.dart';

class PlayedSongPage extends StatelessWidget {
  const PlayedSongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.keyboard_arrow_down_rounded),
                Icon(Icons.devices_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
