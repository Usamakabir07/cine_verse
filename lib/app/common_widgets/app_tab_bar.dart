import 'package:cine_verse/app/themes/app_colors.dart';
import 'package:cine_verse/app/themes/app_styles.dart';
import 'package:cine_verse/app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppTabBar extends HookWidget {
  const AppTabBar({
    super.key,
    required this.selectedIndex,
    required this.values,
  });
  final ValueNotifier<int> selectedIndex;
  final List<String> values;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height32,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: values.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => selectedIndex.value = index,
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: padding14, vertical: padding1),
              margin: const EdgeInsets.symmetric(horizontal: padding6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius12),
                color: selectedIndex.value == index
                    ? AppColors.gamboge
                    : AppColors.blueGrey.withOpacity(double016),
              ),
              alignment: Alignment.center,
              child: Text(
                values[index],
                style: AppStyles.labelMedium.copyWith(
                  color: selectedIndex.value == index
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
