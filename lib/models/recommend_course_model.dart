class RecommendCourseModel {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final double coursePrice;

  RecommendCourseModel(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.description,
      required this.coursePrice});
}
