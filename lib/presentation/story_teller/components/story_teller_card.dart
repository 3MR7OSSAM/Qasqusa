import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:storys_app/%20data/utils/color_manger.dart';
import 'package:storys_app/presentation/home/components/story_image_widget.dart';

class StoryTellerCard extends StatelessWidget {
  const StoryTellerCard({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      color: ColorManger.white,
      surfaceTintColor: ColorManger.white,
      child: SizedBox(
        width: double.infinity,
        height: 270.h,
        child:  Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.close,color: ColorManger.primary1,))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 200,
                    height: 200,
                    child: StoryImageWidget(index: index,))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
