void main() {
  print("App started");

  Future.delayed(Duration(seconds: 5), () {
    print("Hello From future !");
  });

  print("App Ended");
}
