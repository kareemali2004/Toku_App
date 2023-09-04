import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/colors.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({super.key, required this.color});
  final colors color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff854CAE),
      height: 90,
      child: Row(
        children: [
          Container(color: Color(0xffFFFDE4), child: Image.asset(color.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  color.jpcolor,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  color.encolor,
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
                  final playeree = AudioPlayer();
                  playeree.play(AssetSource(color.sound));
                },
              )),
        ],
      ),
    );
  }
}
