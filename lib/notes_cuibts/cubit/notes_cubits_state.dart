part of 'notes_cubits_cubit.dart';

@immutable
abstract class NotesCubitsState {}

 class NotesCubitsInitial extends NotesCubitsState {}
  class NotesNoding extends NotesCubitsState {}
   class NotesSecsess extends NotesCubitsState {
    final List<NoteModal> notes ;

  NotesSecsess(this.notes);
   }
    class NotesFilear extends NotesCubitsState {
      final String errMasseg ;

  NotesFilear(this.errMasseg);
    }
