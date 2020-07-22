import 'dart:html';

import 'dart:typed_data';

class Assets {
  int size; // 尺寸
  String name; // 名称
  String type; // 类型

  Assets();
  Assets.fromFile(File file);
  Assets.fromBlob(Blob blob);
  Assets.formUint8List(Uint8List uint8list);
}

class RemoteAssets extends Assets {
  delete() {}
  move(String target) {}
  copy(String target) {}
  rename(String target) {}
}
