class MQuestion {
  final String id;
  final String title;
  final Map<String, bool> options;
  MQuestion({required this.id, required this.title, required this.options});
  @override
  String toString() {
    return "MQuestion(id : $id, title : $title, options : $options)";
  }
}
