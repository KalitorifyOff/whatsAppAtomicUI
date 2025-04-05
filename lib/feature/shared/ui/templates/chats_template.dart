import 'package:flutter/material.dart';
import 'package:whatsappuiatomic/feature/feature/chats/domain/entity/chat_entity.dart';
import 'package:whatsappuiatomic/feature/shared/ui/organisms/chat_list.dart';
import 'package:whatsappuiatomic/feature/shared/ui/organisms/search_bar.dart';

class ChatsTemplate extends StatelessWidget {
  final List<ChatListEntity>? chatList;
  const ChatsTemplate({super.key, this.chatList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          searchBarPlaceHomedr(() {}),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: chatList == null ? 0 : chatList!.length,
            itemBuilder: (context, index) {
              return ChatListView(
                userName: chatList![index].userName,
                unReadMessageCount: chatList![index].chatCount,
                isNotificationOffed:
                    chatList![index].isNotificationOffed ?? false,
                isPinned: chatList![index].isPinned ?? false,
                latestChatText: chatList![index].latestChatText,
                profileUrl: chatList![index].userProfilePicURL,
                lastChatDate: chatList![index].lastChatDateTime,
              );
            },
          ),
        ],
      ),
    );
  }
}
