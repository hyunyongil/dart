void main() {
  // var a = 10;
  // a++;
  // print(a);

  // var a1 = 10;
  // var b1 = a1--;
  // print(a1);
  // print(b1);
  // int sum = 0;
  // for (int i = 1; i <= 100; i++) {
  //   sum += i;
  // }
  // print(sum);

  // List l1 = ['张三', '李四', '王五'];
  // for (var i = 0; i < l1.length; i++) {
  //   print(l1[i]);
  // }

  List list = [
    {
      "cate": "国内",
      "news": [
        {"title": "国内新闻111"},
        {"title": "国内新闻222"},
        {"title": "国内新闻333"}
      ]
    },
    {
      "cate": "国际",
      "news": [
        {"title": "国际新闻111"},
        {"title": "国际新闻222"},
        {"title": "国际新闻333"},
        {"title": "国际新闻444"}
      ]
    },
  ];
  for (var i = 0; i < list.length; i++) {
    print(list[i]['cate']);
    print('----------------');
    for (var j = 0; j < list[i]['news'].length; j++) {
      print('    ' + list[i]['news'][j]['title']);
    }
  }

  int wi = 1;
  int wsum = 0;
  while (wi <= 100) {
    wsum += wi;
    wi++;
  }
  print(wsum);

  for (int i = 1; i <= 10; i++) {
    if (i == 4) {
      //continue;
      break;
    }
    print(i);
  }
}
