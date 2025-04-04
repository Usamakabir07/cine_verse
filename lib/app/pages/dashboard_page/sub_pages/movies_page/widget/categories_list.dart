import 'package:cine_verse/app/themes/app_colors.dart';
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
      'const TvShowsPage()',
      'const MoviesPage()',
      'const MyListPage()',
    ];
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(padding4),
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(padding4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius16),
              color: AppColors.blueGrey,
            ),
            child: Text(categories[index]),
          );
        },
      ),
    );
  }
}
