// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterMobx on RegisterMobxBase, Store {
  final _$nameAtom = Atom(name: 'RegisterMobxBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$cpfAtom = Atom(name: 'RegisterMobxBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$birthdateAtom = Atom(name: 'RegisterMobxBase.birthdate');

  @override
  String get birthdate {
    _$birthdateAtom.reportRead();
    return super.birthdate;
  }

  @override
  set birthdate(String value) {
    _$birthdateAtom.reportWrite(value, super.birthdate, () {
      super.birthdate = value;
    });
  }

  final _$amountAtom = Atom(name: 'RegisterMobxBase.amount');

  @override
  String get amount {
    _$amountAtom.reportRead();
    return super.amount;
  }

  @override
  set amount(String value) {
    _$amountAtom.reportWrite(value, super.amount, () {
      super.amount = value;
    });
  }

  final _$documentImageAtom = Atom(name: 'RegisterMobxBase.documentImage');

  @override
  String get documentImage {
    _$documentImageAtom.reportRead();
    return super.documentImage;
  }

  @override
  set documentImage(String value) {
    _$documentImageAtom.reportWrite(value, super.documentImage, () {
      super.documentImage = value;
    });
  }

  final _$registerAsyncAction = AsyncAction('RegisterMobxBase.register');

  @override
  Future<void> register() {
    return _$registerAsyncAction.run(() => super.register());
  }

  final _$documentAsyncAction = AsyncAction('RegisterMobxBase.document');

  @override
  Future<void> document() {
    return _$documentAsyncAction.run(() => super.document());
  }

  final _$RegisterMobxBaseActionController =
      ActionController(name: 'RegisterMobxBase');

  @override
  dynamic setName(dynamic value) {
    final _$actionInfo = _$RegisterMobxBaseActionController.startAction(
        name: 'RegisterMobxBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$RegisterMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCpf(dynamic value) {
    final _$actionInfo = _$RegisterMobxBaseActionController.startAction(
        name: 'RegisterMobxBase.setCpf');
    try {
      return super.setCpf(value);
    } finally {
      _$RegisterMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setBirthdate(dynamic value) {
    final _$actionInfo = _$RegisterMobxBaseActionController.startAction(
        name: 'RegisterMobxBase.setBirthdate');
    try {
      return super.setBirthdate(value);
    } finally {
      _$RegisterMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setAmount(dynamic value) {
    final _$actionInfo = _$RegisterMobxBaseActionController.startAction(
        name: 'RegisterMobxBase.setAmount');
    try {
      return super.setAmount(value);
    } finally {
      _$RegisterMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDocumentImage(dynamic value) {
    final _$actionInfo = _$RegisterMobxBaseActionController.startAction(
        name: 'RegisterMobxBase.setDocumentImage');
    try {
      return super.setDocumentImage(value);
    } finally {
      _$RegisterMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
cpf: ${cpf},
birthdate: ${birthdate},
amount: ${amount},
documentImage: ${documentImage}
    ''';
  }
}
