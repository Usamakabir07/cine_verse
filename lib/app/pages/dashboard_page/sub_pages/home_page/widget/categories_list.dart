import 'package:cine_verse/app/themes/app_colors.dart';
import 'package:cine_verse/app/themes/app_styles.dart';
import 'package:cine_verse/app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CategoriesList extends HookWidget {
  const CategoriesList({super.key, required this.selectedCategoryIndex});
  final ValueNotifier<int> selectedCategoryIndex;

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'Top Rated',
      'Popular',
      'Now Playing',
      'Upcoming',
    ];
    return SizedBox(
      height: height32,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => selectedCategoryIndex.value = index,
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: padding14, vertical: padding1),
              margin: const EdgeInsets.symmetric(horizontal: padding6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius12),
                color: selectedCategoryIndex.value == index
                    ? AppColors.gamboge
                    : AppColors.blueGrey.withOpacity(double016),
              ),
              alignment: Alignment.center,
              child: Text(
                categories[index],
                style: AppStyles.labelMedium.copyWith(
                  color: selectedCategoryIndex.value == index
                      ? AppColors.blackPearl
                      : AppColors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
