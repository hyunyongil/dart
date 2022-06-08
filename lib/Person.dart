class Person {
  String name = '';
  int age = 0;
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  Person(this.name, this.age);
  Person.now() {
    print('我是命名构造函数');
  }
  Person.setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }
  void getInfo() {
    print("${this.name} --- ${this.age}");
  }
}
