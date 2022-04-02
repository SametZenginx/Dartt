/*
 Question
Write a function and this function will fetch a user according to the id parameter 
it receives. This process will be concluded after 2 seconds and the brought person information
will be taken as a map. It is sufficient to have username and id information in this map structure.

Write a function that returns the courses of the person using the username value in the fetched person information.
This function will take 4 seconds and will return the courses that belong to the username value as a list with the course names in it.

Finally, write a function that takes the first element in the courses list as a parameter and returns a comment for that course
This function will take 1 second.
*/

main(List<String> args) {
  getUserWithId(5).then((Map value) {
    print(value);
    fetchCoursesbyUsername(value["username"]).then((List courses) {
      print(courses);
      String firstCourse = courses.first;
      bringTheFirstCommentoftheCourse(firstCourse).then((String comment) {
        print(firstCourse);
        print(comment);
      });
    });
  });
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
