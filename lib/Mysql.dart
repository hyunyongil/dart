import 'Db.dart';

class Mysql implements Db {
  @override
  add(String data) {
    print('Mysql add' + data);
  }

  @override
  delete() {
    print('Mysql delete');
  }

  @override
  save() {
    print('Mysql save');
  }

  remove() {
    print('remove被调用');
  }

  @override
  String uri = '';
  Mysql(this.uri);
}
