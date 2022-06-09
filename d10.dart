import 'lib/Web.dart';

main() {
  // Person1 p = new Person1('张三', 20);
  // //p?.printInfo();
  // if (p is Person1) {
  //   p.name = "李四";
  // }
  // p.printInfo();
  // print(p is Object);

  // var p1;
  // p1 = '';
  // p1 = new Person1('张三', 20);
  // (p1 as Person1).printInfo();

  // Person1 p2 = new Person1('张三2', 20);
  // p2.printInfo();
  // p2.name = '张思';
  // p2.age = 40;
  // p2.printInfo();
  // p1
  //   ..name = "李四"
  //   ..age = 30
  //   ..printInfo();
  // Web w = new Web();
  // print(w.name);
  // print(w.printInfo());
  // Person1 p = new Person1('李四', 20);
  // print(p.printInfo());

  // Person1 p2 = new Person1('李八', 20);
  // print(p2.printInfo());

  // Web w = new Web('张九', 50, '女');
  // w.printInfo();
  // w.run();

  Web w = new Web('李四', 20, '男');
  w.printInfo();
  w.work();
  w.run();
}
