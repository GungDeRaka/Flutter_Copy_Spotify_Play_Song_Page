import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_new_playlist_screen/controller/icon_buttons_controller.dart';
import 'package:spotify_new_playlist_screen/controller/song_controller.dart';
import 'package:spotify_new_playlist_screen/widgets/play_butto.dart';

import '../widgets/favourite_button.dart';
import '../widgets/time_progress_bar.dart';
import '../widgets/song_chip.dart';

class PlayedSongPage extends StatefulWidget {
  const PlayedSongPage({super.key});

  @override
  State<PlayedSongPage> createState() => _PlayedSongPageState();
}

class _PlayedSongPageState extends State<PlayedSongPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SongController>(
      create: (context) => SongController(),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.grey[800]!,
                Colors.grey[900]!,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 36,
                      ),
                      ImageIcon(
                        AssetImage(
                          "assets/icons/Connect to a device.png",
                        ),
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
                ChangeNotifierProvider<SongController>(
                    create: (context) => SongController(),
                    child: const SongChip()),
                const SizedBox(
                  height: 8.0,
                ),
                Center(
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/albun_cover.jpg",
                      width: 316.0,
                      height: 316.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 24.0,
                          ),
                          const Text(
                            "Meant To Be",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const Text(
                            "Ber, Charlie Oriain",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Consumer<SongController>(
                                  builder: (context, song, child) => PlayButton(
                                      onTap: () {
                                        song.playAndPause();
                                      },
                                      buttonColor: Colors.black,
                                      buttonIcon: song.playIcon)),
                              const SizedBox(
                                width: 16.0,
                              ),
                              PlayButton(
                                  onTap: () {},
                                  buttonColor: Colors.black12,
                                  buttonIcon: Icons.skip_previous),
                              const SizedBox(
                                width: 16.0,
                              ),
                              PlayButton(
                                  onTap: () {},
                                  buttonColor: Colors.black12,
                                  buttonIcon: Icons.skip_next),
                              const SizedBox(
                                width: 16.0,
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert,
                              size: 28.0,
                              weight: 0.1,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share_outlined,
                              size: 28.0,
                              weight: 0.1,
                            ),
                          ),
                          ChangeNotifierProvider<FavouriteController>(
                              create: (context) => FavouriteController(),
                              child: const FavouriteButton()),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Consumer<SongController>(
                      builder: (context, song, child) => TimeProgressBar(
                            value: song.value,
                          )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Consumer<SongController>(
                    builder: (context, song, child) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("0:${song.time}"),
                        Text("2:43"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomSheet: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.grey[800]!,
                Colors.grey[900]!,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: DraggableScrollableSheet(
              initialChildSize: 0.08,
              controller: DraggableScrollableController(),
              snap: true,
              maxChildSize: 0.9,
              minChildSize: 0.08,
              snapSizes: const [],
              expand: false,
              builder: (context, scrollController) {
                return ListView(
                  controller: scrollController,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  children: [
                    Center(
                      child: Container(
                        height: 2,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "UP NEXT",
                      style: TextStyle(fontSize: 12),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        ImageIcon(
                          AssetImage(
                            "assets/icons/Repeat.png",
                          ),
                          size: 19.0,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        ImageIcon(
                          AssetImage(
                            "assets/icons/Shuffle.png",
                          ),
                          size: 19.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                      ],
                    ),
                    ListTile(
                      minLeadingWidth: 12,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                      leading: ClipRRect(
                        child: Image.asset(
                          "assets/images/albun_cover.jpg",
                          width: 64.0,
                          height: 64.0,
                          // fit: BoxFit.fill,
                        ),
                      ),
                      title: const Text(
                        "Meant To Be",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        "Ber, Charlie Oriain",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
