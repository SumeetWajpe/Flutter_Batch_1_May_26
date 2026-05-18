void main() {
  // Cookie ck = Cookie("Oval");
  // print("Shape - ${ck.shape}, size - ${ck.size}");

  // Named parameters ctor
  Cookie ck = Cookie();
  print("Shape - ${ck.shape}, size - ${ck.size}");
  ck.Baking();
}

class Cookie {
  // String shape = "Circle";
  // double size = 15.5;
  String? shape;
  double? size;

  // Cookie() {
  //   shape = "Round";
  // }

  // Generative Constructor
  // Cookie(this.shape, this.size);
  // Cookie(this.shape, [this.size = 100]);
  Cookie({this.shape = "Round", this.size = 10});

  void Baking() {
    print("Baking has started..");
  }
}
