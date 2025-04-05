import 'package:cine_verse/app/common_widgets/app_bottom_navigation_bar.dart';
import 'package:cine_verse/app/pages/dashboard_page/sub_pages/movies_page/movies_page.dart';
import 'package:cine_verse/app/pages/dashboard_page/sub_pages/tv_shows_page/tv_shows_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../sub_pages/home_page/home_page.dart';
import '../sub_pages/my_list_page/my_list_page.dart';

class DashboardPageBody extends HookWidget {
  const DashboardPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> selectedIndex = useState(3);
    List<Widget> pages = [
      const HomePage(),
      const TvShowsPage(),
      const MoviesPage(),
      const MyListPage(),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: pages[selectedIndex.value],
        ),
        AppBottomNavigationBar(selectedIndex: selectedIndex),
      ],
    );
  }
}
