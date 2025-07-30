import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class TextFontStyle {
  TextFontStyle._();

  /*custom font use anywhere*/

  static final textStyle20UrbanistW500 = GoogleFonts.urbanist(
    color: AppColor.cFFFFFF,
    fontSize: 30.sp,
    fontWeight: FontWeight.w500,
  );

  static final textStyle24RobotoW600 = GoogleFonts.roboto(
    color: AppColor.c282828,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    height: 3.h,
    letterSpacing: 0,
  );

  static final textStyle24urbanistsW400 = GoogleFonts.urbanist(
    color: AppColor.cCFD0D5,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    height: 1.33.h,
    letterSpacing: 0,
  );

  static final headline11c848585poppinsw400 = GoogleFonts.poppins(
    color: AppColor.cA9AAAA,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    height: 1.33.h,
    letterSpacing: 0,
  );
  static final headline24c848585poppinsw500 = GoogleFonts.poppins(
    color: AppColor.cFFFFFF,
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    height: 1.33.h,
    letterSpacing: 0,
  );
  static final textStyle13c364B63nunitow700 = GoogleFonts.nunito(
    color: AppColor.c364B63,
    fontSize: 13.sp,
    fontWeight: FontWeight.w700,
    height: 1.33.h,
    letterSpacing: 0,
  );

  static var textStyle32SatoshiW500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 24.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var textStyle33SatoshiW700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c3D74FF,
      fontSize: 33.sp,
      height: 1.10,
      letterSpacing: -0.66,
      fontWeight: FontWeight.w700);

  static var textStyle16SatoshiW700 = TextStyle(
      fontFamily: 'Satoshi',
      fontFamilyFallback: const [
        'Open Sans',
        'Poppins',
        'Noto Sans',
        'Satoshi',
      ],
      color: AppColor.c111214,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var textStyle14SatoshiW400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132235,
      fontSize: 14.sp,
      height: 1.50,
      fontWeight: FontWeight.w400);

  static var textStyle16SatoshiW400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132235,
      fontSize: 16.sp,
      height: 1.50,
      fontWeight: FontWeight.w400);

  static var textStyle14Satoshic616161W500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c616161,
      fontSize: 14.sp,
      height: 1.50,
      fontWeight: FontWeight.w500);

  static var textStyle14Nunitoc364B63W700 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c364B63,
      fontSize: 14.sp,
      height: 1.50,
      fontWeight: FontWeight.w700);




    static var textStyle16Satoshic132234W600 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 16.sp,
      height: 1.50,
      fontWeight: FontWeight.w600);

    static var textStyle20Satoshic111214W700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c111214,
      fontSize: 20.sp,
        height: 1.32,
        letterSpacing: -0.20,
      fontWeight: FontWeight.w700);






 static var textStyle16Satoshic132234W700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 20.sp,
      height: 1.50,
      fontWeight: FontWeight.w700);



 static var textStyle14Satoshic050505W500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c050505,
      fontSize: 14.sp,
     height: 1.64,
      fontWeight: FontWeight.w500);









  static var textStyle16c132234SatoshiW500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 16.sp,
      height: 1.50,
      fontWeight: FontWeight.w500);

  static var headline20c2B2B2Bsatoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c2B2B2B,
      fontSize: 20.sp,
      height: 1.50,
      fontWeight: FontWeight.w700);


  static var textStyle12SatoshiW400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline12c2FED52satoshiw600 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c2FED52,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

 static var textStyle14c4B586BSatoshiW400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c4B586B,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var textStyle16SatoshiW500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var textStyle14SatoshiW500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline12c607080poppinsw500 = TextStyle(
      fontFamily: 'poppins',
      color: AppColor.c607080,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline12c607080Satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c607080,
      fontSize: 12.sp,
      height: 1.64,
      fontWeight: FontWeight.w500);



 static var headline14c132235Satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132235,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);


 static var headline13cB25E09atoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cB25E09,
      fontSize: 13.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline18c08875DSatoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c08875D,
      fontSize: 18.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var headline20cFFFFFFSatoshi700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

 static var headline13cD3DDE7Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cD3DDE7,
      fontSize: 13.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);


  static var headline14c132234Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400
  );
 

  static var headline20c132234Satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w800);
 

  static var headline13c132234Satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 13.sp,
      height: 1.30,
      fontWeight: FontWeight.w700
  );

   static var headline14c0C0D19Satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c0C0D19,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500
  );


   static var headline14c5E5E5ELatoiw400 = TextStyle(
      fontFamily: 'Lato',
      color: AppColor.c5E5E5E,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400
  );

   static var headline22c0C0D19Latow500 = TextStyle(
      fontFamily: 'Lato',
      color: AppColor.c0C0D19,
      fontSize: 22.sp,
      height: 1.30,
      fontWeight: FontWeight.w500
  );

   static var headline16c0C0D19Latow500 = TextStyle(
      fontFamily: 'Lato',
      color: AppColor.c0C0D19,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500
  );


  static var headline12c132234poppinsw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

  static var textStyle16cFFFFFFSatoshiW600 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var headline15c132234Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 15.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var textStyle20c132234SatoshiW500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w600);

  static var headline16c010B21Satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c010B21,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline14c607080satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c607080,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline12c132234satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);




    static var headline20c132234satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

 static var headline18c132234satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 18.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);




  static var textStyle16cFFFFFFSatoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cD7D7D7,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

    static var headline16c111214Satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c111214,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

   static var headline16c393C43Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c393C43S,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);


  static var textStyle14cFFFFFFSatoshiW400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var textStyle18c111214SatoshiW700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c3C73FF,
      fontSize: 18.sp,
      height: 1.10,
      letterSpacing: -0.36,
 
      fontWeight: FontWeight.w700);
 



 



 static var headline12cFFCC00Satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFCC00,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline20c132234Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 20.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

  static var headline10cFF4931Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFF4931,
      fontSize: 10.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

    static var headline18212738Satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 18.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

   static var headline18c212738Satoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c212738,
      fontSize: 18.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

