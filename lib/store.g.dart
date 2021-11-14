// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StudyStore on _StudyStoreBase, Store {
  final _$estadoRadioValueAtom = Atom(name: '_StudyStoreBase.estadoRadioValue');

  @override
  String get estadoRadioValue {
    _$estadoRadioValueAtom.reportRead();
    return super.estadoRadioValue;
  }

  @override
  set estadoRadioValue(String value) {
    _$estadoRadioValueAtom.reportWrite(value, super.estadoRadioValue, () {
      super.estadoRadioValue = value;
    });
  }

  final _$abrirModaisAsyncAction = AsyncAction('_StudyStoreBase.abrirModais');

  @override
  Future<void> abrirModais({required BuildContext context}) {
    return _$abrirModaisAsyncAction
        .run(() => super.abrirModais(context: context));
  }

  final _$_StudyStoreBaseActionController =
      ActionController(name: '_StudyStoreBase');

  @override
  dynamic alterarEstadoRadioValue(String? novoEstadoRadioValue) {
    final _$actionInfo = _$_StudyStoreBaseActionController.startAction(
        name: '_StudyStoreBase.alterarEstadoRadioValue');
    try {
      return super.alterarEstadoRadioValue(novoEstadoRadioValue);
    } finally {
      _$_StudyStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
estadoRadioValue: ${estadoRadioValue}
    ''';
  }
}
