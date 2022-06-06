void printInfo() {
  print('我是一个自动以方法');
}

int sumNum(int num) {
  var sum = 0;
  for (int i = 1; i <= num; i++) {
    sum += i;
  }
  return sum;
}

String printUserInfo(String username, {int age = 0, String sex = '男'}) {
  if (age != 0) {
    return '姓名： $username --- 年龄：$age --- 性别：$sex';
  } else {
    return '姓名： $username --- 年龄：保密 --- 性别：$sex';
  }
}

List getList() {
  return ['111', '222', '333'];
}

fn1() {
  print('fn1');
}

fn2(fn) {
  fn();
}

// var fn = () {
//   print('我是一个匿名方法');
// };

void main() {
  print('调用系统内置的方法');
  printInfo();

  var n = sumNum(100);
  print(n);

  var str = printUserInfo('taixian', age: 20, sex: '女');
  print(str);

  var list = getList();
  print(list);

  void xxx() {
    aaa() {
      print('aaa');
    }

    aaa();
  }

  xxx();

  fn2(fn1);
}
