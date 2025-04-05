import 'package:flutter/material.dart';

Widget chatCountBubble({required int? count}) {
  return Container(
    decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        count != null ? count.toString() : '2',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
