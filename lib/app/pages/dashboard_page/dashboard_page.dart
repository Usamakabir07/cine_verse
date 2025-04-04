import "package:auto_route/annotations.dart";
import "package:cine_verse/app/pages/dashboard_page/widget/dashboard_page_body.dart";
import "package:flutter/material.dart";

import "../../common_widgets/app_scaffold.dart";

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) => const AppScaffold(
        canGoBack: false,
        showAppBar: false,
        body: DashboardPageBody(),
      );
}
