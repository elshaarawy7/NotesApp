import 'package:hive/hive.dart';
part 'note_modal.g.dart';
@HiveType(typeId: 0)
class NoteModal extends HiveObject {
  @HiveField(0)
   String titel ;
  @HiveField(1)
  String subtitle ; 
  @HiveField(2)
  final String date ;
  @HiveField(3)
   int color ;

  NoteModal({required this.titel, required this.subtitle, required this.date, required this.color});

}