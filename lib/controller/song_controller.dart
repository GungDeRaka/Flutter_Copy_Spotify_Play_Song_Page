// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';

class SongController extends ChangeNotifier {
  int time = 0;
  double value = 10;
  double totalValue = 100;
  Timer? timerr;

  int? currentIndex = 0;
  List<String> options = ["Playlist", "Lyrics"];
  void chooseChip(bool selected, int index) {
    currentIndex = (selected ? index : null);
    notifyListeners();
  }

  bool isPaused = false;
  IconData get playIcon => isPaused ? Icons.pause : Icons.play_arrow;

  void playAndPause() {
    isPaused = !isPaused;
    time = 0;
    value = 0;

    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (isPaused) {
        value += 900;
        time = timer.tick;

        print(time);
        notifyListeners();
      } else if (!isPaused ||
          timer.tick == Duration(minutes: 2, seconds: 43).inSeconds) {
        //&& timer.tick == Duration(minutes: 2, seconds: 43).inSeconds

        timer.cancel();
        // notifyListeners();
        // timer.
      }
    });
    notifyListeners();
  }

  @override
  String toString() {
    return 'SongController(time: $time, value=10: $value=10, totalValue=100: $totalValue=100, currentIndex: $currentIndex, options: $options, isPaused: $isPaused)';
  }
}
