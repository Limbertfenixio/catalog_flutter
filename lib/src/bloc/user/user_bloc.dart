import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:widget_catalog/src/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>((event, emit) {
      emit(UserSetState(event.user));
    });

    on<ChangeAgeEvent>((event, emit) {
      if (!state.existUser) {
        return;
      }
      emit(UserSetState(state.user!.copyWith(edad: event.age)));
    });

    on<AddProfessions>((event, emit) {
      if (!state.existUser) {
        return;
      }

      var profession = [...state.user!.professions, event.profession];
      emit(UserSetState(state.user!.copyWith(professions: profession)));
    });

    on<DeleteUserEvent>((event, emit) {
      emit(UserInitialState());
    });
  }
}
