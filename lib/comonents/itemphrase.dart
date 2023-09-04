import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/phrase.dart';

class ItemPhrse extends StatelessWidget {
  const ItemPhrse({super.key, required this.phrase});
  final Phrase phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: const Color(0xff51B0D5),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpmember,
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  phrase.enmember,
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
                  player.play(AssetSource(phrase.sound));
                },
              )),
        ],
      ),
    );
  }
}
