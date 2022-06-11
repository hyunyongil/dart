abstract class A {
  String info = "this is A";
  String name = '';
  printA();
}

abstract class B {
  printB();
}

class C with A, B {
  @override
  printA() {
    print('printA');
  }

  @override
  String name = '';

  @override
  printB() {
    print('printB');
  }
}

void main() {
  var c = new C();
  c.printA();
  c.printB();
  print(c.info);
}
