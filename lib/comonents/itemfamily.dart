import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/family.dart';

class ItemFamily extends StatelessWidget {
  const ItemFamily({super.key, required this.family});
  final Family family;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF5D8B3E),
      height: 90,
      child: Row(
        children: [
          Container(color: Color(0xffFFFDE4), child: Image.asset(family.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  family.jpmember,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  family.enmember,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                icon: Icon(
                  Icons.play_arrow,
                  color: Color(0xffFFFDE4),
                  size: 30,
                ),
                onPressed: () {
                  final playee = AudioPlayer();
                  playee.play(AssetSource(family.sound));
                },
              )),
        ],
      ),
    );
  }
}
