import 'package:evently_sat_online/config/theme/theme_manager.dart';
import 'package:evently_sat_online/core/routes_manager/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const Evenlty());
}

class Evenlty extends StatelessWidget {
  const Evenlty({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, _)=>MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesManager.login,
        onGenerateRoute: RoutesManager.router,
        theme:ThemeManager.light ,
        darkTheme: ThemeManager.dark,
        themeMode: ThemeMode.light,
        supportedLocales: [
          Locale('en'),
          Locale('ar'),
          Locale('es'),
        ],
        locale: Locale('en'),

      ),

    );
  }
}
