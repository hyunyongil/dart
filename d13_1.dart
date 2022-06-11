class PrintClass<mamamu> {
  List list = <mamamu>[];
  void add(mamamu value) {
    this.list.add(value);
  }

  void printInfo() {
    for (int i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}

main() {
  PrintClass p = new PrintClass<String>();
  p.add('你好');
  p.add('哈哈');
  p.printInfo();
}
