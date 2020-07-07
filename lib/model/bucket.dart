import '../config/region.dart';
import 'assets.dart';

class Bucket {
  Region region; // 区域
  BigInt fileSizeCount; // 文件尺寸
  BigInt fileNumberCount; // 文件数量

  // 获取空间底下的对象列表
  List<Assets> getAssetsList() {
    return [];
  }

  // 获取指定的对象
  Assets getAssetsByName() {
    return null;
  }

  updateAssets() {}
}
