import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/splash_screen.dart';
import 'package:islami_app/sura_content.dart';
import 'package:provider/provider.dart';
import 'hadeth_content.dart';
import 'home_screen.dart';
import 'my_theme.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => MyProvider(),
    ),
  ], child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        // AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales: [
        Locale("en"),
        Locale("ar"),
      ],
      locale: Locale(provider.languageCode),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SplashScreen.routeName:(context)=> SplashScreen(),
        SuraContent.routeName: (context) => SuraContent(),
        HadethContent.routeName: (context) => HadethContent(),
      },
    );
  }
}
