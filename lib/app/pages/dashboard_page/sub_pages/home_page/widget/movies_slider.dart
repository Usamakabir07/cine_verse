import 'package:cine_verse/app/pages/dashboard_page/sub_pages/home_page/widget/movie_widget.dart';
import 'package:cine_verse/app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class MoviesSlider extends StatelessWidget {
  const MoviesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: height280,
      child: ListView.builder(
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return MovieWidget(
            index: index,
            movieName: " Movie Filming with the index ${index + 1}",
          );
        },
      ),
    );
  }
}
