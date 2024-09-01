import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storys_app/%20data/models/stories.dart';
import 'package:storys_app/%20data/models/story_model.dart';
import 'package:storys_app/presentation/resources/text_styles.dart';
import 'package:storys_app/presentation/story_teller/story_teller_view.dart';

class StoryImageWidget extends StatelessWidget {
  const StoryImageWidget({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    final List<StoryModel> newStories= stories.sublist(0,10);
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>StoryTellerView(storyIndex: index)));

      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF9BE15D),
                // Adjust the colors based on your gradient
                Color(0xFF00E3AE),
              ],
            ),
          ),
          child: Stack(
            children: [
              Image.asset(
                'Assets/images/new_background.png',
                color: Colors.black38,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    newStories[index].title,
                    style: TextStyles.textStyle16
                        .copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
