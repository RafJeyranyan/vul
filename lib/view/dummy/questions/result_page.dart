// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class ResultPage extends StatelessWidget {
//   const ResultPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final cubit = context.watch<DummyScreenCubit>();
//     final size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//     child: Center(
//       child: Column(
//         children: [
//           SizedBox(height: size.width * 0.4,),
//           Text("Your score : ${cubit.state.currentScore}",style: AppTextStyle.questionTitle,),
//           SizedBox(height: 40.0,),
//           Text("Best Score : ${cubit.state.bestScore}",style: AppTextStyle.questionTitle,),
//           SizedBox(height: 60.0,),
//           CustomButton(onPressed: (){
//             Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
//               return QuestionsScreen();
//             }), (route) => false);
//           }, child: Text("Start Again",style: AppTextStyle.questionAnswers,)),
//           SizedBox(height: 40.0,),
//           CustomButton(
//               backgroundColor: Color(0xFFCB4B4B),
//               onPressed: (){
//             cubit.removeBest();
//           }, child:
//           Text("Clear",style: AppTextStyle.questionAnswers,))
//
//         ],
//       ),
//     ),
//     );
//   }
// }
