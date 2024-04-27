void main() {
  print("salma");

  Future.delayed(Duration(seconds: 2), () {
    print("elmaghawry");
  });
}

dynamic create() async {
  var order = await fetchOrder();
  return 'Your order is: $order';
}
Future<String> fetchOrder()=>
  Future.delayed(Duration(seconds: 2), () {
    print("elmaghawry");
  });