part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final User user;
  ActivateUser(this.user);
}

class ChangeAgeEvent extends UserEvent {
  final int age;

  ChangeAgeEvent(this.age);
}

class AddProfessions extends UserEvent {
  final String profession;

  AddProfessions(this.profession);
}

class DeleteUserEvent extends UserEvent {
  DeleteUserEvent();
}
