import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/basic_button.dart';
import 'package:spotify_clone/common/widgets/app_bar.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/assets_vector.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 40.w),
            child: Container(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SvgPicture.asset(AppVecTors.logo),
                  SizedBox(
                    height: 56.h,
                  ),
                  _registerText(),
                  SizedBox(
                    height: 16.h,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'If you need any support ',
                      style: const TextStyle(fontSize: 12),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'click here',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.greenAccent.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  _nameTextField(context),
                  _emailTextField(context),
                  _passTextField(context),
                  SizedBox(
                    height: 24.h,
                  ),
                  BasicButton(
                      onPressed: () {},
                      titlel: 'Create Account'), // Fixed 'Creat' to 'Create'
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextField _nameTextField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Full Name',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  TextField _emailTextField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Email',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  TextField _passTextField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Password',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _registerText() {
    return const Text(
      'Register', // Fixed 'Regsiter' to 'Register'
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
