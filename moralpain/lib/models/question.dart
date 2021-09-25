class Question {
  final String sectionId;
  final String title;
  final String subtitle;
  final Map<String, String> options;

  Question(
    this.sectionId,
    this.title,
    this.subtitle,
    this.options,
  );

  Question.fromJson(Map<String, dynamic> json)
      : sectionId = json['sectionId'],
        title = json['title'],
        subtitle = json['subtitle'],
        options = new Map<String, String>.from(json['options']);
}