static var headline14c607080Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c607080,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

   static var headline11c878A94Satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c878A94,
      fontSize: 11.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline12c2563FFSatoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c2563FF,
      fontSize: 11.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  static var headline12c898989Satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c898989,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);




  static var headline14364B63Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c364B63,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

    static var headline14c364B63Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c364B63,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

    static var headline14c132235satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132235,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

   static var headline18c08875Dsatoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c08875D,
      fontSize: 18.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);

 static var headline12c132234satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

 static var headline13c364B63satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c364B63,
      fontSize: 13.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);




 static var headline12c364B63satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c364B63,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w400);

 static var headline16c132234satoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c132234,
      fontSize: 16.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

 static var headline12c08875Dsatoshiw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c08875D,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

 static var headline15cFFFFFFsatoshiw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.cFFFFFF,
      fontSize: 15.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);







  static var headline14c676C75poppinsw500 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c0C0D19,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

  // static var headline16c010B21Satoshiw500 = TextStyle(
  //     fontFamily: 'Satoshi',
  //     color: AppColor.c010B21,
  //     fontSize: 16.sp,
  //     height: 1.30,
  //     fontWeight: FontWeight.w500);


    static var headline14c0C0D19poppinsw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c676C75,
      fontSize: 14.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);

    static var headline12c4F46E5poppinsw700 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c4F46E5,
      fontSize: 12.sp,
      height: 1.30,
      fontWeight: FontWeight.w700);


    static var headline13c010B21Satoshiw400 = TextStyle(
      fontFamily: 'Satoshi',
      color: AppColor.c010B21,
      fontSize: 13.sp,
      height: 1.30,
      fontWeight: FontWeight.w500);
 

 




static var headline14c676C75Nunitow500 = TextStyle(
 
      fontFamily: 'Nunito',
      color: AppColor.c676C75,
      fontSize: 14.sp,
      height: 1.30,
      letterSpacing: -0.04,
      fontWeight: FontWeight.w500);

  static var headline14c676C75Nunitow400 = TextStyle(
      fontFamily: 'Nunito',
      color: AppColor.c607080,
      fontSize: 14.sp,
      height: 1.30,
      letterSpacing: -0.04,
      fontWeight: FontWeight.w400);


    static var headline28cFFFFFFRoboto500 = TextStyle(
      fontFamily: 'Roboto',
      color: AppColor.cFFFFFF,
      fontSize: 28.sp,
      height: 1.30,
      letterSpacing: -0.04,
      fontWeight: FontWeight.w500);


    static var headline16c8D8D8DRoboto400 = TextStyle(
      fontFamily: 'Roboto',
      color: AppColor.c8D8D8D,
      fontSize: 15.sp,
      height: 1.30,
      letterSpacing: -0.04,
      fontWeight: FontWeight.w400);


    static var headline11c1B1B1BRoboto400 = TextStyle(
      fontFamily: 'Roboto',
      color: AppColor.c1B1B1B,
      fontSize: 11.sp,
      height: 1.30,
      letterSpacing: -0.04,
      fontWeight: FontWeight.w400);




  // static var textStyle32RighteousW400 = TextStyle(
  //     fontFamily: 'Righteous',
  //     fontFamilyFallback: const [
  //       'Righteous',
  //     ],
  //     color: AppColor.c000000,
  //     fontSize: 32.sp,
  //     height: 1.4,
  //     letterSpacing: 0,
  //     fontWeight: FontWeight.bold);

  // static var textStyle12PoppinsW300 = TextStyle(
  //     fontFamily: 'Poppins',
  //     fontFamilyFallback: const [
  //       'Open Sans',
  //       'Poppins',
  //       'Noto Sans',
  //     ],
  //     color: AppColor.cFFFFFF,
  //     fontSize: 12.sp,
  //     height: 1.50,
  //     fontWeight: FontWeight.w300);
}
