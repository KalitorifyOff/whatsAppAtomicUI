class ChatListEntity {
  String? userName;
  String? userProfilePicURL;
  String? latestChatText;
  DateTime? lastChatDateTime;
  bool? isNotificationOffed;
  bool? isPinned;
  int? chatCount;
  ChatListEntity({
    this.userName,
    this.userProfilePicURL,
    this.latestChatText,
    this.lastChatDateTime,
    this.isNotificationOffed,
    this.isPinned,
    this.chatCount,
  });
}
