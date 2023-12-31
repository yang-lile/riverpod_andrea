import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:{{project_name.snakeCase()}}/app/app.dart';
import 'package:{{project_name.snakeCase()}}/bootstrap.dart';

void main() {
  bootstrap(() => const ProviderScope(child: App()));
}
