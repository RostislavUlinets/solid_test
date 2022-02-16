import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solid_test/services/color_helper.dart';

part 'generator_event.dart';
part 'generator_state.dart';
part 'generator_bloc.freezed.dart';

class GeneratorBloc extends Bloc<GeneratorEvent, GeneratorState> {
  final colorHelper = ColorHelper();

  GeneratorBloc() : super(GeneratorState.initial()) {
    on<ColorGenerate>((event, emit) {
      final Color color = colorHelper.generateColor();
      emit(
        state.copyWith(
          color: color,
        ),
      );
    });
  }
}
