import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storys_app/%20data/models/stories.dart';
import 'package:storys_app/%20data/utils/color_manger.dart';
import 'package:storys_app/presentation/resources/text_styles.dart';
import 'package:storys_app/presentation/story_teller/story_teller_view.dart';

class AllStoriesWidget extends StatelessWidget {
  const AllStoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SizedBox(
          height: 350.h,
          child: ListView.builder(
            itemCount: 10, // Replace with your actual item count
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 8.h),
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
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StoryTellerView(storyIndex: index)));

                  },
                  child: ListTile(
                    leading: const Icon(Icons.book, color: ColorManger.white),
                    title: Text(
                      stories[index].title,
                      style: TextStyles.textStyle16,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
