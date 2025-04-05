import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsappuiatomic/feature/feature/chats/domain/entity/chat_entity.dart';
import 'package:whatsappuiatomic/feature/feature/chats/presentation/bloc/bloc/chats_bloc.dart';
import 'package:whatsappuiatomic/feature/shared/ui/templates/chats_template.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  List<ChatListEntity>? chats;

  @override
  void initState() {
    context.read<ChatListBloc>().add(GetAllChatsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ChatListBloc chatListBloc = context.read<ChatListBloc>();

    return Scaffold(
      body: BlocListener<ChatListBloc, ChatListState>(
        bloc: chatListBloc,
        listener: (context, state) {
          if (state is ChatsLoaded) {
            if ((state.chats ?? []).isNotEmpty) {
              chats = state.chats;
            }
          }
        },
        child: BlocBuilder<ChatListBloc, ChatListState>(
          bloc: chatListBloc,
          builder: (context, state) {
            return ChatsTemplate(chatList: chats ?? []);
          },
        ),
      ),
    );
  }
}
