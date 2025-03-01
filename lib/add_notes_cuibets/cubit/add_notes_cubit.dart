import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/const.dart';
import 'package:notes_app/model/note_modal.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());


  addNote(NoteModal note) async {
  emit(AddNotesLoading());
  try {
    var notesBox = Hive.box<NoteModal>(KNotesBocx); // ✅ بدون إعادة فتح
    await notesBox.add(note);
    emit(AddNotesSuccess());
  } catch (e) {
    emit(AddNotesFailur(e.toString()));
  }
}


}
