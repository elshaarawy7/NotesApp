import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/const.dart' show KNotesBocx;
import 'package:notes_app/model/note_modal.dart';

part 'notes_cubits_state.dart';

class NotesCubitsCubit extends Cubit<NotesCubitsState> {
  NotesCubitsCubit() : super(NotesCubitsInitial());
FeatchAllNotes() async{
  emit(NotesLoNoding());
    try {

      var notesBox = Hive.box(KNotesBocx);
      List<NoteModal> notes =notesBox .values.cast<NoteModal>().toList();
      emit(NotesSecsess(notes));
    } catch (e) {
      emit(NotesFilear(e.toString()));

    }
}
}  

