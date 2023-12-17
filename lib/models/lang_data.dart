import 'dart:convert';

LangCourse langCourseFromJson(String str) =>
    LangCourse.fromJson(json.decode(str));

String langCourseToJson(LangCourse data) => json.encode(data.toJson());

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

  factory LangCourse.fromJson(Map<String, dynamic> json) => LangCourse(
        description: json["description"],
        imageUrl: json["imageUrl"],
        location: json["location"],
        name: json["name"],
        progress: json["progress"].toDouble(),
        courses: List<Course>.from(
            json["courses"].map((x) => Course.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "imageUrl": imageUrl,
        "location": location,
        "name": name,
        "progress": progress,
        "courses": List<dynamic>.from(courses.map((x) => x.toJson())),
      };
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

  factory Course.fromJson(Map<String, dynamic> json) => Course(
        category: json["category"],
        description: json["description"],
        difficulty: json["difficulty"],
        image: json["image"],
        time: json["time"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "description": description,
        "difficulty": difficulty,
        "image": image,
        "time": time,
        "title": title,
      };
}

List<LangCourse> langCourses = [];
