import 'package:app_animals/constant/const_animals_name.dart';
import 'package:app_animals/views/v_home.dart';
import 'package:flutter/material.dart';


void main () => runApp(const MyApp ());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:ConstAnimalsName.animals,
      debugShowCheckedModeBanner: false,
      home:ViewHome()
    );
  }
}

