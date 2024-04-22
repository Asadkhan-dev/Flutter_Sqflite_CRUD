
// step 1 to create model
// put all data element that need to be store in DB

class NoteModel {
  final int? noteId;
  final String noteTitle;
  final String noteContent;
  final String createdAt;

  // generate model
  NoteModel({
    this.noteId,
    required this.noteTitle,
    required this.noteContent,
    required this.createdAt,
  });

  // below both function convert data from json to model and model to json
  factory NoteModel.fromMap(Map<String, dynamic> json) => NoteModel(
        noteId: json["noteId"],
        noteTitle: json["noteTitle"],
        noteContent: json["noteContent"],
        createdAt: json["createdAt"],
      );

  Map<String, dynamic> toMap() => {
        "noteId": noteId,
        "noteTitle": noteTitle,
        "noteContent": noteContent,
        "createdAt": createdAt,
      };
}
