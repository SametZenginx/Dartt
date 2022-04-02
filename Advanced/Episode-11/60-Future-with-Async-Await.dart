// if you are using await. define async
// await: wait until this gets you something.
main(List<String> args) {
  print("Contact data will be retrieved from the Internet.");

  transactionsRelatedToThePerson();
  print("Another action will be taken!");

  print("Contact data finished.");
}

void transactionsRelatedToThePerson() async {
  String person = await bringContactData();
  print(person);
}

Future<String> bringContactData() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "Contact name: Samet\nid: 1";
  });
}
