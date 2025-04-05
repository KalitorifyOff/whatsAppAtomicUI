part of 'chats_bloc.dart';

@immutable
sealed class ChatListEvent {}

class GetAllChatsEvent extends ChatListEvent {}
