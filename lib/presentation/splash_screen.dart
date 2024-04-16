import 'package:my_get_http_architecture/app/config/app_router.dart';
import 'package:my_get_http_architecture/app/extensions/build_context_ext.dart';
import 'package:my_get_http_architecture/app/services/local_storage.dart';
import 'package:my_get_http_architecture/common/resources/colors.dart';
import 'package:my_get_http_architecture/common/resources/drawables.dart';
import 'package:my_get_http_architecture/common/resources/page_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    navigator();
    super.initState();
  }

  bool update = true;

  navigator() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      update = false;
    });

    await Future.delayed(const Duration(seconds: 1));
    if (LocalStorageService.instance.isFirstTime == true) {
      globalContext!.go(PagePath.onboarding);
    } else {
      if (LocalStorageService.instance.user?.token != null) {
        globalContext!.go(PagePath.homeScreen);
      } else {
        globalContext!.go(PagePath.login);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryText,
      body: SafeArea(
        top: false,
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.primary,
          ),
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Stack(
              children: [
                SizedBox(
                  height: context.height,
                  width: context.width,
                ),
                Center(
                  child: AnimatedContainer(
                    curve: Curves.bounceOut,
                    transform: Matrix4.translationValues(0, update ? 0 : 0, 0),
                    height: update ? 450 : 350,
                    duration: const Duration(milliseconds: 1000),
                    child: Image.asset(
                      Assets.logo,
                      scale: 1.5,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
