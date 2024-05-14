//<<<<<<< HEAD
//=======
// ignore_for_file: unused_local_variable

//>>>>>>> 37f027da83290fa8d5ff512c910885cd341c681f
import 'package:applied_nurse/domain/providers/router_provider.dart';
import 'package:applied_nurse/domain/providers/theme_provider.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(routerProvider);
    final themeManager = ref.watch(themeProvider);

    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routeInformationParser: goRouter.routeInformationParser,
          routerDelegate: goRouter.routerDelegate,
          routeInformationProvider: goRouter.routeInformationProvider,

          theme: AppThemes.lightTheme,
          // darkTheme: AppThemes.darkTheme,
          // themeMode: themeManager.currentTheme,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
