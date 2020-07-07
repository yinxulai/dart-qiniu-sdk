import '../config/region.dart';
import 'bucket.dart';

class Session {
  String assesKey; // ak
  String secretKey; // sk

  Session({
    this.assesKey,
    this.secretKey,
  })  : assert(assesKey != ""),
        assert(secretKey != "");

  List<Bucket> getBucketListByRegion(Region region) {
    return [];
  }

  List<Bucket> getBucketList() {
    return [];
  }

  Bucket getBucketByName() {
    return null;
  }
}
