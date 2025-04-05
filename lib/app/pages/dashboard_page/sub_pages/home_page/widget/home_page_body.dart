import 'package:cine_verse/app/themes/app_colors.dart';
import 'package:cine_verse/app/themes/app_styles.dart';
import 'package:cine_verse/app/utils/dimensions.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../common_widgets/app_tab_bar.dart';
import 'movies_slider.dart';

class HomePageBody extends HookWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> selectedCategoryIndex = useState(0);
    return Padding(
      padding: const EdgeInsets.all(padding10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: height10),
            AppTabBar(
              selectedIndex: selectedCategoryIndex,
              values: const [
                'Top Rated',
                'Popular',
                'Now Playing',
                'Upcoming',
              ],
            ),
            const SizedBox(height: height30),
            Row(
              children: [
                Text(
                  "Top Rated",
                  style: AppStyles.titleSmallBold,
                ),
              ],
            ),
            const SizedBox(height: height20),
            const MoviesSlider(),
            const SizedBox(height: height20),
            const Divider(
              thickness: appBarDivider,
              color: AppColors.blueGrey,
            ),
            const SizedBox(height: height20),
            Row(
              children: [
                Text(
                  "Popular",
                  style: AppStyles.titleSmallBold,
                ),
              ],
            ),
            const SizedBox(height: height20),
            const MoviesSlider(),
            const SizedBox(height: height20),
            const SizedBox(height: height20),
            const Divider(
              thickness: appBarDivider,
              color: AppColors.blueGrey,
            ),
            const SizedBox(height: height20),
            Row(
              children: [
                Text(
                  "Now Playing",
                  style: AppStyles.titleSmallBold,
                ),
              ],
            ),
            const SizedBox(height: height20),
            const MoviesSlider(),
            const SizedBox(height: height20),
            const SizedBox(height: height20),
            const Divider(
              thickness: appBarDivider,
              color: AppColors.blueGrey,
            ),
            const SizedBox(height: height20),
            Row(
              children: [
                Text(
                  "Upcoming",
                  style: AppStyles.titleSmallBold,
                ),
              ],
            ),
            const SizedBox(height: height20),
            const MoviesSlider(),
            const SizedBox(height: height20),
          ],
        ),
      ),
    );
  }
}
