import 'package:dart_basics/dart_basics.dart' as dart_basics;

void main(List<String> arguments) {
  // const
  // const PI = 3.14;
  // PI = 3.145554 // Error
  // const PI; // Error (const requires initializer)

  // final
  final someVal1;
  someVal1 = 10;
  // someVal1 = 200;// Error

  // difference - Final is a runtime constant & const is a compile time constant

  final d = DateTime.now(); // Use case
  // 100 lines of code
  // d = DateTime.now();
  // const constDate = DateTime.now(); // Error

  String s = "10";
  print("Type of s is ${s.runtimeType}");
  int v = int.parse(s);
  print(v.runtimeType);
  print(s);

  // Nullable Type
  int? x = 10;
  x = null;

  int? a;
  print(a);
}
