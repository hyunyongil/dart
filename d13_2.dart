// abstract class ObjectCache {
//   getByKey(String key);
//   void setByKey(String key,Object value);
// }

// abstract class StringCache {
//   getByKey(String key);
//   void setByKey(String key,String value);
// }

// abstract class Cache<T> {
//   getByKey(String key);
//   void setByKey(String key,T value);
// }

abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    print('FileCache => ${key}');
  }

  @override
  void setByKey(String key, T value) {
    print('我是文件缓存 把key=${key} value=${value}的数据写入到了文件中');
  }
}

class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    print('MemoryCache => ${key}');
  }

  @override
  void setByKey(String key, T value) {
    print('我是内存缓存 把key=${key} value=${value}的数据写入到了内存中');
  }
}

void main() {
  MemoryCache m = new MemoryCache<String>();
  m.setByKey('index', '首页数据');

  MemoryCache m2 = new MemoryCache<Map>();
  m2.setByKey('index2', {"name": "张三", "age": 20});
}
