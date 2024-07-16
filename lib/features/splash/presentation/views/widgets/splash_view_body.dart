import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/assets.dart';
import 'package:books_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();

}
class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }
  void navigateToHome(){
    Future.delayed(Duration(seconds: 4),(){
     GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(image:AssetImage(AssetsData.logo)),
          SlidingText(slidingAnimation: slidingAnimation)

        ],
      ),
    );
  }
  void initSlidingAnimation() {
    animationController=AnimationController(vsync: this,duration: Duration(seconds:2));
    slidingAnimation = Tween<Offset>(begin: Offset(0,4),end: Offset.zero).animate(animationController);
    animationController.forward();
  }
}
