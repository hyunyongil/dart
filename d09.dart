import 'lib/Person.dart';
import 'lib/Animal.dart';

class Rect {
  num height = 0;
  num width = 0;
  Rect(this.height, this.width);
  get area {
    return this.height * this.width;
  }

  set areaHeight(value) {
    this.height = value;
  }
}

void main() {
  //Person person = new Person();
  // person.setInfo(21);
  // person.getInfo();
  // Person p1 = new Person('张三', 34);
  // p1.getInfo();

  // Person p2 = new Person('李四', 44);
  // p2.getInfo();

  Person pNow = new Person.now();
  Person pNow2 = new Person.setInfo('李四', 29);
  pNow2.getInfo();

  Animal a = new Animal('小猴', 11);
  print(a.age);
  print(a.getName());
  print(a.execRun());

  Rect r = new Rect(10, 4);
  print("面积:${r.area}");

  r.areaHeight = 6;
  print(r.area);
}
