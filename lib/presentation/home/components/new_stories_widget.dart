import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:storys_app/%20data/models/stories.dart';
import 'package:storys_app/%20data/models/story_model.dart';
import 'package:storys_app/presentation/home/components/story_image_widget.dart';

class NewStoriesListView extends StatelessWidget {
  const NewStoriesListView({
    super.key,
    required InfiniteScrollController carouselController,
  }) : _carouselController = carouselController;

  final InfiniteScrollController _carouselController;

  @override
  Widget build(BuildContext context) {
    final List<StoryModel> newStories= stories.sublist(0,10);
    return Expanded(
      child: SizedBox(
        height: 150.h,
        child: InfiniteCarousel.builder(
          itemCount: newStories.length,
          itemExtent: 150.w,
          loop: true,
          controller: _carouselController,
          itemBuilder: (context, index, realIndex) {
            // Ensure realIndex is within bounds
            final validIndex =
                (realIndex % newStories.length + newStories.length) %
                    newStories.length;
            return StoryImageWidget(index: validIndex,);
          },
        ),
      ),
    );
  }
}



