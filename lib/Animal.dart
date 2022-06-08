class Animal {
  String _name = "";
  int age = 0;

  Animal(this._name, this.age);
  printInfo() {
    print("${this._name} --- ${this.age}");
  }

  String getName() {
    return this._name;
  }

  void _run() {
    print('这是一个私有方法');
  }

  execRun() {
    this._run();
  }
}
