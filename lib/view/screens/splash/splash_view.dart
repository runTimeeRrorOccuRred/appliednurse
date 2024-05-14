import 'dart:async';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      loginRoute();
    });
  }

  void loginRoute() {
    context.pushReplacementNamed(AppRoute.login.name);
  }

  void dashboardRoute() {
    context.pushReplacementNamed(AppRoute.dashboard.name);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splash-screen-bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //   // Image.asset('assets/images/applied_nurse_logo.png'),
          //   // Image.asset('assets/images/applied_nurse.png')
          // ],),
        ),
      ),
    );
  }
}
