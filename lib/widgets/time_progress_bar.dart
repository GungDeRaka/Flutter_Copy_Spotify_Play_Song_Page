import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_new_playlist_screen/controller/song_controller.dart';

class TimeProgressBar extends StatelessWidget {
  const TimeProgressBar({
    super.key,
    required this.value,
    // required this.totalValue,
    // required this.width,
  });

  // final double width;
  final double value;
  

  // final double totalValue;
  
  @override
  Widget build(BuildContext context) {
    // double ratio =value/totalValue;
    double width = MediaQuery.of(context).size.width *0.85;
    return Center(
      child: Stack(alignment: Alignment.centerLeft, children: [
        Container(
          color: Colors.grey[800],
          height: 1,
          width: width,
        ),
        Row(
          children: [
            Material(
              child: AnimatedContainer(
                
                duration: const Duration(milliseconds: 1000),
                height: 2,
                width:value / width,
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
      ]),
    );
  }
}
