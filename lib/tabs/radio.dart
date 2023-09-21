import 'package:flutter/material.dart';
import '../my_theme.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_image.png'),
        SizedBox(height: 25,),
        Text('إذاعة القرآن الكريم', style: Theme.of(context).textTheme.bodyMedium,),
        SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.fast_rewind,color: Theme.of(context).primaryColor,size: 35,),
            Icon(Icons.play_arrow,color: Theme.of(context).primaryColor,size: 60,),
            Icon(Icons.fast_forward,color: Theme.of(context).primaryColor,size: 35,),
          ],
        )
      ],
    );
  }
}
