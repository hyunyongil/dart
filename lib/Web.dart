import './Person1.dart';

class Web extends Person1 {
  String sex = '';
  Web(String name, num age, String sex) : super.conx(name, age) {
    this.sex = sex;
  }
  run() {
    print("${this.name} --- ${this.age}--- ${this.sex}");
    super.work();
    print(this.days);
  }

  @override
  printInfo() {
    print("姓名: ${this.name} --- 年龄: ${this.age}");
  }

  @override
  work() {
    print("${this.name}工作是写代码...");
  }
}
