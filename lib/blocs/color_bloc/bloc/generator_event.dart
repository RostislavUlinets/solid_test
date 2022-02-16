part of 'generator_bloc.dart';

@freezed
class GeneratorEvent with _$GeneratorEvent {
  const factory GeneratorEvent.colorGenerate() = ColorGenerate;
  const factory GeneratorEvent.disco() = Disco;
}
