// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerStore on _ControllerStore, Store {
  final _$fileAtom = Atom(name: '_ControllerStore.file');

  @override
  File get file {
    _$fileAtom.reportRead();
    return super.file;
  }

  @override
  set file(File value) {
    _$fileAtom.reportWrite(value, super.file, () {
      super.file = value;
    });
  }

  final _$getFIleAsyncAction = AsyncAction('_ControllerStore.getFIle');

  @override
  Future<File> getFIle() {
    return _$getFIleAsyncAction.run(() => super.getFIle());
  }

  @override
  String toString() {
    return '''
file: ${file}
    ''';
  }
}
