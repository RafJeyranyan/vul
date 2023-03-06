import 'package:flutter/material.dart';
import 'package:test_work/core/style.dart';

class VolcanoCard extends StatelessWidget {
  final String title;
  final String url;

  const VolcanoCard({Key? key, required this.title, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(title,style: AppTextStyle.titleLarge,),
        const SizedBox(height: 24,),
        SizedBox(
          width: size.width ,
          height: 350,
          child: Image.asset(url,fit: BoxFit.fill,),
        )
      ],
    );
  }
}
