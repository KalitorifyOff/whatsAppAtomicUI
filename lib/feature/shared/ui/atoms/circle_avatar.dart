import 'package:flutter/material.dart';

Widget customCircleAvatar({required String? profileUrl}) {
  return CircleAvatar(
    backgroundImage: NetworkImage(
      (profileUrl ?? '').isEmpty ? "https://picsum.photos/200" : profileUrl!,
    ),
    radius: 24,
    // minRadius: 25.5,
    // maxRadius: 25.5,
  );
}
