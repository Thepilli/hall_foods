import 'package:hall_foods/app/app_constants.dart';

class StorageDetail {
  final String storageName;
  final double storageFileCount;
  final String storageIconUrl;
  final double storageSize;

  StorageDetail({
    required this.storageName,
    required this.storageFileCount,
    required this.storageIconUrl,
    required this.storageSize,
  });
}

List<StorageDetail> storageDetailList = [
  StorageDetail(storageName: 'Documents', storageFileCount: 1232, storageIconUrl: IconPath.documents, storageSize: 1.3),
  StorageDetail(storageName: 'Media', storageFileCount: 1232, storageIconUrl: IconPath.media, storageSize: 15.3),
  StorageDetail(storageName: 'Other files', storageFileCount: 1232, storageIconUrl: IconPath.files, storageSize: 0.5),
  StorageDetail(storageName: 'Unknown', storageFileCount: 1232, storageIconUrl: IconPath.unknown, storageSize: 1.9),
];
