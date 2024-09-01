import 'package:flutter/material.dart';
import 'package:storys_app/%20data/utils/color_manger.dart';
import 'package:storys_app/presentation/story_teller/components/story_teller_body.dart';

class StoryTellerView extends StatefulWidget {
  const StoryTellerView({super.key, required this.storyIndex});
  final int storyIndex;
  @override
  _StoryTellerViewState createState() => _StoryTellerViewState();
}

class _StoryTellerViewState extends State<StoryTellerView> {
  bool _isPlaying = false;

  void _togglePlayPause() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StoryTellerBody(
          isPlaying: _isPlaying,
          onPlayPauseToggle: _togglePlayPause, storyIndex: widget.storyIndex,
        ),
        floatingActionButton: FloatingActionButton(
          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: ColorManger.primary1,
          onPressed: _togglePlayPause,
          child: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
