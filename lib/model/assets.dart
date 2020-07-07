import 'dart:html';

import 'dart:typed_data';

class Assets {
  int size; // 尺寸
  bool syncd; // 同步的
  String name; // 名称
  String type; // 类型

  Assets();
  Assets.fromFile(File file);
  Assets.fromBlob(Blob blob);
  Assets.formUint8List(Uint8List uint8list);

  move() {}
  copy() {}
  rename() {}
  delete() {}
}
