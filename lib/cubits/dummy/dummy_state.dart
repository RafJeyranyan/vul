import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_work/core/entities/entities.dart';

enum DummyScreenStage {
  display,
  loading,
  // error,
}

class DummyScreenState extends Equatable {
  final DummyScreenStage stage;
  final List<Volcano> volcanoes;

  const DummyScreenState(
      {required this.stage, required this.volcanoes});

  DummyScreenState copyWith(
      {DummyScreenStage? stage,
      List<Volcano>? volcanoes}) {
    return DummyScreenState(
        stage: stage ?? this.stage,
        volcanoes: volcanoes ?? this.volcanoes);
  }

  @override
  List<Object?> get props => [
        stage,
    volcanoes,
      ];
}
