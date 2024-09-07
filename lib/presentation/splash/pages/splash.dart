import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/core/configs/assets/assets_vector.dart';
import 'package:spotify_clone/presentation/intro/pages/get_started.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Call reDirect after the widget is mounted
    WidgetsBinding.instance.addPostFrameCallback((_) => reDirect(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AppVecTors.logo),
      ),
    );
  }
}

Future<void> reDirect(BuildContext context) async {
  await Future.delayed(const Duration(seconds: 2));

  // Check if the widget is still mounted before navigating
  if (!context.mounted) return;

  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) => const GetStartedPage(),
    ),
  );
}
