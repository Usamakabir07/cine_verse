import 'package:cine_verse/app/common_widgets/app_elevated_button.dart';
import 'package:cine_verse/app/common_widgets/app_progress_bar.dart';
import 'package:cine_verse/app/common_widgets/app_tab_bar.dart';
import 'package:cine_verse/app/pages/dashboard_page/sub_pages/home_page/widget/movies_slider.dart';
import 'package:cine_verse/app/themes/app_colors.dart';
import 'package:cine_verse/app/utils/dimensions.dart';
import 'package:cine_verse/app/utils/paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../../../themes/app_styles.dart';
import 'cast_slider.dart';

class MovieDetailPageBody extends HookWidget {
  const MovieDetailPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> selectedIndex = useState(-1);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            color: AppColors.blueGreyDark,
          ),
          const SizedBox(height: height10),
          Padding(
            padding: const EdgeInsets.all(padding10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The Batman",
                  style: AppStyles.titleSmallBold,
                ),
                const SizedBox(height: height10),
                Text(
                  "2022 · 2h 56m · R",
                  style: AppStyles.bodyMedium.copyWith(color: AppColors.white),
                ),
                const SizedBox(height: height30),
                AppTabBar(
                  selectedIndex: selectedIndex,
                  values: const ['Action', 'Adventure', 'Fantasy'],
                ),
                const SizedBox(height: height40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: flex2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "8.4",
                            style: AppStyles.headlineLarge,
                          ),
                          const SizedBox(height: height2),
                          const Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: AppColors.gamboge,
                              ),
                              Icon(
                                Icons.star_rounded,
                                color: AppColors.gamboge,
                              ),
                              Icon(
                                Icons.star_rounded,
                                color: AppColors.gamboge,
                              ),
                              Icon(
                                Icons.star_rounded,
                                color: AppColors.gamboge,
                              ),
                              Icon(
                                Icons.star_half_rounded,
                                color: AppColors.gamboge,
                              ),
                            ],
                          ),
                          const SizedBox(height: height10),
                          Text(
                            "13k Reviews",
                            style: AppStyles.bodyMedium
                                .copyWith(color: AppColors.white),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: flex3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "5  ",
                                style: AppStyles.bodyMedium
                                    .copyWith(color: AppColors.white),
                              ),
                              const Expanded(
                                child: AppProgressBar(
                                  maxLimit: 100,
                                  currentStep: 60,
                                ),
                              ),
                              Text(
                                "  60%",
                                style: AppStyles.bodyMedium.copyWith(
                                  color: AppColors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: height10),
                          Row(
                            children: [
                              Text(
                                "4  ",
                                style: AppStyles.bodyMedium
                                    .copyWith(color: AppColors.white),
                              ),
                              const Expanded(
                                child: AppProgressBar(
                                  maxLimit: 100,
                                  currentStep: 20,
                                ),
                              ),
                              Text(
                                "  20%",
                                style: AppStyles.bodyMedium.copyWith(
                                  color: AppColors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: height10),
                          Row(
                            children: [
                              Text(
                                "3  ",
                                style: AppStyles.bodyMedium
                                    .copyWith(color: AppColors.white),
                              ),
                              const Expanded(
                                child: AppProgressBar(
                                  maxLimit: 100,
                                  currentStep: 10,
                                ),
                              ),
                              Text(
                                "  10%",
                                style: AppStyles.bodyMedium.copyWith(
                                  color: AppColors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: height10),
                          Row(
                            children: [
                              Text(
                                "2  ",
                                style: AppStyles.bodyMedium
                                    .copyWith(color: AppColors.white),
                              ),
                              const Expanded(
                                child: AppProgressBar(
                                  maxLimit: 100,
                                  currentStep: 5,
                                ),
                              ),
                              Text(
                                "  5%",
                                style: AppStyles.bodyMedium.copyWith(
                                  color: AppColors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: height10),
                          Row(
                            children: [
                              Text(
                                "1  ",
                                style: AppStyles.bodyMedium
                                    .copyWith(color: AppColors.white),
                              ),
                              const Expanded(
                                child: AppProgressBar(
                                  maxLimit: 100,
                                  currentStep: 5,
                                ),
                              ),
                              Text(
                                "  5%",
                                style: AppStyles.bodyMedium.copyWith(
                                  color: AppColors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: height10),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: height30),
                Text(
                  "When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement. As he delves into the mystery, he uncovers a trail of secrets that lead to the billionaire playboy Thomas Wayne.",
                  style: AppStyles.bodyMedium.copyWith(color: AppColors.white),
                ),
                const SizedBox(height: height30),
                Text(
                  "Cast & Crew",
                  style: AppStyles.titleSmallBold,
                ),
                const SizedBox(height: height20),
                const CastSlider(),
                const SizedBox(height: height20),
                AppElevatedButton(
                  text: 'Add to Watchlist',
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.blueGreyDark,
                  prefixIcon: savedIcon,
                  prefixIconColor: AppColors.white,
                ),
                const SizedBox(height: height30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
