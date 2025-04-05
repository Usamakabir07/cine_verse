import 'package:cine_verse/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../themes/app_styles.dart';
import '../../../../../utils/dimensions.dart';

class MyListPageBody extends HookWidget {
  const MyListPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(padding10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: height30),
            const CircleAvatar(
              radius: radius60,
              backgroundColor: AppColors.blueGreyDark,
            ),
            const SizedBox(height: height10),
            Text(
              "Sophia Hughes",
              style: AppStyles.titleSmallBold,
            ),
            const SizedBox(height: height8),
            Text(
              "Joined in 2018",
              style: AppStyles.bodyMedium.copyWith(
                color: AppColors.blueGrey,
              ),
            ),
            Text(
              "San Francisco",
              style: AppStyles.bodyMedium.copyWith(
                color: AppColors.blueGrey,
              ),
            ),
            const SizedBox(height: height30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Watched Movies",
                  style: AppStyles.labelLarge.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  "45",
                  style: AppStyles.labelLarge.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: height30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Favorite Movies",
                  style: AppStyles.labelLarge.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  "12",
                  style: AppStyles.labelLarge.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: height30),
            Text(
              "Device Information",
              style: AppStyles.titleSmallBold,
            ),
            const SizedBox(height: height30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Device Model",
                  style: AppStyles.labelLarge.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  "Google Pixel 4",
                  style: AppStyles.labelLarge.copyWith(
                    color: AppColors.blueGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: height30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "OS Version",
                  style: AppStyles.labelLarge.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  "Android 13.0",
                  style: AppStyles.labelLarge.copyWith(
                    color: AppColors.blueGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: height30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Available Storage Space",
                  style: AppStyles.labelLarge.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  "8GB",
                  style: AppStyles.labelLarge.copyWith(
                    color: AppColors.blueGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: height30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Battery Level",
                  style: AppStyles.labelLarge.copyWith(
                    color: AppColors.white,
                  ),
                ),
                Text(
                  "100%",
                  style: AppStyles.labelLarge.copyWith(
                    color: AppColors.blueGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: height30),
          ],
        ),
      ),
    );
  }
}
