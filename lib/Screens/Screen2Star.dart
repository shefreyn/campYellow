import 'package:flutter/material.dart';

class Star extends StatefulWidget {
  const Star({Key? key}) : super(key: key);

  @override
  State<Star> createState() => _StarState();
}

class _StarState extends State<Star> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Star", style: TextStyle(color: Colors.white)),
    );
  }
}
