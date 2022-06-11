class Person {
  String name = '';
  int age = 0;
  Person(this.name, this.age);
  printInfo() {
    print("${this.name} --- ${this.age}");
  }
}

class A {
  String info = "this is A";
  void printA() {
    print("A");
  }

  void run() {
    print("A Run");
  }
}

class B {
  void printB() {
    print("B");
  }

  void run() {
    print("B Run");
  }
}

class C extends Person with A, B {
  C(String name, int age) : super(name, age);
}

void main() {
  var c = new C('张三', 20);
  // c.printInfo();
  // c.run();
  print(c is A);
  print(c is C);
  print(c is B);
}
