import 'package:flutter/material.dart';
import 'package:hall_foods/models/storage_detail.dart';
import 'package:hall_foods/pages//dashboard_page/components/chart.dart';
import 'package:hall_foods/shared/extensions/build_context.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
    required this.storageDetails,
  });

  final List<StorageDetail> storageDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Storage details',
          style: context.textTheme.bodyLarge,
        ),
        const Chart(),
        Expanded(
          child: ListView.builder(
            itemCount: storageDetails.length,
            itemBuilder: (BuildContext context, int index) {
              StorageDetail storageDetail = storageDetails[index];
              return Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: context.primary,
                  ),
                ),
                child: ListTile(
                  leading: Image.asset(
                    storageDetail.storageIconUrl,
                    height: 30,
                    width: 30,
                  ),
                  title: Text(
                    storageDetail.storageName,
                    style: context.textTheme.bodyMedium,
                  ),
                  subtitle: Text(
                    '${storageDetail.storageFileCount} files',
                    style: context.textTheme.bodyMedium,
                  ),
                  trailing: Text(
                    '${storageDetail.storageSize}GB',
                    style: context.textTheme.bodyMedium,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
