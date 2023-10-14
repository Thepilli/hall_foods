import 'package:flutter/material.dart';
import 'package:hall_foods/models/cloud_storage.dart';
import 'package:hall_foods/models/files.dart';
import 'package:hall_foods/responsive.dart';
import 'package:hall_foods/shared/extensions/build_context.dart';
import 'package:hall_foods/shared/extensions/widget_extension.dart';

class MyFilesColumn extends StatelessWidget {
  const MyFilesColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyFilesHeader(),
        Responsive(
          mobile: const MyFilesGrid(),
          tablet: const MyFilesGrid(),
          desktop: MyFilesGrid(
            childAspectRatio: context.sizeWidth < 1400 ? 1.1 : 1.4,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          height: 500,
          decoration: BoxDecoration(
            color: context.background,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recent Files:',
                style: context.textTheme.titleMedium,
              ),
              SizedBox(
                width: double.infinity,
                child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'File name',
                        style: context.textTheme.bodyMedium,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Date',
                        style: context.textTheme.bodyMedium,
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Size',
                        style: context.textTheme.bodyMedium,
                      ),
                    )
                  ],
                  rows: List.generate(recentFiles.length, (index) {
                    RecentFile recentFile = recentFiles[index];
                    return DataRow(
                      cells: [
                        DataCell(
                          Row(
                            children: [
                              const Icon(Icons.file_copy).paddingHorizontal(5),
                              Text(
                                recentFile.title,
                                style: context.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        DataCell(
                          Text(
                            recentFile.date,
                            style: context.textTheme.bodySmall,
                          ),
                        ),
                        DataCell(
                          Text(
                            recentFile.size,
                            style: context.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyFilesGrid extends StatelessWidget {
  const MyFilesGrid({
    super.key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  });
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: childAspectRatio, crossAxisCount: crossAxisCount),
      itemBuilder: (context, index) {
        CloudStorage cloudStorage = cloudStorages[index];
        return Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: context.background,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: cloudStorage.color.withOpacity(.2),
                    ),
                    child: Image.asset(
                      cloudStorage.iconPath,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(Icons.more_vert),
                  )
                ],
              ),
              Text(
                cloudStorage.title,
                style: context.textTheme.bodyLarge,
              ),
              LinearProgressIndicator(value: cloudStorage.percentage / 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${cloudStorage.numOfFiels} files', style: context.textTheme.bodyMedium),
                  Text(cloudStorage.totalStorage, style: context.textTheme.bodyMedium),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class MyFilesHeader extends StatelessWidget {
  const MyFilesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Files',
          style: context.textTheme.titleMedium,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            '+ Add new',
            style: context.textTheme.labelMedium,
          ),
        )
      ],
    );
  }
}
