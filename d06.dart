void main() {
  List myList = ['香蕉', '苹果', '西瓜'];
  print(myList[1]);
  var list = <dynamic>[];
  list.add('111');
  list.add('222');
  print(list);
  print(myList.length);
  print(myList.isEmpty);
  print(myList.isNotEmpty);
  print(myList.reversed);

  var newMyList = myList.reversed.toList();
  print(newMyList);

  myList.add('桃子');
  myList.addAll(['橙子', '葡萄']);
  print(myList);

  print(myList.indexOf('橙子'));

  myList.remove('西瓜');
  print(myList);
  myList.removeAt(2); //删除
  print(myList);

  List myLists = ['香蕉', '苹果', '西瓜'];
  myLists.fillRange(1, 2, 'aaa'); //修改
  print(myLists);

  myLists.insert(1, 'bbb');
  myLists.insertAll(3, ['ccc', 'ddd']); //增加
  print(myLists);

  List myList2 = ['香蕉', '苹果', '西瓜'];
  var str = myList2.join('-');
  print(str);
  print(str is String);

  var strs = '香蕉-苹果-西瓜';
  var listt = strs.split('-');
  print(listt);
  print(listt is List);

  var s = new Set();
  s.add('香蕉');
  s.add('苹果');
  print(s.toList());

  List myList3 = ['苹果', '西瓜', '香蕉', '苹果', '西瓜'];
  var s3 = new Set();
  s3.addAll(myList3);
  print(s3.toList());

  var person = {"name": "张三", "age": 20};
  var m = new Map();
  m["name"] = "李四";
  print(person);
  print(m);

  Map persons = {"name": "张三", "age": 20, "sex": "男"};
  print(persons.keys.toList());
  print(persons.values.toList());

  persons.addAll({
    "work": ["工人", "领导"],
    "weight": "60kg"
  });
  print(persons);

  persons.remove("sex");
  print(persons);

  var cv = persons.containsValue('张三');
  print(cv);

  List myList4 = ['香蕉', '苹果', '西瓜'];
  for (var item in myList4) {
    print(item);
  }

  myList4.forEach((value) {
    print("---$value");
  });

  List myList5 = [1, 3, 4];
  var newList = myList5.map((values) {
    return values * 2;
  });
  print(newList.toList());

  List myList6 = [1, 3, 4, 5, 7, 8, 9];
  var newList6 = myList6.where((value) {
    return value > 5;
  });
  print(newList6.toList());

  var f = myList6.any((value) {
    //只要集合里面有满足条件的就返回true
    return value > 5;
  });
  print(f);

  var g = myList6.every((value) {
    //每一个都满足条件的就返回true
    return value > 5;
  });
  print(g);

  var s6 = new Set();
  s6.addAll([1, 22, 333]);
  s6.forEach((value) => print(value));

  Map persons6 = {"name": "张三", "age": 20, "sex": "男"};
  persons6.forEach((key, value) {
    print("$key => $value");
  });
}
