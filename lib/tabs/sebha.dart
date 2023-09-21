import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../my_theme.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({Key? key}) : super(key: key);
  static const routeName='Sebha';
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}
class _SebhaTabState extends State<SebhaTab> {
  int counter = 30;
  String text='سبحان الله';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            padding: EdgeInsets.only(left: 80, top: 30),
            child: InkWell(
                onTap: () {},
                child: Image.asset('assets/images/Sebha.png'))),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80,top: 35),
          child: Container(
              height: 70,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Theme.of(context).primaryColor.withOpacity(0.6)
              ),
              child: Center(
                child: Text('$counter', style: Theme.of(context).textTheme.bodyMedium,),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80,top: 15),
          child: Container(
              height: 48,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).primaryColor
              ),
              child: Center(
                child: Text('$text ',style: TextStyle(
                    color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                ),),
              )),
        ),

      ],
    );
  }
}

