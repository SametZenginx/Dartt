main(List<String> args) async {
  Map<String, dynamic> getUser = await getUserWithId(6);
  List<String> courseLists = await fetchCoursesbyUsername(getUser["username"]);
  String comment = await bringTheFirstCommentoftheCourse(courseLists.first);
  print(comment);
}

Future<String> bringTheFirstCommentoftheCourse(String courseName) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "The course is perfect";
  });
}

Future<List<String>> fetchCoursesbyUsername(String username) {
  print("Bringing the courses of $username user...");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ["flutter", "kotlin", "javascript"];
  });
}

Future<Map<String, dynamic>> getUserWithId(int id) {
  print("Retrieving user with id $id ...");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {"username": "SametZengin", "id": id};
  });
}
