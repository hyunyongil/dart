abstract class Db {
  //当做借口 接口:约定，规范
  String uri = ''; //数据库链接地址

  add(String data); //抽象方法
  save(); //抽象方法
  delete(); //抽象方法
}
