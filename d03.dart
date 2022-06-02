void main() {
  String str1 = '''this is str1
this is str1

this is str1
this is str1
  ''';
  //print(str1);

  String str2 = """this is str2
this is str2

this is str2
this is str2
  """;
  //print(str2);

  String str1s = '你好';
  String str2s = 'dart';
  print("$str1s $str2s");
  print(str1s + " + " + str2s);

  int a = 123;
  print(a);

  double b = 23.5;
  b = 32;
  print(b);

  var c = a + b;
  print(c);

  bool flag = false;
  print(flag);

  var flags = true;
  if (flags) {
    print('真');
  } else {
    print('假');
  }

  var aa = 123;
  var bb = '123';

  if (aa == bb) {
    print('aa=bb');
  } else {
    print('aa!=bb');
  }

  var l1 = ['aa', 'bb', 'cc'];
  print(l1.length);
  print(l1[2]);

  var l2 = <dynamic>[];
  l2.add('1111');
  l2.add('2222');
  l2.add('3333');
  print(l2);

  var l3 = <String>[];
  l3.add('a1111');
  l3.add('b2222');
  l3.add('c3333');
  print(l3);

  var person = {
    "name": "张三",
    "age": 20,
    "work": ["程序员", "外卖员"]
  };
  print(person);
  print(person["name"]);
  print(person['age']);
  print(person['work']);

  var p = new Map();
  p["name"] = "李四";
  p["age"] = 22;
  p["work"] = ["程序员", "外卖员"];
  print(p);
  print(p["work"]);

  var str9 = '123456';
  if (str9 is String) {
    print("str 是 String类型");
  } else if (str9 is int) {
    print("str 是 int类型");
  } else {
    print("str 是其他类型");
  }

  var str10 = 123;
  if (str10 is String) {
    print("str 是 String类型");
  } else if (str10 is int) {
    print("str 是 int类型");
  } else {
    print("str 是其他类型");
  }
}
