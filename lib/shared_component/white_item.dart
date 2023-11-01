import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class WhiteItem extends StatefulWidget {
  const WhiteItem(  this.wsounds,{Key? key}) : super(key: key);
  final String wsounds;
  @override
  State<WhiteItem> createState() => _WhiteItemState();
}

class _WhiteItemState extends State<WhiteItem> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (d) {
        setState(() {
          isPressed = true;
          final player = AudioPlayer();
          player.play(AssetSource(widget.wsounds));
        });
      },
      onTapUp: (d) {
        setState(() {
          isPressed = false;
        });
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.4 : 0),
        child: Container(
          height: double.infinity,
          width: 73,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.black, width: 2),
              color: isPressed ? Colors.yellow : Colors.white),
        ),
      ),
    );
  }
}
