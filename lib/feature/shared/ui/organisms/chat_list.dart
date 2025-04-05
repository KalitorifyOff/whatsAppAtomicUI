import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsappuiatomic/feature/shared/ui/atoms/circle_avatar.dart';
import 'package:whatsappuiatomic/feature/shared/ui/atoms/custom_text.dart';
import 'package:whatsappuiatomic/feature/shared/ui/molecules/chat_list_view.dart';

class ChatListView extends StatelessWidget {
  final String? profileUrl;
  final String? userName;
  final String? latestChatText;
  final DateTime? lastChatDate;
  final bool isPinned;
  final bool isNotificationOffed;
  final int? unReadMessageCount;
  const ChatListView({
    super.key,
    this.profileUrl,
    this.userName,
    this.latestChatText,
    this.lastChatDate,
    this.isPinned = false,
    this.isNotificationOffed = false,
    this.unReadMessageCount,
  });

  @override
  Widget build(BuildContext context) {
    String? formattedTime =
        lastChatDate == null
            ? null
            : DateFormat('hh:mm a').format(lastChatDate!);

    return ListTile(
      leading: customCircleAvatar(profileUrl: profileUrl),
      title: customText(textValue: userName),
      subtitle: customText(textValue: latestChatText),
      trailing: chatTrailer(
        context: context,
        isPinned: isPinned,
        isNotificationOffed: isNotificationOffed,
        unReadMessageCount: unReadMessageCount,
        formattedTime: formattedTime,
      ),
      contentPadding: EdgeInsets.only(left: 10, right: 10),
    );
  }
}
