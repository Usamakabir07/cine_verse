import 'package:flutter/material.dart';

import '../../../../../themes/app_colors.dart';
import '../../../../../utils/dimensions.dart';

class MovieWidget extends StatelessWidget {
  const MovieWidget({
    super.key,
    required this.index,
    required this.movieName,
  });
  final int index;
  final String movieName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width160,
      height: height250,
      margin: EdgeInsets.only(left: index == 0 ? padding0 : padding12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius20),
              color: AppColors.blueGreyDark,
            ),
          ),
          const SizedBox(height: height8),
          Text(movieName)
        ],
      ),
    );
  }
}
