import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_new_playlist_screen/controller/icon_buttons_controller.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FavouriteController>(
      builder: (context, favourite, child) => IconButton(
        onPressed: () {
          favourite.toFavourite();
        },
        icon: Icon(
          favourite.favouriteIcon,
          color: favourite.favouriteColor,
          size: 28.0,
          weight: 0.1,
        ),
      ),
    );
  }
}
