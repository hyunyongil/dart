import './lib/Person.dart';
import './lib/Person1.dart' as lib;

void main(List<String> args) {
  Person p = new Person('李四', 50);
  p.getInfo();
  lib.Person1 p1 = new lib.Person1('张三', 20);
  p1.printInfo();
}
