import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../router/app_router.dart';
import '../../../../../themes/app_colors.dart';
import '../../../../../utils/dimensions.dart';

class MovieWidget extends HookWidget {
  const MovieWidget({
    super.key,
    required this.index,
    required this.movieName,
  });
  final int index;
  final String movieName;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> movieNameValue = useState('');
    return GestureDetector(
      onTap: () {
        movieNameValue.value = movieName;
        context.router.push(
          MovieDetailRoute(movieName: movieNameValue),
        );
      },
      child: Container(
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
      ),
    );
  }
}
