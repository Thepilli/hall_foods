import 'package:flutter/material.dart';
import 'package:hall_foods/app/app_colors.dart';

class CloudStorage {
  final String iconPath, title, totalStorage;
  final int numOfFiels, percentage;
  final Color color;

  CloudStorage(
      {required this.iconPath,
      required this.title,
      required this.totalStorage,
      required this.numOfFiels,
      required this.percentage,
      required this.color});
}

List<CloudStorage> cloudStorages = [
  CloudStorage(
    title: "Documents",
    numOfFiels: 1328,
    iconPath: "assets/icons/documents.png",
    totalStorage: "1.9GB",
    color: AppColors.primaryDark,
    percentage: 35,
  ),
  CloudStorage(
    title: "Google Drive",
    numOfFiels: 1328,
    iconPath: "assets/icons/googledrive.png",
    totalStorage: "2.9GB",
    color: const Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorage(
    title: "One Drive",
    numOfFiels: 1328,
    iconPath: "assets/icons/onedrive.png",
    totalStorage: "1GB",
    color: const Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorage(
    title: "Documents",
    numOfFiels: 5328,
    iconPath: "assets/icons/dropbox.png",
    totalStorage: "7.3GB",
    color: const Color(0xFF007EE5),
    percentage: 78,
  ),
];
