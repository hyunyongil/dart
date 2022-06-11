abstract class Animal {
  eat(); //抽象方法
  run(); //抽象方法
  printInfo() {
    print('我是一个抽象类里面的普通方法');
  }
}

class Dog extends Animal {
  @override
  eat() {
    print('小狗在吃骨头');
  }

  @override
  run() {
    print('小狗在跑');
  }

  gun() {
    print('gun');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫在吃鱼');
  }

  @override
  run() {
    print('小猫在睡觉');
  }

  gun() {
    print('gun2');
  }
}

main() {
  // Dog d = new Dog();
  // d.eat();
  // d.printInfo();

  // Cat c = new Cat();
  // c.eat();
  // c.printInfo();

  Animal ds = new Dog();
  ds.eat();

  Animal cs = new Cat();
  cs.eat();
}
