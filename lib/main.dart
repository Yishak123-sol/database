import 'package:database/controller/cart.dart';
import 'package:database/controller/favorite.dart';
import 'package:database/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('favoriteBox');
  await Hive.openBox('cartBox');
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => Cart(),
      ),
      ChangeNotifierProvider(
        create: (_) => Favorite(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hive DataBase',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
