import 'package:mobx/mobx.dart';
import 'package:prototype_app/helper/helper.dart';
import 'package:prototype_app/helper/storage_data.dart';
import 'package:prototype_app/model/associated.dart';

part 'register_mobx.g.dart';

class RegisterMobx = RegisterMobxBase with _$RegisterMobx;

abstract class RegisterMobxBase with Store {
  final _storageData = StorageData();
  final _helper = Helper();

  @observable
  String name = '';
  @observable
  String cpf = '';
  @observable
  String birthdate = '';
  @observable
  String amount = '';
  @observable
  String documentImage = '';

  @action
  setName(value) => name = value;
  @action
  setCpf(value) => cpf = value;
  @action
  setBirthdate(value) => birthdate = value;
  @action
  setAmount(value) => amount = value;
  @action
  setDocumentImage(value) => documentImage = value;

  @action
  Future<void> register() async {
    await _storageData.insert(Associated(
        name: name,
        cpf: cpf,
        birthdate: birthdate,
        amount: amount,
        documentImage: documentImage,
        status: 'Pendente'
    ));
  }

  @action
  Future<void> document() async {
    documentImage = await _helper.takePhoto();
  }
}