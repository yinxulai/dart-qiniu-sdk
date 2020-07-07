enum Region {
  z0,
  z1,
  z2,
  na0,
  as0,
}

class RegionHost {
  String cdn;
  String source;
  RegionHost(this.cdn, this.source);
}

Map<Region, RegionHost> defaultRegionHostMap = Map.fromEntries([
  MapEntry(Region.z0, RegionHost('upload.qiniup.com', 'up.qiniup.com')),
  MapEntry(Region.z1, RegionHost('up-z1.qiniup.com', 'upload-z1.qiniup.com')),
  MapEntry(Region.z2, RegionHost('up-z2.qiniup.com', 'upload-z2.qiniup.com')),
  MapEntry(Region.na0, RegionHost('up-na0.qiniup.com', 'upload-na0.qiniup.com')),
  MapEntry(Region.as0, RegionHost('up-as0.qiniup.com', 'upload-as0.qiniup.com')),
]);
