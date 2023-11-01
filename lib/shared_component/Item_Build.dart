import 'package:flutter/material.dart';
import 'package:mini_piano/shared_component/black_item.dart';
import 'package:mini_piano/shared_component/white_item.dart';

List<WhiteItem> wItemFun() {
  List<String> whitesounds = [
    "sounds/white_sounds/key01.mp3",
    "sounds/white_sounds/key02.mp3",
    "sounds/white_sounds/key03.mp3",
    "sounds/white_sounds/key04.mp3",
    "sounds/white_sounds/key05.mp3",
    "sounds/white_sounds/key06.mp3",
    "sounds/white_sounds/key07.mp3",
    "sounds/white_sounds/key08.mp3",
    "sounds/white_sounds/key09.mp3",
    "sounds/white_sounds/key10.mp3",
    "sounds/white_sounds/key11.mp3",
  ];
  /*List<Widget> wItem = [];
  for (int i = 0; i < whitesounds.length; i++) {
    wItem.add(WhiteItem(whitesounds[i]));
  }*/
  return whitesounds.map((e) => WhiteItem(e)).toList();
}

List<Widget> bItemFun() {
  List<String> blacksounds = [
    "sounds/black_sounds/note1.wav",
    "sounds/black_sounds/note2.wav",
    "sounds/black_sounds/note3.wav",
    "sounds/black_sounds/note4.wav",
    "sounds/black_sounds/note5.wav",
    "sounds/black_sounds/note6.wav",
    "sounds/black_sounds/note7.wav",
    "sounds/black_sounds/adel_shakel.mp3",
  ];
  List<Widget> bItem = [];
  bItem.add(const SizedBox(
    width: 55.5,
  ));
  for (int i = 0; i <blacksounds.length; i++) {
    if (i == 3 || i == 5) {
      bItem.add(const SizedBox(
        width: 75,
      ));
    }
    bItem.add( BlackItem(blacksounds[i]));
    bItem.add(const SizedBox(
      width: 38,
    ));
  }
  return bItem;
}
