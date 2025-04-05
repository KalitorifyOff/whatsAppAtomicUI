import 'dart:convert';

import 'package:whatsappuiatomic/feature/feature/chats/data/model/chat_model.dart';
import 'package:whatsappuiatomic/feature/feature/chats/data/provider/chat_provider.dart';
import 'package:whatsappuiatomic/feature/feature/chats/domain/entity/chat_entity.dart';
import 'package:whatsappuiatomic/feature/feature/chats/domain/repo/chat_repo.dart';

class ChatRepoImp implements IChatRepo {
  ChatProvider chatProvider = ChatProvider();
  ChatRepoImp({required this.chatProvider});

  @override
  Future<List<ChatListEntity>> getAllChats() async {
    const String mockApiResponse = '''
    {
    "data": [
      {
        "userName": "John Doe",
        "userProfilePicURL": null,
        "latestChatText": "Hello, how are you?",
        "lastChatDateTime": "2025-03-21T11:51:44.114703Z",
        "isNotificationOffed": false,
        "isPinned": false,
        "chatCount": 5
      },
      {
        "userName": "Jane Doe",
        "userProfilePicURL": null,
        "latestChatText": "Hi, what's up?",
        "lastChatDateTime": "2025-03-20T10:00:00.000000Z",
        "isNotificationOffed": true,
        "isPinned": false,
        "chatCount": 3
      },
      {
        "userName": "Bob Smith",
        "userProfilePicURL": null,
        "latestChatText": "Hey, how's it going?",
        "lastChatDateTime": "2025-03-19T12:00:00.000000Z",
        "isNotificationOffed": false,
        "isPinned": true,
        "chatCount": 2
      },
      {
        "userName": "Alice Johnson",
        "userProfilePicURL": null,
        "latestChatText": "Hi, what's up?",
        "lastChatDateTime": "2025-03-18T11:00:00.000000Z",
        "isNotificationOffed": true,
        "isPinned": false,
        "chatCount": 1
      },
      {
        "userName": "Mike Brown",
        "userProfilePicURL": null,
        "latestChatText": "Hey, how's it going?",
        "lastChatDateTime": "2025-03-17T10:00:00.000000Z",
        "isNotificationOffed": false,
        "isPinned": true,
        "chatCount": 4
      },
      {
        "userName": "Emily Davis",
        "userProfilePicURL": null,
        "latestChatText": "Hi, what's up?",
        "lastChatDateTime": "2025-03-16T12:00:00.000000Z",
        "isNotificationOffed": true,
        "isPinned": false,
        "chatCount": 6
      },
      {
        "userName": "Sarah Taylor",
        "userProfilePicURL": null,
        "latestChatText": "Hey, how's it going?",
        "lastChatDateTime": "2025-03-15T11:00:00.000000Z",
        "isNotificationOffed": false,
        "isPinned": true,
        "chatCount": 7
      },
      {
        "userName": "John Doe",
        "userProfilePicURL": null,
        "latestChatText": "Hello, how are you?",
        "lastChatDateTime": "2025-03-21T11:51:44.114703Z",
        "isNotificationOffed": false,
        "isPinned": false,
        "chatCount": 5
      },
      {
        "userName": "Jane Doe",
        "userProfilePicURL": null,
        "latestChatText": "Hi, what's up?",
        "lastChatDateTime": "2025-03-20T10:00:00.000000Z",
        "isNotificationOffed": true,
        "isPinned": false,
        "chatCount": 3
      },
      {
        "userName": "Bob Smith",
        "userProfilePicURL": null,
        "latestChatText": "Hey, how's it going?",
        "lastChatDateTime": "2025-03-19T12:00:00.000000Z",
        "isNotificationOffed": false,
        "isPinned": true,
        "chatCount": 2
      },
      {
        "userName": "Alice Johnson",
        "userProfilePicURL": null,
        "latestChatText": "Hi, what's up?",
        "lastChatDateTime": "2025-03-18T11:00:00.000000Z",
        "isNotificationOffed": true,
        "isPinned": false,
        "chatCount": 1
      },
      {
        "userName": "Mike Brown",
        "userProfilePicURL": null,
        "latestChatText": "Hey, how's it going?",
        "lastChatDateTime": "2025-03-17T10:00:00.000000Z",
        "isNotificationOffed": false,
        "isPinned": true,
        "chatCount": 4
      },
      {
        "userName": "Emily Davis",
        "userProfilePicURL": null,
        "latestChatText": "Hi, what's up?",
        "lastChatDateTime": "2025-03-16T12:00:00.000000Z",
        "isNotificationOffed": true,
        "isPinned": false,
        "chatCount": 6
      },
      {
        "userName": "Sarah Taylor",
        "userProfilePicURL": null,
        "latestChatText": "Hey, how's it going?",
        "lastChatDateTime": "2025-03-15T11:00:00.000000Z",
        "isNotificationOffed": false,
        "isPinned": true,
        "chatCount": 7
      },{
        "userName": "John Doe",
        "userProfilePicURL": null,
        "latestChatText": "Hello, how are you?",
        "lastChatDateTime": "2025-03-21T11:51:44.114703Z",
        "isNotificationOffed": false,
        "isPinned": false,
        "chatCount": 5
      },
      {
        "userName": "Jane Doe",
        "userProfilePicURL": null,
        "latestChatText": "Hi, what's up?",
        "lastChatDateTime": "2025-03-20T10:00:00.000000Z",
        "isNotificationOffed": true,
        "isPinned": false,
        "chatCount": 3
      },
      {
        "userName": "Bob Smith",
        "userProfilePicURL": null,
        "latestChatText": "Hey, how's it going?",
        "lastChatDateTime": "2025-03-19T12:00:00.000000Z",
        "isNotificationOffed": false,
        "isPinned": true,
        "chatCount": 2
      },
      {
        "userName": "Alice Johnson",
        "userProfilePicURL": null,
        "latestChatText": "Hi, what's up?",
        "lastChatDateTime": "2025-03-18T11:00:00.000000Z",
        "isNotificationOffed": true,
        "isPinned": false,
        "chatCount": 1
      },
      {
        "userName": "Mike Brown",
        "userProfilePicURL": null,
        "latestChatText": "Hey, how's it going?",
        "lastChatDateTime": "2025-03-17T10:00:00.000000Z",
        "isNotificationOffed": false,
        "isPinned": true,
        "chatCount": 4
      },
      {
        "userName": "Emily Davis",
        "userProfilePicURL": null,
        "latestChatText": "Hi, what's up?",
        "lastChatDateTime": "2025-03-16T12:00:00.000000Z",
        "isNotificationOffed": true,
        "isPinned": false,
        "chatCount": 6
      },
      {
        "userName": "Sarah Taylor",
        "userProfilePicURL": null,
        "latestChatText": "Hey, how's it going?",
        "lastChatDateTime": "2025-03-15T11:00:00.000000Z",
        "isNotificationOffed": false,
        "isPinned": true,
        "chatCount": 7
      }
    ]
  }
  ''';

    try {
      Map<String, dynamic> jsonData = jsonDecode(mockApiResponse);
      List<ChatListEntity> chatsList =
          (jsonData['data'] as List)
              .map((chat) => ChatModel.fromMap(chat).toChatListEntity())
              .toList();
      return chatsList;
    } catch (err) {
      rethrow;
    }
  }
}
