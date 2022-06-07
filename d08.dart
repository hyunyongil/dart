import 'dart:math';

void main() {
  List myList = ['香蕉', '苹果', '西瓜'];
  myList.forEach((element) {
    print(element);
  });

  myList.forEach((element) => print(element));
  myList.forEach((element) => {print(element)});

  List list = [4, 1, 2, 3, 4];
  var newList = list.map((value) {
    if (value > 2) {
      return value * 2;
    }
    return value;
  });
  print(newList.toList());

  var newList2 = list.map((value2) => value2 > 2 ? value2 * 2 : value2);
  print(newList2.toList());

  bool isEvenNumber(int n) {
    if (n % 2 == 0) {
      return true;
    }
    return false;
  }

  printNum(int n) {
    for (int i = 1; i <= n; i++) {
      if (isEvenNumber(i)) {
        print(i);
      }
    }
  }

  printNum(10);

  var printNums = (int n) {
    print(n + 2);
  };
  printNums(3);

  ((String n) {
    print('我是自执行方法' + n);
  })('123');

  var sum = 1;
  fn(int n) {
    sum *= n;
    if (n == 1) {
      return;
    }
    fn(n - 1);
  }

  fn(5);
  print(sum);

  var sumplus = 0;
  sums(int n) {
    sumplus += n;
    if (n == 1) {
      return;
    }
    sums(n - 1);
  }

  sums(100);
  print(sumplus);

  fns() {
    var a = 123;
    return () {
      a++;
      print(a);
    };
  }

  var b = fns();
  b();
  b();
  b();
}
