import 'package:flutter/material.dart';

import '../widgets/action_tile.dart';
import '../widgets/music_bar.dart';
import '../widgets/song_queue.dart';

class MoreAction extends StatelessWidget {
  const MoreAction({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const SizedBox(
              height: 36.0,
            ),
            const Padding(
              padding:  EdgeInsets.only(bottom: 12),
              child: SongQueue(),
            ),
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      height: 220.0,
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/albun_cover.jpg",
                              width: 180.0,
                              height: 180.0,
                              fit: BoxFit.fill,
                            ),
                            Container(
                              height: 36,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 32,
                                      blurStyle: BlurStyle.outer,
                                      offset: Offset.fromDirection(9),
                                    )
                                  ]),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Icon(
                                    Icons.discord_outlined,
                                    size: 28.0,
                                  ),
                                  SizedBox(
                                    width: 12.0,
                                  ),
                                  MusicBar()
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  ListView.builder(
                  itemCount: 12,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                  return ActionTile(icon: Icons.abc,text: "Hello World!",);
                  },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
