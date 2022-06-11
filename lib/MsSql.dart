import 'Db.dart';

class MsSql implements Db {
  @override
  add(String data) {
    print('MsSql add' + data);
  }

  @override
  delete() {
    print('MsSql delete');
  }

  @override
  save() {
    print('MsSql save');
  }

  @override
  String uri = '';
}
