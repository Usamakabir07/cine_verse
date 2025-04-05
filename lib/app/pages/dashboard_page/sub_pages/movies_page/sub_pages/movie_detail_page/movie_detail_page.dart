import "package:auto_route/annotations.dart";
import "package:cine_verse/app/pages/dashboard_page/sub_pages/movies_page/sub_pages/movie_detail_page/widget/movie_detail_page_body.dart";
import "package:flutter/material.dart";

import "../../../../../../common_widgets/app_scaffold.dart";
import "../../../../../../themes/app_styles.dart";

@RoutePage()
class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({super.key, required this.movieName});
  final ValueNotifier<String> movieName;

  @override
  Widget build(BuildContext context) => AppScaffold(
        canGoBack: true,
        showAppBar: true,
        title: Text(
          movieName.value,
          style: AppStyles.titleSmallBold,
        ),
        body: const MovieDetailPageBody(),
      );
}
