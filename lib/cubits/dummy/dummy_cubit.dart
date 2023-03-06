import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_work/core/entities/entities.dart';

import '../../view/dummy/volcano/volcanos.dart';
import 'dummy_state.dart';

class DummyScreenCubit extends Cubit<DummyScreenState> {
  DummyScreenCubit()
      : super(
            DummyScreenState(stage: DummyScreenStage.loading, volcanoes: [])) {
    load();
  }

  load() async {
    List<Volcano> volcanoesTmp = [];
    volcanoes.forEach((element) {
      volcanoesTmp.add(Volcano.fromJson(element));
    });
    emit(state.copyWith(stage: DummyScreenStage.display,volcanoes: volcanoesTmp));
  }
}
