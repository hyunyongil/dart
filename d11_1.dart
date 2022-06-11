import './lib/Mysql.dart';
import './lib/MsSql.dart';

main() {
  Mysql mysql = new Mysql('aaaaaa');
  mysql.add('1234');
  print(mysql.uri);
  mysql.remove();

  MsSql mssql = new MsSql();
  mssql.uri = '127.0.0.1';
  mssql.add('增加的数据');
  print(mssql.uri);
}
