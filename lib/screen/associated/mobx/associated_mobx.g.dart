// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associated_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AssociatedMobx on AssociatedMobxBase, Store {
  final _$associatedListAtom = Atom(name: 'AssociatedMobxBase.associatedList');

  @override
  ObservableFuture<List<Associated>> get associatedList {
    _$associatedListAtom.reportRead();
    return super.associatedList;
  }

  @override
  set associatedList(ObservableFuture<List<Associated>> value) {
    _$associatedListAtom.reportWrite(value, super.associatedList, () {
      super.associatedList = value;
    });
  }

  final _$AssociatedMobxBaseActionController =
      ActionController(name: 'AssociatedMobxBase');

  @override
  Future<dynamic> fetchAll() {
    final _$actionInfo = _$AssociatedMobxBaseActionController.startAction(
        name: 'AssociatedMobxBase.fetchAll');
    try {
      return super.fetchAll();
    } finally {
      _$AssociatedMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
associatedList: ${associatedList}
    ''';
  }
}
