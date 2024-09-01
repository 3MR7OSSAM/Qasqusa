import 'package:flutter/material.dart';
import 'package:storys_app/%20data/utils/color_manger.dart';
import 'package:storys_app/presentation/home/components/all_stories_widget.dart';
import 'package:storys_app/presentation/home/components/home_app_bar.dart';
import 'package:storys_app/presentation/home/components/new_stories_widget.dart';
import 'package:storys_app/%20data/utils/strings_manger.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:storys_app/presentation/resources/text_styles.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late InfiniteScrollController _carouselController;

  @override
  void initState() {
    super.initState();
    _carouselController = InfiniteScrollController();
  }

  @override
  void dispose() {
    _carouselController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HomeAppBar(),
              const Center(
                child: SizedBox(
                  width: 250,
                  child: Divider(
                    color: ColorManger.primary1,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  StringsManger.homeNewStories,
                  style: TextStyles.textStyle20,
                  textDirection: TextDirection.rtl,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    NewStoriesListView(carouselController: _carouselController),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios,
                          color: ColorManger.primary1),
                      onPressed: () {
                        _carouselController.nextItem();
                      },
                    ),
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Row(
                  children: [

                    const Spacer(),
                    Text(
                      StringsManger.homeAllStories,
                      style: TextStyles.textStyle20.copyWith(color: Colors.black),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
              const AllStoriesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
