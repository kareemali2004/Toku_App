import 'package:flutter/material.dart';
import 'package:toku_app/comonents/itemfamily.dart';
import 'package:toku_app/models/family.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});
  final List<Family> familys = const [
    Family(
        image: 'assets/images/family_members/family_father.png',
        jpmember: 'Chichioya',
        enmember: 'father',
        sound: 'sounds/family_members/father.wav'),
    Family(
        image: 'assets/images/family_members/family_mother.png',
        jpmember: 'Hahaoya',
        enmember: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    Family(
        image: 'assets/images/family_members/family_daughter.png',
        jpmember: 'Musume',
        enmember: 'daughter',
        sound: 'sounds/family_members/daughter.wav'),
    Family(
        image: 'assets/images/family_members/family_son.png',
        jpmember: 'Musuko',
        enmember: 'son',
        sound: 'sounds/family_members/son.wav'),
    Family(
        image: 'assets/images/family_members/family_older_brother.png',
        jpmember: 'Ani',
        enmember: 'older brother',
        sound: 'sounds/family_members/older bother.wav'),
    Family(
        image: 'assets/images/family_members/family_older_sister.png',
        jpmember: 'Ane',
        enmember: 'older sister',
        sound: 'sounds/family_members/older sister.wav'),
    Family(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpmember: 'Otōto',
        enmember: 'younger brother',
        sound: 'sounds/family_members/younger brohter.wav'),
    Family(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpmember: 'Imōto',
        enmember: 'younger sister',
        sound: 'sounds/family_members/younger sister.wav'),
    Family(
        image: 'assets/images/family_members/family_grandfather.png',
        jpmember: 'Sofu',
        enmember: 'Grand father',
        sound: 'sounds/family_members/grand father.wav'),
    Family(
        image: 'assets/images/family_members/family_grandmother.png',
        jpmember: 'Sobo',
        enmember: 'Grand mother',
        sound: 'sounds/family_members/grand mother.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF5D8B3E),
          title: Text(
            'family members',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: familys.length,
          itemBuilder: (context, index) {
            return ItemFamily(family: familys[index]);
          },
        ));
  }
}
