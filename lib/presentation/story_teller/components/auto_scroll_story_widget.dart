import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:storys_app/presentation/resources/text_styles.dart';

class AutoScrollStoryWidget extends StatefulWidget {
  final String story;
  final bool isPlaying;
  final VoidCallback onPlayPauseToggle;

  const AutoScrollStoryWidget({
    required this.story,
    required this.isPlaying,
    required this.onPlayPauseToggle,
    super.key,
  });

  @override
  _AutoScrollStoryWidgetState createState() => _AutoScrollStoryWidgetState();
}

class _AutoScrollStoryWidgetState extends State<AutoScrollStoryWidget> {
  final ScrollController _scrollController = ScrollController();
  late List<String> _storyLines;
  Timer? _scrollTimer;
  double _scrollPosition = 0.0;
  late FlutterTts _flutterTts;

  @override
  void initState() {
    super.initState();
    _storyLines = widget.story.split('\n\n');
    _flutterTts = FlutterTts();
    _flutterTts.setLanguage("ar");
    _flutterTts.setPitch(1.0);
    _flutterTts.setSpeechRate(0.4);
  }

  @override
  void didUpdateWidget(covariant AutoScrollStoryWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isPlaying != oldWidget.isPlaying) {
      if (widget.isPlaying) {
        _startAutoScrollAndSpeech();
      } else {
        _stopAutoScrollAndSpeech();
      }
    }
  }

  @override
  void dispose() {
    _scrollTimer?.cancel();
    _scrollController.dispose();
    _flutterTts.stop();
    super.dispose();
  }

  void _startAutoScrollAndSpeech() {

    _scrollController.jumpTo(0); // Reset scroll position to start
    _scrollPosition = 0.0; // Reset the position

    // Start auto-scrolling
    _scrollTimer = Timer.periodic(const Duration(milliseconds: 180), (timer) {
      if (_scrollController.hasClients) {
        _scrollPosition += 1.0; // Small increment for smooth scrolling
        _scrollController.animateTo(
          _scrollPosition,
          duration: const Duration(milliseconds: 180),
          curve: Curves.linear,
        );

        if (_scrollPosition >= _scrollController.position.maxScrollExtent) {
          _scrollTimer?.cancel();
        }
      }
    });

    // Start text-to-speech
    _flutterTts.speak(widget.story);
  }

  void _stopAutoScrollAndSpeech() {
    _scrollTimer?.cancel();
    _flutterTts.stop();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _storyLines.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            _storyLines[index],
            style: TextStyles.textStyle20.copyWith(color: Colors.black),
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
        );
      },
    );
  }
}
