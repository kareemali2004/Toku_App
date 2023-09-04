import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';

class ItemNumber extends StatelessWidget {
  const ItemNumber({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFF9F3B),
      height: 90,
      child: Row(
        children: [
          Container(color: const Color(0xffFFFDE4), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                icon: const Icon(
                  Icons.play_arrow,
                  color: Color(0xffFFFDE4),
                  size: 30,
                ),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(number.sound));
                },
              )),
        ],
      ),
    );
  }
}
