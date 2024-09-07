import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/basic_button.dart';
import 'package:spotify_clone/common/reuseable_text.dart';
import 'package:spotify_clone/common/widgets/app_bar.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/assets_vector.dart';
import 'package:spotify_clone/core/configs/themes/app_colors.dart';
import 'package:spotify_clone/presentation/choise_mode/choose_nodePage.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BasicAppBar(
            title: Align(
              child: SvgPicture.asset(AppVecTors.topPattern),
              alignment: Alignment.topRight,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBG),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
            child: Column(
              children: [
                SvgPicture.asset(AppVecTors.logo),
                Spacer(),
                ReuseableText(
                  text: 'Enjoy Listening To Music',
                  style: const TextStyle(
                      color: AppColors.lightBackround, fontSize: 35),
                ),
                SizedBox(
                  height: 28.h,
                ),
                const Text(
                  'Enjoy Listening To Music,Enjoy Listening To Music,Enjoy Listening To Music,Enjoy Listening To Music,Enjoy Listening To Music,',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(
                  height: 28.h,
                ),
                SizedBox(
                  height: 12.h,
                ),
                BasicButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext contex) =>
                                const ChooseModePage()),
                      );
                    },
                    titlel: 'Get Started')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
