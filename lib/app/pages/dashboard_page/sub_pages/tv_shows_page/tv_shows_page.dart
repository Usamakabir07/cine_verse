import 'package:cine_verse/app/common_widgets/app_scaffold.dart';
import 'package:cine_verse/app/pages/dashboard_page/sub_pages/tv_shows_page/widget/tv_shows_page_body.dart';
import 'package:cine_verse/app/themes/app_styles.dart';
import 'package:flutter/material.dart';

class TvShowsPage extends StatelessWidget {
  const TvShowsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      showAppBar: true,
      canGoBack: false,
      title: Text(
        'TV Shows',
        style: AppStyles.titleSmallBold,
      ),
      body: const TvShowsPageBody(),
    );
  }
}
