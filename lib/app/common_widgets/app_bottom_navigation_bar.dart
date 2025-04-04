import 'package:cine_verse/app/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../themes/app_colors.dart';
import '../utils/dimensions.dart';
import '../utils/paths.dart';

class AppBottomNavigationBar extends HookWidget {
  const AppBottomNavigationBar({super.key, required this.selectedIndex});
  final ValueNotifier<int> selectedIndex;

  @override
  Widget build(BuildContext context) {
    const List<_NavItem> navItems = [
      _NavItem(icon: homeIcon, label: "Home"),
      _NavItem(icon: tvShowsIcon, label: "TV Shows"),
      _NavItem(icon: moviesIcon, label: "Movies"),
      _NavItem(icon: saveIcon, label: "My List"),
    ];

    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth / navItems.length;

    return Container(
      height: height66,
      decoration: const BoxDecoration(
        color: AppColors.blueGreyDark,
      ),
      padding: const EdgeInsets.symmetric(vertical: padding8),
      child: Row(
        children: navItems.asMap().entries.map((entry) {
          final index = entry.key;
          final item = entry.value;
          final isSelected = selectedIndex.value == index;
          return GestureDetector(
            onTap: () => selectedIndex.value = index,
            child: SizedBox(
              width: itemWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    item.icon,
                    color: isSelected ? AppColors.gamboge : AppColors.blueGrey,
                  ),
                  const SizedBox(height: height0),
                  Text(
                    item.label,
                    style: AppStyles.labelSmall.copyWith(
                      color:
                          isSelected ? AppColors.gamboge : AppColors.blueGrey,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _NavItem {
  final String icon;
  final String label;
  const _NavItem({required this.icon, required this.label});
}
