class LangCourse {
  final String description;
  final String imageUrl;
  final String location;
  final String name;
  final double progress;
  final List<Course> courses;

  LangCourse({
    required this.description,
    required this.imageUrl,
    required this.location,
    required this.name,
    required this.progress,
    required this.courses,
  });
}

class Course {
  final String category;
  final String description;
  final String difficulty;
  final String image;
  final String time;
  final String title;

  Course({
    required this.category,
    required this.description,
    required this.difficulty,
    required this.image,
    required this.time,
    required this.title,
  });
}

List<LangCourse> langCourses = [];
