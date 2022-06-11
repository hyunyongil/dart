// String getData1(String value) {
//   return value;
// }

// int getData2(int value) {
//   return value;
// }

T getData<T>(T value) {
  return value;
}

getData2<T>(T value) {
  return value;
}

void main() {
  // print(getData(12));
  // print(getData('XX'));
  // print(getData<String>('come on'));
  // print(getData<int>(12345));
  List list = <dynamic>[];
  list.add(12);
  list.add("come in");
  print(list);

  List slist = <String>[];
  //slist.add(12); 错误写法
  slist.add('abcd');
  print(slist);
}
