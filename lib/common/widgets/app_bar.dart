import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotify_clone/common/helper/is_dark_mode.dart';
import 'package:spotify_clone/presentation/pages/register_pages.dart';

class BasicAppBar extends StatelessWidget {
  const BasicAppBar({super.key, required this.title});
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: title ?? Text(''),
      leading: IconButton(
          onPressed: () {},
          icon: Container(
            height: 50.h,
            width: 50.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.IsDarkMode
                  ? Colors.white.withOpacity(0.03)
                  : Colors.black.withOpacity(0.03),
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: context.IsDarkMode ? Colors.white : Colors.black,
            ),
          )),
    );
  }
}
