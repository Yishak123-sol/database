import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/cart.dart';
import '../controller/favorite.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<Cart>(context);
    final favoriteProvider = Provider.of<Favorite>(context);

    final List<dynamic> foodDesignList = cartProvider.cartRead();
    final List<Widget> foodList = [];

    for (Map food in foodDesignList) {
      final c = Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
                width: double.infinity,
                fit: BoxFit.cover,
                image: NetworkImage(food['imageUrl'])),
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
                        Text(food['name']),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(food['price'].toString())
                      ],
                    ),
                    Text(food['description'])
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () => {
                              favoriteProvider.favoriteWrite(
                                  food['id'],
                                  food['name'],
                                  food['imageUrl'],
                                  food['description'],
                                  food['price'].toString()),
                            },
                        child: !favoriteProvider.inFavorite(food['id'])
                            ? const Icon(Icons.favorite_outline)
                            : const Icon(Icons.favorite)),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                        onTap: () => {
                              cartProvider.cartWrite(
                                  food['id'],
                                  food['name'],
                                  food['imageUrl'],
                                  food['description'],
                                  food['price'].toString()),
                            },
                        child: !cartProvider.inCart(food['id'])
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
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                return Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          title: const Text('Cart'),
        ),
        body: ListView(
          children: foodList,
        ),
      ),
    );
  }
}
