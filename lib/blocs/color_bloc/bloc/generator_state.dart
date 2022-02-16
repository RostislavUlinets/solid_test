part of 'generator_bloc.dart';

@freezed
class GeneratorState with _$GeneratorState {
  const factory GeneratorState({
    required Color color,
  }) = _GeneratorState;

  factory GeneratorState.initial() => GeneratorState(
        color: Color.fromARGB(255, 200, 200, 100),
      );
}
