import 'region.dart';

class Config {
  Map<Region, RegionHost> regionUploadHostMap;

  Config({
    regionUploadHostMap,
  }) : this.regionUploadHostMap = regionUploadHostMap ?? defaultRegionHostMap;

  RegionHost getUploadHostByRegion(Region region) {
    if (this.regionUploadHostMap[region] != null) {
      return this.regionUploadHostMap[region];
    }

    return null;
  }
}
