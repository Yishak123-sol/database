import 'package:database/data/food_data.dart';
import 'package:database/screens/cart.dart';
import 'package:database/screens/favorite.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                const Row(
                  children: [
                    Icon(Icons.favorite_outline),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.shopping_cart_outlined)
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
                    return const Cart();
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
