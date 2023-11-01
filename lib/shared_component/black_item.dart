import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
class BlackItem extends StatefulWidget {
  const BlackItem(this.bsounds,{Key? key}) : super(key: key);
final String bsounds;
  @override
  State<BlackItem> createState() => _BlackItemState();
}

bool isPressedd=false;

class _BlackItemState extends State<BlackItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (d) {
        setState(() {
          isPressedd = true;
          final player = AudioPlayer();
          player.play(AssetSource(widget.bsounds));
        });
      },
      onTapUp: (d) {
        setState(() {
          isPressedd = false;
        });
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressedd ? 0.4 : 0),
        child: Container(
          height: 170,
          width: 35,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    spreadRadius: 1.00,
                    color: Colors.black,
                    blurRadius: 12,
                    blurStyle: BlurStyle.normal),
              ],
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
              color: isPressedd ? Colors.yellow : Colors.black),
        ),
      ),
    );
  }
}
