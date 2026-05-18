void main() {
  // named parameters
  // printBook("Dr. APJ Abdul Kalam", "Wings Of Fire", 300);
  // printBook(
  //   title: "Wings Of Fire ",
  //   noofcopies: 200,
  //   author: "Dr. APJ Abdul Kalam",
  // );

  // printBook("Dr. APJ Abdul Kalam", "Wings Of Fire ");
  // printBook();


    List<String> cars = ["BMW", "AUDI", "MERC"];
  print("The first car ${cars[0]}");
}

// Named Parameters
// printBook({
//   required String author,
//   required String title,
//   required int noofcopies,
// }) {
//   print("$author,$title,$noofcopies");
// }

// Default values for Positional Parameters
// printBook(String author, String title, [int noofcopies=100]) {
//   print("$author,$title,$noofcopies");
// }

// Optional Parameters
// printBook({String? author, String? title, int? noofcopies}) {
//   print("$author,$title,$noofcopies");
// }

// Default values for Named Parameters
// printBook({String author="Unknown", String? title, int? noofcopies}) {
//   print("$author,$title,$noofcopies");
// }

// Arrow functions / Lambda Functions

String printName() => "Sumeet";
