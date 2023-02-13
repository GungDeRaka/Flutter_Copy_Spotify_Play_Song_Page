
import 'package:flutter/material.dart';

class SongController extends ChangeNotifier {
  int? value = 0;
  List<String> options = ["Playlist", "Lyrics"];
  void chooseChip( bool selected, int index){
    value = (selected ? index : null);
    notifyListeners();
  }

bool isPaused = true;
    IconData get playIcon =>
      isPaused ? Icons.play_arrow : Icons.pause;
    void playAndPause(){
      isPaused = !isPaused;
      notifyListeners();
    }
}
