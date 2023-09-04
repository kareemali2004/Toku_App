import 'package:flutter/material.dart';
import 'package:toku_app/comonents/item.dart';

import 'package:toku_app/models/number.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});
  final List<Number> numbers = const [
    Number(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyu',
        enName: 'nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Ju',
        enName: 'ten',
        sound: 'sounds/numbers/number_ten_sound.mp3')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF533D35),
        title: Text("numbers"),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ItemNumber(number: numbers[index]);
        },
      ),
    );
  }
}
