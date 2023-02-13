import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_new_playlist_screen/controller/icon_buttons_controller.dart';
import 'package:spotify_new_playlist_screen/pages/being_played_song_page.dart';

import 'controller/song_controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<SongController>(create:(context) => SongController()),
        Provider<FavouriteController>(create:(context) => FavouriteController()),
      ],
      builder:(context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          themeMode: ThemeMode.dark,
          home: const PlayedSongPage()),
    );
  }
}
