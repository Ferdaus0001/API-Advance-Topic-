// ignore_for_file: use_build_context_synchronously, unused_local_variable, avoid_print
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../assets_helper/app_fonts.dart';
import '/helpers/di.dart';
import '../constants/update_customer.dart';

//final appData = locator.get<GetStorage>();
// final plcaeMarkAddress = locator.get<PlcaeMarkAddress>();
//declared for cart scrren calling bottom shit with this from reorder rx
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final GlobalKey<PopupMenuButtonState<String>> popUpGlobalkey =
    GlobalKey<PopupMenuButtonState<String>>();

enum StatusType { order, delivery }

Color statuscolor(StatusType status, String statusCode) {
  late Color stcolor;
  if (StatusType.order == status) {
    switch (statusCode) {
      case OrderStatusNo.kPENDING:
        stcolor = OrderStatusColor.kPENDING;
        break;
      case OrderStatusNo.kACCEPTED:
        stcolor = OrderStatusColor.kACCEPTED;
        break;
      case OrderStatusNo.kFOODPROCESSING:
        stcolor = OrderStatusColor.kFOODPROCESSING;
        break;
      case OrderStatusNo.kFOODREADY:
        stcolor = OrderStatusColor.kFOODREADY;
        break;
      case OrderStatusNo.kFOODPICKED:
        stcolor = OrderStatusColor.kFOODPICKED;
        break;
      case OrderStatusNo.kFOODDELIVERED:
        stcolor = OrderStatusColor.kFOODDELIVERED;
        break;
      case OrderStatusNo.kCANCELLED:
        stcolor = OrderStatusColor.kCANCELLED;
        break;
      case OrderStatusNo.kREJECTEDBYSHOP:
        stcolor = OrderStatusColor.kREJECTEDBYSHOP;
        break;
      case OrderStatusNo.kFAILED:
        stcolor = OrderStatusColor.kFAILED;
        break;
    }
  }
  if (StatusType.delivery == status) {
    switch (statusCode) {
      case DeliveryStatusNo.kPENDIG:
        stcolor = DeliveryStatusColor.kPENDING;
        break;
      case DeliveryStatusNo.kONTRANSIT:
        stcolor = DeliveryStatusColor.kONTRANSIT;
        break;
      case DeliveryStatusNo.kARRIVEDATSHOP:
        stcolor = DeliveryStatusColor.kARRIVEDATSHOP;
        break;
      case DeliveryStatusNo.kDELIVERYMANCONFIRMED:
        stcolor = DeliveryStatusColor.kDELIVERYMANCONFIRMED;
        break;
      case DeliveryStatusNo.kDELIVERYSTARTED:
        stcolor = DeliveryStatusColor.kDELIVERYSTARTED;
        break;
      case DeliveryStatusNo.kDELIVERED:
        stcolor = DeliveryStatusColor.kDELIVERED;
        break;
    }
  }

  return stcolor;
}

String language(String languageKey) {
  late String language;

  switch (languageKey) {
    case kKeyEnglish:
      language = "English";
      break;
    case kKeyFrench:
      language = "French";
      break;
    case kKeyGerman:
      language = "Dutch";
      break;
    case kKeyRussian:
      language = "Russian";
      break;
    case kKeyPortuguese:
      language = "Portuguese";
      break;
    case kKeySpanish:
      language = "Spanish";
      break;
    default:
      language = "Portuguese";
  }
  return language;
}

Future<void> setInitValue() async {
  appData.writeIfNull(kKeyfirstTime, true);
  await appData.writeIfNull(kKeyIsLoggedIn, false);
  await appData.writeIfNull(kKeyIsLoggedIn2, false);
  await appData.writeIfNull(kKeyIsExploring, false);

  await Future.delayed(const Duration(seconds: 2));
}

Completer<T> wrapInCompleter<T>(Future<T> future) {
  final completer = Completer<T>();
  future.then(completer.complete).catchError(completer.completeError);
  return completer;
}

Future<void> getInvisible() async {
  Future.delayed(const Duration(milliseconds: 500), () {});
}

void loginWithSocialMedia(String driver) async {
  String userId, name, email;

  try {
    if (driver == kGoogle) {
      //    googleSignIn.signOut();
      /// final GoogleSignInAccount? googleAccount = await googleSignIn.signIn();
    } else if (driver == kFacebook) {
    } else if (driver == kApple) {
      // final credential = await SignInWithApple.getAppleIDCredential(
      //   scopes: [
      //     AppleIDAuthorizationScopes.email,
      //     AppleIDAuthorizationScopes.fullName,
      //   ],
      // );
      // print(credential);

      // if (credential.userIdentifier != null) {
      //   await postSocailLoginRXObj.postSocailLogin(
      //       socialAuthId: credential.userIdentifier!,
      //       email: credential.email,
      //       firstName: credential.givenName,
      //       lastName: credential.familyName,
      //       registerType: "4");
      // }
    }
  } catch (e) {
    // ToastUtil.showLongToast(e.toString());
  }
}

Future<File> getLocalFile(String filename) async {
  File f = File(filename);
  return f;
}

void showMaterialDialog(BuildContext context) {
  showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        "Do you want to exit the app?",
        textAlign: TextAlign.center,
        style: TextFontStyle.textStyle20UrbanistW500,
      ),
      actions: <Widget>[
        // customButton(
        //     name: "No".tr,
        //     onCallBack: () {
        //       Navigator.of(context).pop(false);
        //     },
        //     height: 30.sp,
        //     minWidth: .3.sw,
        //     borderRadius: 30.r,
        //     color: AppColor.cFFFFFF,
        //     textStyle: GoogleFonts.montserrat(
        //         fontSize: 17.sp,
        //         color: AppColor.cFFFFFF,
        //         fontWeight: FontWeight.w700),
        //     context: context),
        // customButton(
        //     name: "Yes".tr,
        //     onCallBack: () {
        //       if (Platform.isAndroid) {
        //         SystemNavigator.pop();
        //       } else if (Platform.isIOS) {
        //         exit(0);
        //       }
        //     },
        //     height: 30.sp,
        //     minWidth: .3.sw,
        //     borderRadius: 30.r,
        //     color: AppColor.cFFFFFF,
        //     textStyle: GoogleFonts.montserrat(
        //         fontSize: 17.sp,
        //         color: Colors.white,
        //         fontWeight: FontWeight.w700),
        //     context: context),
      ],
    ),
  );
}

void rotation() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(80, 0, 0, 0),
      statusBarIconBrightness: Brightness.light,
    ),
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
