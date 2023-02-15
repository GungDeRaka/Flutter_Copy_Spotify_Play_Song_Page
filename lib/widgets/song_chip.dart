import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_new_playlist_screen/controller/song_controller.dart';

class SongChip extends StatelessWidget {
  const SongChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SongController>(
      builder: (context, song, child) => Wrap(
        spacing: 5.0,
        children: List<Widget>.generate(
          song.options.length,
          (int index) {
            return Padding(
              padding: (index == 0)
                  ? const EdgeInsets.only(left: 20)
                  : const EdgeInsets.all(0),
              child: ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                selectedColor: Colors.black,
                // backgroundColor: null,
                label: Text(
                  song.options[index],
                ),
                selected: song.currentIndex == index,
                labelStyle: const TextStyle(fontSize: 16),
                onSelected: (bool selected) => song.chooseChip(selected, index),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
