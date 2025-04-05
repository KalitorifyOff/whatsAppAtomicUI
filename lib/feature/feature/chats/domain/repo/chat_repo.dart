import 'package:whatsappuiatomic/feature/feature/chats/domain/entity/chat_entity.dart';

abstract class IChatRepo {
  Future<List<ChatListEntity>> getAllChats();
}
