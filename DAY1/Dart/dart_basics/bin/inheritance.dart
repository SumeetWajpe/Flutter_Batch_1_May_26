void main() {
  // Car carObj = Car("BMW", 200);
  // print(carObj.accelerate());

  JamesBondCar jbc = JamesBondCar(
    isArmed: true,
    speed: 400,
    name: "Aston Martin",
  );
  print(jbc.accelerate());

  // LatestOracle oracleObj = LatestOracle();
}

class Car {
  final String? name;
  double? speed;

  Car(this.name, this.speed);

  String accelerate() {
    return "The car $name is running at $speed kmph !";
  }
}

class JamesBondCar extends Car {
  bool? isArmed;

  JamesBondCar({String name = "AUDI", double speed = 300, this.isArmed = false})
    : super(name, speed);

  @override
  String accelerate() {
    return "${super.accelerate()} , is it armed ? $isArmed";
  }
}

// abstract classes

abstract class Connection {
  void open();
  void close();
}

sealed class OracleConnection extends Connection {
  @override
  void open() {
    print("Opening the connection..");
  }

  @override
  void close() {
    print("Closing the connection..");
  }
}

// class LatestOracle extends OracleConnection {}
