import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:friendzy_ui_app/firebase_options.dart';
import 'package:friendzy_ui_app/screens/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
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
        return MaterialApp(
          theme: ThemeData(fontFamily: 'Hellix'),
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: WelcomeScreen(),
    );
  }
}
