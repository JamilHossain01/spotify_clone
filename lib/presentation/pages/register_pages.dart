import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/basic_button.dart';
import 'package:spotify_clone/common/helper/is_dark_mode.dart';
import 'package:spotify_clone/common/widgets/app_bar.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/assets_vector.dart';
import 'package:spotify_clone/core/configs/themes/app_colors.dart';
import 'package:spotify_clone/presentation/pages/sign_up.dart';

class RegisterPages extends StatelessWidget {
  const RegisterPages({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          BasicAppBar(
            title: Align(
              child: SvgPicture.asset(AppVecTors.topPattern),
              alignment: Alignment.topRight,
            ),
          ),
          Align(
            child: SvgPicture.asset(AppVecTors.bottomPattern),
            alignment: Alignment.bottomRight,
          ),
          Align(
            child: Image.asset(AppImages.auth_bug),
            alignment: Alignment.bottomLeft,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Container(
              height: height,
              width: width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppVecTors.logo),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      'Enjoy Listening To Music',
                      style: TextStyle(
                        fontSize: 30.sp,
                      ),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Text(
                      'Spotify is a proprietarySwedish audio',
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                    ),
                    Text(
                      'streaming and meadia services provider',
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: BasicButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SignUp()));
                          },
                          titlel: 'Regsiter',
                        )),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'signn in',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: context.IsDarkMode
                                          ? Colors.white
                                          : Colors.black),
                                )))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
