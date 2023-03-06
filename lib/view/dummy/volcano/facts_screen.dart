import 'package:flutter/material.dart';
import 'package:test_work/core/style.dart';
import 'package:test_work/view/dummy/volcano/facts.dart';

class InterestingFactsScreen extends StatelessWidget {
  const InterestingFactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.greenBackGround,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Интересные факты",style: TextStyle(fontSize: 20,color: Colors.black),),
        leading: BackButton(color: Colors.black,),
        backgroundColor: AppColors.greenBackGround,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              SizedBox(height: 8.0,),
              ...facts.map((e) => Column(
                children: [
                  Container(
                    width: size.width,
                    padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 16.0),

                    decoration: BoxDecoration(
                        borderRadius: AppBorderRadius.defaultBorderRadius,
                        color: AppColors.content
                    ),
                    child: SingleChildScrollView(
                      child: Text(
                        e,
                        style: AppTextStyle.facts,
                        maxLines: null,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.0,)
                ],
              )
              ),
          ],

        ),
      ),
    );
  }
}
