import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../router/app_router.dart';
import '../../../../../themes/app_colors.dart';
import '../../../../../utils/dimensions.dart';

class MoviesGridView extends HookWidget {
  const MoviesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> movieName = useState('');
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            movieName.value = 'movie Name ${index + 1}';
            context.router.push(
              MovieDetailRoute(movieName: movieName),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(padding8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius20),
                    color: AppColors.blueGreyDark,
                  ),
                ),
                const SizedBox(height: height8),
                Text("movie Name ${index + 1}")
              ],
            ),
          ),
        );
      },
    );
  }
}
