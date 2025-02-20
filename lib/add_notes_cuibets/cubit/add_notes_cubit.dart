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

      var noetsBox = Hive.box(KNotesBocx);
      emit(AddNotesSuccess());
      await noetsBox.add(note);
    } catch (e) {

      AddNotesFailur(e.toString());
    }
  }
}
