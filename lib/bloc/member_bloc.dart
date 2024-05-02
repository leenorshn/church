import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../database/membre.dart';

part 'member_event.dart';
part 'member_state.dart';

class MemberBloc extends Bloc<MemberEvent, MemberState> {
  MemberBloc() : super(MemberInitial()) {
    on<MemberEvent>((event, emit) {
      if (event is LoadMemberEvent) {
        add(UpdateMemberEvent(members));
      }
      if (event is UpdateMemberEvent) {
        emit(MemberLoadedSuccess(event.members));
      }
      if (event is AddMemberEvent) {
        members.add(event.model);
        add(UpdateMemberEvent(members));
      }
    });
  }
}
