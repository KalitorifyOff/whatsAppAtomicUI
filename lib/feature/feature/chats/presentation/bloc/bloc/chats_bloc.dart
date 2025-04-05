import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:whatsappuiatomic/feature/feature/chats/domain/entity/chat_entity.dart';
import 'package:whatsappuiatomic/feature/feature/chats/domain/repo/chat_repo.dart';

part 'chats_event.dart';
part 'chats_state.dart';

class ChatListBloc extends Bloc<ChatListEvent, ChatListState> {
  final IChatRepo chatRepo;
  ChatListBloc({required this.chatRepo}) : super(ChatsInitial()) {
    on<GetAllChatsEvent>(_getAllChatsEvent);
  }

  void _getAllChatsEvent(
    GetAllChatsEvent event,
    Emitter<ChatListState> emit,
  ) async {
    emit(ChatsLoading());
    try {
      List<ChatListEntity> chats = await chatRepo.getAllChats();
      emit(ChatsLoaded(chats: chats));
    } catch (err) {
      emit(ChatsError(errorMessage: err.toString()));
    }
  }
}
