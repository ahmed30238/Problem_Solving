void main() {
  var list = [1, 2, 3, 4, 5];
 var total = list.fold(5, (previousValue, element) => previousValue + element);
 var total1 = list.reduce((value, element) => value + element) + 5;
 print(total);
 print(total1);
}
