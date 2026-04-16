import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friendzy_ui_app/Route/app_route.dart';
import 'package:friendzy_ui_app/firebase_options.dart';
import 'package:friendzy_ui_app/View/screens/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (_, child) {
        return MaterialApp.router(
          theme: ThemeData(fontFamily: 'Hellix'),
          debugShowCheckedModeBanner: false,
          routerConfig: AppRoutes().router,
        );
      },
      child: WelcomeScreen(),
    );
  }
}
