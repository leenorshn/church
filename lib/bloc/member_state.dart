part of 'member_bloc.dart';

@immutable
abstract class MemberState {}

class MemberInitial extends MemberState {}

class MemberLoadedSuccess extends MemberState {
  final List<MemberModel> members;

  MemberLoadedSuccess(this.members);
}
