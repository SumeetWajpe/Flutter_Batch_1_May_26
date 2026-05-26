class CourseModel {
  final int id;
  final String name;
  final String subtitle;
  final int likes;
  final String imageUrl;
  final String description;
  final int? rating;
  final DateTime? lastUpdated;
  final String? language;
  final List<String>? subtitles;

  CourseModel(
    this.id,
    this.name,
    this.subtitle,
    this.likes,
    this.imageUrl,
    this.description,
    this.rating,
    this.lastUpdated,
    this.language,
    this.subtitles,
  );
}
