import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/model/note_modal.dart';

part 'notes_cubits_state.dart';

class NotesCubitsCubit extends Cubit<NotesCubitsState> {
  NotesCubitsCubit() : super(NotesCubitsInitial());
}
