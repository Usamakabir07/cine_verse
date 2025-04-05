import 'package:cine_verse/app/themes/app_colors.dart';
import 'package:cine_verse/app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class AppProgressBar extends StatelessWidget {
  const AppProgressBar({
    super.key,
    required this.maxLimit,
    required this.currentStep,
  });
  final int maxLimit;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    return LinearProgressBar(
      maxSteps: maxLimit,
      progressType: LinearProgressBar.progressTypeLinear,
      currentStep: currentStep,
      progressColor: AppColors.gamboge,
      backgroundColor: AppColors.blueGreyDark,
      borderRadius: BorderRadius.circular(borderRadius10),
      minHeight: height8,
    );
  }
}
