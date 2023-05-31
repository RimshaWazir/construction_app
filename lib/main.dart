import 'package:construction_app/account_as_buyer.dart';
import 'package:construction_app/account_as_seller.dart';
import 'package:construction_app/account_as_worker.dart';
import 'package:construction_app/seller_prof.dart';
import 'package:construction_app/seller_prof_sett.dart';
import 'package:construction_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:theme_manager/theme_manager.dart';

import 'account_as_manpower.dart';


void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeManager(
      defaultBrightnessPreference: BrightnessPreference.system,
      data: (Brightness brightness) => ThemeData(
        brightness: brightness,
      ),
      loadBrightnessOnStart: true,
      themedWidgetBuilder: (BuildContext context, ThemeData theme) {
        return MaterialApp(
          routes: {
            '/Seller': (context) => SellerAccount(),
            '/Buyer': (context) => BuyerAccount(),
            '/Manpower': (context) => Manpower(),
            '/Worker': (context) => WorkerAccount(),
          },
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: SplashScreen(),
        );
      },
    );
  }
}
