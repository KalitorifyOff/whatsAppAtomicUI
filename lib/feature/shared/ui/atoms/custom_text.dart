import 'package:flutter/material.dart';

Widget customText({required String? textValue}) {
  return Text(
    textValue ?? 'Text not provided',
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
  );
}
