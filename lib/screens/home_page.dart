import 'package:database/data/food_data.dart';
import 'package:database/screens/cart.dart';
import 'package:database/screens/favorite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/cart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<Cart>(context);
    final List<Food> foodDesignList = foodItems;
    final List<Widget> foodList = [];

    for (Food food in foodDesignList) {
      final c = Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
                width: double.infinity,
                fit: BoxFit.cover,
                image: NetworkImage(food.imageUrl)),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(food.name),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(food.price.toString())
                      ],
                    ),
                    Text(food.description)
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () => print(cartProvider.cartRead()),
                        child: const Icon(Icons.favorite_outline)),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                        onTap: () => {
                              cartProvider.cartWrite(food.id, food.name,
                                  food.imageUrl, food.description),
                            },
                        child: !cartProvider.inCart(food.id)
                            ? const Icon(Icons.shopping_cart_outlined)
                            : const Icon(Icons.shopping_cart))
                  ],
                )
              ],
            ),
          ],
        ),
      );
      foodList.add(c);
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 3,
          title: const Text('DataBase'),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const CartWidget();
                  },
                ));
              },
              child: const Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const Favorite();
                  },
                ));
              },
              child: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        body: ListView(
          children: foodList,
        ),
      ),
    );
  }
}
