import 'package:flutter/material.dart';
import 'package:toku_app/comonents/Category_item.dart';

import 'package:toku_app/screens/colorsscreen.dart';
import 'package:toku_app/screens/familyscreen.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrasesscreen.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF533D35),
        title: Text(
          'Toku',
        ),
      ),
      body: Column(children: [
        Category(
          OnTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
              return NumberPage();
            }));
          },
          text: "numbers",
          color: Color(0xFFFF9F3B),
        ),
        Category(
          OnTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
              return FamilyScreen();
            }));
          },
          color: Color(0xFF5D8B3E),
          text: "family members",
        ),
        Category(
          text: "colors",
          color: Color(0xff854CAE),
          OnTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
              return ColorsScreen();
            }));
          },
        ),
        Category(
          text: "phrases",
          color: Color(0xff51B0D5),
          OnTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PhraseScreen();
            }));
          },
        ),
      ]),
    );
  }
}
