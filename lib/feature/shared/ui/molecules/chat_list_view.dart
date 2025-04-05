import 'package:flutter/material.dart';
import 'package:whatsappuiatomic/feature/shared/ui/atoms/message_count_bubble.dart';

Widget chatTrailer({
  required BuildContext context,
  required String? formattedTime,
  bool isPinned = false,
  bool isNotificationOffed = false,
  required int? unReadMessageCount,
}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.2,
    child: Column(
      spacing: 5,
      children: [
        Text(formattedTime ?? '12:00 pm', style: TextStyle(color: Colors.grey)),
        Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isPinned) Icon(Icons.push_pin_outlined),
            if (isNotificationOffed) Icon(Icons.notifications_off_outlined),
            if (unReadMessageCount != null)
              chatCountBubble(count: unReadMessageCount),
          ],
        ),
      ],
    ),
  );
}
