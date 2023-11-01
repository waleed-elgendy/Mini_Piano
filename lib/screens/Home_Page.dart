import 'package:flutter/material.dart';
import 'package:mini_piano/shared_component/Item_Build.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text("mini piano"),
        ),
        body: Stack(
          children: [
            Row(
              children: wItemFun(),
            ),
            Row(
              children: bItemFun(),
            )
          ],
        ));
  }
}


