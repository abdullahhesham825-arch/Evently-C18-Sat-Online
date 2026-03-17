import 'package:evently_sat_online/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager{
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: ColorsManager.whiteF4,
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: ColorsManager.grey, width: 1.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: ColorsManager.grey, width: 1.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: Colors.red, width: 1.w),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: Colors.red, width: 1.w),
      ),
      fillColor: ColorsManager.white,
      hintStyle: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.normal, color: ColorsManager.darkGrey),
      filled: true,
      prefixIconColor: ColorsManager.grey,
      suffixIconColor: ColorsManager.grey,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: REdgeInsets.symmetric(vertical: 9),
        backgroundColor: ColorsManager.blue,
        foregroundColor: ColorsManager.white,
        textStyle: GoogleFonts.poppins(fontSize: 20.sp, fontWeight: FontWeight.w500, color: Colors.white)
      ),
    ),

    textTheme: TextTheme(
      labelSmall: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w600, color: ColorsManager.blue, ),
      labelMedium: GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400, color: ColorsManager.darkGrey),
      headlineLarge: GoogleFonts.poppins(fontSize: 24.sp, fontWeight:FontWeight.w600,color: ColorsManager.blue )
    )
  );
  static ThemeData dark = ThemeData();
}