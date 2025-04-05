part of 'chats_bloc.dart';

@immutable
sealed class ChatListState {}

final class ChatsInitial extends ChatListState {}

class ChatsLoading extends ChatListState {}

class ChatsLoaded extends ChatListState {
  final List<ChatListEntity>? chats;
  ChatsLoaded({required this.chats});
}

class ChatsError extends ChatListState {
  final String errorMessage;
  ChatsError({required this.errorMessage});
}
