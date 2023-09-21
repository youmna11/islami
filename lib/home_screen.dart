import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/tabs/ahadeth.dart';
import 'package:islami_app/tabs/quran.dart';
import 'package:islami_app/tabs/radio.dart';
import 'package:islami_app/tabs/sebha.dart';
import 'package:islami_app/tabs/setting.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  List<Widget> tabs = [
    QurabTab(),
    const SebhaTab(),
    const RadioTab(),
    AhadethTab(),
    SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            Theme.of(context).colorScheme.brightness == Brightness.light
                ? "assets/images/main_bg.png"
                : "assets/images/dark_main_bg.png",
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          appBar: AppBar(
             title: Text("Islami",
                 style: Theme.of(context).textTheme.titleSmall),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "quran",
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/Sebha.png")),
                  label: "sebha",
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "radio",
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon:
                  const ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: "ahadeth",
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: "Settings",
                  backgroundColor: Theme.of(context).primaryColor),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }
}