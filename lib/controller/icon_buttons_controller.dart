import 'package:flutter/material.dart';

class FavouriteController extends ChangeNotifier {
  bool isFavourited = false;

  void toFavourite() {
    isFavourited = !isFavourited;
    notifyListeners();
    // print(isFavourited);
  }

  Color? get favouriteColor =>
      isFavourited ? Colors.black : Colors.greenAccent[400];
  IconData get favouriteIcon =>
      isFavourited ? Icons.favorite_border_outlined : Icons.favorite;
}
