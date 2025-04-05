import 'dart:convert';

import 'package:whatsappuiatomic/feature/feature/chats/domain/entity/chat_entity.dart';

class ChatModel extends ChatListEntity {
  ChatModel({
    required super.userName,
    required super.userProfilePicURL,
    required super.latestChatText,
    required super.lastChatDateTime,
    required super.isNotificationOffed,
    required super.isPinned,
    required super.chatCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'userProfilePicURL': userProfilePicURL,
      'latestChatText': latestChatText,
      'lastChatDateTime': lastChatDateTime?.millisecondsSinceEpoch,
      'isNotificationOffed': isNotificationOffed,
      'isPinned': isPinned,
      'chatCount': chatCount,
    };
  }

  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      userName: map['userName'] != null ? map['userName'] as String : null,
      userProfilePicURL:
          map['userProfilePicURL'] != null
              ? map['userProfilePicURL'] as String
              : null,
      latestChatText:
          map['latestChatText'] != null
              ? map['latestChatText'] as String
              : null,
      lastChatDateTime:
          map['lastChatDateTime'] != null
              ? DateTime.parse(map['lastChatDateTime'])
              : null,
      isNotificationOffed:
          map['isNotificationOffed'] != null
              ? map['isNotificationOffed'] as bool
              : null,
      isPinned: map['isPinned'] != null ? map['isPinned'] as bool : null,
      chatCount: map['chatCount'] != null ? map['chatCount'] as int : null,
    );
  }

  ChatListEntity toChatListEntity() {
    return ChatListEntity(
      userName: userName,
      userProfilePicURL: userProfilePicURL,
      latestChatText: latestChatText,
      lastChatDateTime: lastChatDateTime,
      isNotificationOffed: isNotificationOffed,
      isPinned: isPinned,
      chatCount: chatCount,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatModel.fromJson(String source) =>
      ChatModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
