import 'package:freezed_annotation/freezed_annotation.dart';

part '{{modelName.snakeCase()}}_model.g.dart';
part '{{modelName.snakeCase()}}_model.freezed.dart';

@freezed
class {{modelName.pascalCase()}}Model with _${{modelName.pascalCase()}}Model{
  const factory {{modelName.pascalCase()}}Model(
    // TODO
  ) = _{{modelName.pascalCase()}}Model;
}
