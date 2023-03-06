import 'package:flutter/material.dart';
import 'package:test_work/core/entities/entities.dart';
import 'package:test_work/core/style.dart';

class VolcanoScreen extends StatelessWidget {
  final Volcano volcano;

  const VolcanoScreen({Key? key, required this.volcano}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            volcano.title ?? "",
            style: AppTextStyle.titleSmall,
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: AppColors.content,
        ),
        backgroundColor: AppColors.greenBackGround,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                height: 400,
                child: Image.asset(
                  volcano.url ?? "",
                  fit: BoxFit.fill,
                ),
              ),

              const SizedBox(
                height: 30,
              ),
               Container(
                   padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 16.0),

                   decoration: BoxDecoration(
                       borderRadius: AppBorderRadius.defaultBorderRadius,
                       color: AppColors.content
                   ),
                   child: SingleChildScrollView(
                     child: Text(
                       volcano.facts ?? "",
                       style: AppTextStyle.facts,
                       maxLines: null,
                     ),
                   ),
                 ),
            ],
          ),
        ),
      ),
    );
  }
}
