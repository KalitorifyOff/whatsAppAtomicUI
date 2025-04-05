import 'package:flutter/material.dart';

Widget searchBarPlaceHomedr(GestureTapCallback ontap) {
  return InkWell(
    onTap: ontap,
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey.withAlpha(100),
        ),
        child: Row(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Icon(Icons.search), Text("Ask Meta AI or Search")],
        ),
      ),
    ),
  );
}
