import 'package:cine_verse/app/common_widgets/app_scaffold.dart';
import 'package:cine_verse/app/pages/dashboard_page/sub_pages/home_page/widget/home_page_body.dart';
import 'package:cine_verse/app/themes/app_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      showAppBar: true,
      canGoBack: false,
      title: Text(
        'Home',
        style: AppStyles.titleSmallBold,
      ),
      body: const HomePageBody(),
    );
  }
}
