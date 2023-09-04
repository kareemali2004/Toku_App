import 'package:flutter/material.dart';
import 'package:toku_app/comonents/itemphrase.dart';
import 'package:toku_app/models/phrase.dart';

class PhraseScreen extends StatelessWidget {
  const PhraseScreen({super.key});
  final List<Phrase> phrases = const [
    Phrase(
        jpmember: 'fsjvfkljsavkljklsjv',
        enmember: 'hfjhgkljkljg',
        sound: 'sounds/phrases/are_you_coming.wav'),
    Phrase(
        jpmember: 'fsjvfkljsavkljklsjv',
        enmember: 'hfjhgkljkljg',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    Phrase(
        jpmember: 'fsjvfkljsavkljklsjv',
        enmember: 'hfjhgkljkljg',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    Phrase(
        jpmember: 'fsjvfkljsavkljklsjv',
        enmember: 'hfjhgkljkljg',
        sound: 'sounds/phrases/i_love_anime.wav'),
    Phrase(
        jpmember: 'fsjvfkljsavkljklsjv',
        enmember: 'hfjhgkljkljg',
        sound: 'sounds/phrases/i_love_programming.wav'),
    Phrase(
        jpmember: 'fsjvfkljsavkljklsjv',
        enmember: 'hfjhgkljkljg',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    Phrase(
        jpmember: 'fsjvfkljsavkljklsjv',
        enmember: 'hfjhgkljkljg',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    Phrase(
        jpmember: 'fsjvfkljsavkljklsjv',
        enmember: 'hfjhgkljkljg',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    Phrase(
        jpmember: 'fsjvfkljsavkljklsjv',
        enmember: 'hfjhgkljkljg',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff51B0D5),
          title: const Text(
            'phrases',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return ItemPhrse(phrase: phrases[index]);
          },
        ));
  }
}
