import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import '../hadethModel.dart';
import '../hadeth_content.dart';
class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }

    return Column(
      children: [
        Image.asset("assets/images/hadeth_bg.png"),
        Divider(
          thickness: 2,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        Text(
          "ahadeth",
          style:
          GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        Divider(
          thickness: 2,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              endIndent: 35,
              indent: 35,
              color: Theme.of(context).primaryColor,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethContent.routeName,
                      arguments: allAhadeth[index]);
                },
                child: Text(
                  allAhadeth[index].title,
                  style: GoogleFonts.quicksand(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

  void loadHadethFile() async {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> AhadethContent = value.split("#");

      for (int i = 0; i < AhadethContent.length; i++) {
        int lastIndex = AhadethContent[i].trim().indexOf("\n");
        String title = AhadethContent[i].trim().substring(0, lastIndex);
        print(title);
        String content = AhadethContent[i].trim().substring(lastIndex + 1);

        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
      }

      setState(() {});
    }).catchError((error) {
      print(error);
    });
  }
}
