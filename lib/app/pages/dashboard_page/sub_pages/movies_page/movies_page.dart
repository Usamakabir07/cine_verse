import 'package:cine_verse/app/common_widgets/app_scaffold.dart';
import 'package:cine_verse/app/pages/dashboard_page/sub_pages/movies_page/widget/movies_page_body.dart';
import 'package:cine_verse/app/themes/app_styles.dart';
import 'package:flutter/material.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      showAppBar: true,
      canGoBack: false,
      title: Text(
        'Movies',
        style: AppStyles.titleSmallBold,
      ),
      body: const MoviesPageBody(),
    );
  }
}
