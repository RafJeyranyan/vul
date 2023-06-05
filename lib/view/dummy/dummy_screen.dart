import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_work/view/dummy/volcano/facts_screen.dart';

import '../../core/style.dart';
import '../../cubits/dummy/dummy_cubit.dart';
import '../../cubits/dummy/dummy_state.dart';
import 'volcano/volcano_card.dart';
import 'volcano/volcano_screen.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DummyScreenCubit>(
        create: (_) => DummyScreenCubit(),
        child: BlocBuilder<DummyScreenCubit, DummyScreenState>(
          builder: (context, state) {
            switch (state.stage) {
              case DummyScreenStage.display:
                return DisplayDummyScreen();
              case DummyScreenStage.loading:
                return Center(
                  child: CircularProgressIndicator(),
                );
            }
          },
        ));
  }
}

class DisplayDummyScreen extends StatelessWidget {
  const DisplayDummyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DummyScreenCubit>();
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Вулканы",
          ),
          centerTitle: true,
          backgroundColor: AppColors.primary,
        ),
        backgroundColor: AppColors.greenBackGround,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: ElevatedButton(
                onPressed: () {
                  List a = [1, 2, 3, 4, 5];

                  // print(1 & 0);
                  // print(1 & 1);
                  // print(0 & 0);
                  // print(0 & 1);
                  final int i = 1;
                  switch (i) {
                    case 1 when i > 0:
                      print("when i > 0");
                      break;
                    case 1 when i > 0:
                      print("when i < 0");
                      break;
                    default:
                      print("default");
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.customRed),
                child: Text("Смотреть интересные факты"),
              )),
              ...cubit.state.volcanoes.map(
                (e) => Column(
                  children: [
                    const SizedBox(
                      height: 30.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => VolcanoScreen(
                                  volcano: e,
                                )));
                      },
                      child: VolcanoCard(
                        title: e.title ?? "",
                        url: e.url ?? "",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
