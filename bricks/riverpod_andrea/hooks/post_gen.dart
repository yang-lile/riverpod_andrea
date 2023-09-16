import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progressReplace = context.logger.progress('Replacing packages');
  final projectName = context.vars['project_name'] as String;

  // bloc packages
  final removeList = <String>['bloc', 'flutter_bloc', 'dev:bloc_test'];
  final addList = <String>[
    'flutter_hooks',
    'hooks_riverpod',
    'logger',
    'riverpod_annotation',
    'dev:build_runner',
    'dev:custom_lint',
    'dev:riverpod_generator',
    'dev:riverpod_lint',
  ];
  // replace packages
  await Process.run('dart', [
    'pub',
    '-C',
    projectName,
    'remove',
    ...removeList,
  ]);
  await Process.run('dart', [
    'pub',
    '-C',
    projectName,
    'add',
    ...addList,
  ]);
  progressReplace.complete();

  final progressGet = context.logger.progress('Installing packages');
  // Run `flutter packages get` after generation.
  await Process.run('flutter', [
    'packages',
    'get',
    '-C',
    projectName,
  ]);
  progressGet.complete();
}
