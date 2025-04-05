import 'package:cine_verse/app/common_widgets/app_text_field.dart';
import 'package:cine_verse/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../common_widgets/app_tab_bar.dart';
import '../../../../../themes/app_styles.dart';
import '../../../../../utils/dimensions.dart';
import 'movies_grid_view.dart';

class MoviesPageBody extends HookWidget {
  const MoviesPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = useTextEditingController();
    final ValueNotifier<int> selectedFilterIndex = useState(0);
    return Padding(
      padding: const EdgeInsets.all(padding10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: height20),
            AppTextField(
              controller: searchController,
              hintText: 'Search movies',
              showSuffixIcon: true,
              suffixIcon: const Icon(
                Icons.search_rounded,
                color: AppColors.blueGrey,
              ),
            ),
            const SizedBox(height: height30),
            Row(
              children: [
                Text(
                  "Filters",
                  style: AppStyles.titleSmallBold,
                ),
              ],
            ),
            const SizedBox(height: height16),
            AppTabBar(
              selectedIndex: selectedFilterIndex,
              values: const [
                'Rating',
                'Popularity',
                'Release Date',
                'Genre',
              ],
            ),
            const SizedBox(height: height30),
            const MoviesGridView(),
          ],
        ),
      ),
    );
  }
}
