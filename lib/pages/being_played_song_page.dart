import 'package:flutter/material.dart';

import '../widgets/time_progress_bar.dart';

class PlayedSongPage extends StatefulWidget {
  const PlayedSongPage({super.key});

  @override
  State<PlayedSongPage> createState() => _PlayedSongPageState();
}

class _PlayedSongPageState extends State<PlayedSongPage> {
  int? _value = 0;
  bool isFavourited = false;
  List<String> options = ["Playlist", "Lyrcs"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              Wrap(
                spacing: 5.0,
                children: List<Widget>.generate(
                  options.length,
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
                          options[index],
                        ),
                        selected: _value == index,
                        labelStyle: const TextStyle(fontSize: 16),
                        onSelected: (bool selected) {
                          setState(() {
                            _value = (selected ? index : null);
                          });
                        },
                      ),
                    );
                  },
                ).toList(),
              ),
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
                          children: const [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.black12,
                              child: Icon(
                                Icons.skip_previous,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                            SizedBox(
                              width: 16.0,
                            ),
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.black12,
                              child: Icon(
                                Icons.skip_next,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                            SizedBox(
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
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isFavourited = !isFavourited;
                            });
                          },
                          icon: Icon(
                            isFavourited
                                ? Icons.favorite_border_outlined
                                : Icons.favorite,
                            color: isFavourited
                                ? Colors.black
                                : Colors.greenAccent[400],
                            size: 28.0,
                            weight: 0.1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: TimeProgressBar(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("0:22"),
                    Text("2:43"),
                  ],
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
            controller: DraggableScrollableController(),
            snap: true,
            maxChildSize: 0.9,
            minChildSize: 0.08,
            snapSizes: const [],
            expand: false,
            builder: (context, scrollController) {
              return ListView(
                controller: scrollController,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
    );
  }
}
