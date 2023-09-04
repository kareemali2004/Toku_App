import 'package:flutter/material.dart';
import 'package:toku_app/comonents/itemcolor.dart';
import 'package:toku_app/models/colors.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});
  final List<colors> colorss = const [
    colors(
        image: 'assets/images/colors/color_red.png',
        encolor: 'Red',
        jpcolor: 'Aka',
        sound: 'sounds/colors/red.wav'),
    colors(
        image: 'assets/images/colors/color_black.png',
        encolor: 'black',
        jpcolor: 'Kuro',
        sound: 'sounds/colors/black.wav'),
    colors(
        image: 'assets/images/colors/yellow.png',
        encolor: 'yellow',
        jpcolor: 'Kiiro',
        sound: 'sounds/colors/yellow.wav'),
    colors(
        image: 'assets/images/colors/color_gray.png',
        encolor: 'gray',
        jpcolor: 'Gurē',
        sound: 'sounds/colors/gray.wav'),
    colors(
        image: 'assets/images/colors/color_brown.png',
        encolor: 'brown',
        jpcolor: 'Chairo',
        sound: 'sounds/colors/brown.wav'),
    colors(
        image: 'assets/images/colors/color_white.png',
        encolor: 'white',
        jpcolor: 'Shiro',
        sound: 'sounds/colors/white.wav'),
    colors(
        image: 'assets/images/colors/color_green.png',
        encolor: 'green',
        jpcolor: 'Midori',
        sound: 'sounds/colors/green.wav'),
    colors(
        image: 'assets/images/colors/color_dusty_yellow.png',
        encolor: 'dusty yellow',
        jpcolor: 'Dasutiierō',
        sound: 'sounds/colors/dusty yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff854CAE),
        title: const Text(
          'colors',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: colorss.length,
          itemBuilder: (context, index) {
            return ItemColor(color: colorss[index]);
          }),
    );
  }
}
