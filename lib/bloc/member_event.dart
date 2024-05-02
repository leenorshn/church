part of 'member_bloc.dart';

@immutable
abstract class MemberEvent {}

class LoadMemberEvent extends MemberEvent {}

class UpdateMemberEvent extends MemberEvent {
  final List<MemberModel> members;

  UpdateMemberEvent(this.members);
}

class AddMemberEvent extends MemberEvent {
  final MemberModel model;
  AddMemberEvent(this.model);
}
