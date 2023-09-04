import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Favorite extends ChangeNotifier {
  final _myFavoriteBox = Hive.box('favoriteBox');
  String id = '';

  favoriteWrite(id, name, imageUrl, description, price) {
    Map<dynamic, dynamic> food = {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
      'price': price
    };

    int index = 0;
    final listOfCarts = favoriteRead();
    Map<dynamic, dynamic> currentId;
    for (currentId in listOfCarts) {
      if (currentId['id'] == id) {
        _myFavoriteBox.deleteAt(index);
        notifyListeners();
        return;
      }
      index = index + 1;
    }
    _myFavoriteBox.add(food);
    notifyListeners();
  }

  favoriteRead() {
    return _myFavoriteBox.values.toList();
  }

  bool inFavorite(id) {
    final listOfCarts = favoriteRead();
    Map<dynamic, dynamic> currentId;
    for (currentId in listOfCarts) {
      if (currentId['id'] == id) {
        return true;
      }
    }
    return false;
  }
}

