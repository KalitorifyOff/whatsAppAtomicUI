import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'updates_event.dart';
part 'updates_state.dart';

class UpdatesBloc extends Bloc<UpdatesEvent, UpdatesState> {
  UpdatesBloc() : super(UpdatesInitial()) {
    on<UpdatesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
