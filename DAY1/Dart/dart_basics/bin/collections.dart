void main() {
  // var cars = ["BMW", "AUDI", "MERC", 10, true]; // ! strongly typed

  // List<String> cars = ["BMW", "AUDI", "MERC"];
  // print("The first car ${cars[0]}");
  // print("$cars");
  // print("${cars.length}");

  //  Set -  unordered collection of unique items
  Set<String> cars = {"BMW", "AUDI", "MERC", "BMW"};

  print(cars);

  // Map - key/value
  Map<String, String> cityPins = {"Pune": "410505", "Nagpur": "440022"};
  print(cityPins["Pune"]);
  var cities = cityPins.keys.toList();
  print(cities);
}
