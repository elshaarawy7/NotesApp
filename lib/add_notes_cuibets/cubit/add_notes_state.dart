part of 'add_notes_cubit.dart';

@immutable
sealed class AddNotesState {}

 class AddNotesInitial extends AddNotesState {}
 class AddNotesLoading extends AddNotesState {}
 class AddNotesSuccess extends AddNotesState {}
 class AddNotesFailur extends AddNotesState {
  final String errMessage ;

  AddNotesFailur(this.errMessage);
 }


