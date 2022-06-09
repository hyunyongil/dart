class Person1 {
  String name = '张三';
  num age = 55;
  num days = 12;
  Person1(this.name, this.age);
  Person1.conx(this.name, this.age);
  printInfo() {
    print("${this.name} --- ${this.age}");
  }

  work() {
    print("${this.name}在工作...");
  }
}
