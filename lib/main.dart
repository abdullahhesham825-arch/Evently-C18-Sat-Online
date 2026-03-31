import 'package:evently_sat_online/config/theme/theme_manager.dart';
import 'package:evently_sat_online/core/routes_manager/routes_manager.dart';
import 'package:evently_sat_online/l10n/app_localizations.dart';
import 'package:evently_sat_online/providers/lang_provider.dart';
import 'package:evently_sat_online/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ThemeProvider()),
        ChangeNotifierProvider(create: (_)=> LangProvider()),
      ],
      child: const Evenlty()));
}

class Evenlty extends StatelessWidget {
  const Evenlty({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   var themeProvider = Provider.of<ThemeProvider>(context);
   var langProvider = Provider.of<LangProvider>(context);
    return ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, _)=>MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesManager.homeScreen,
        onGenerateRoute: RoutesManager.router,
        theme:ThemeManager.light ,
        darkTheme: ThemeManager.dark,
        themeMode: themeProvider.currentTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: [
          Locale('en'),
          Locale('ar'),
          Locale('es'),
        ],
        locale: Locale(langProvider.currentLang),

      ),

    );
  }
}
