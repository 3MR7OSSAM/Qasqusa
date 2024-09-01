import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:storys_app/%20data/models/stories.dart';
import 'package:storys_app/presentation/resources/text_styles.dart';
import 'package:storys_app/presentation/story_teller/components/auto_scroll_story_widget.dart';
import 'package:storys_app/presentation/story_teller/components/story_teller_card.dart';


class StoryTellerBody extends StatelessWidget {
  final bool isPlaying;
  final VoidCallback onPlayPauseToggle;
  final int storyIndex;
  const StoryTellerBody({
    required this.isPlaying,
    required this.onPlayPauseToggle,
    super.key, required this.storyIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StoryTellerCard(index: storyIndex,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 350.h,
            child: AutoScrollStoryWidget(
              story: stories[storyIndex].story,
              isPlaying: isPlaying,
              onPlayPauseToggle: onPlayPauseToggle,
            ),
          ),
        ),
      ],
    );
  }
}

