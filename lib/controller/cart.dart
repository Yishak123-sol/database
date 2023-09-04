import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Cart extends ChangeNotifier {
  final _myCartBox = Hive.box('cartBox');
  String id = '';

  cartWrite(id, name, imageUrl, description) {
    Map<String, dynamic> food = {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
    };

    int index = 0;
    final listOfCarts = cartRead();
    Map<dynamic, dynamic> currentId;
    for (currentId in listOfCarts) {
      if (currentId['id'] == id) {
        _myCartBox.deleteAt(index);
        notifyListeners();
        return;
      }
      index = index + 1;
    }
    _myCartBox.add(food);
    notifyListeners();
  }

  cartRead() {
    return _myCartBox.values.toList();
  }

  bool inCart(id) {
    final listOfCarts = cartRead();
    Map<dynamic, dynamic> currentId;
    for (currentId in listOfCarts) {
      if (currentId['id'] == id) {
        return true;
      }
    }
    return false;
  }
}
