import "package:flutter/material.dart";

class FavButton extends ChangeNotifier {
  static bool _isFavorited = false;

  IconData currentIcon() {
    return _isFavorited ? Icons.favorite : Icons.favorite_border;
  }

  void switchIcon() {
    _isFavorited = !_isFavorited;
    notifyListeners();
  }
}
