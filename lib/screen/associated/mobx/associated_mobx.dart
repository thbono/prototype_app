import 'package:mobx/mobx.dart';
import 'package:prototype_app/helper/storage_data.dart';
import 'package:prototype_app/model/associated.dart';

part 'associated_mobx.g.dart';

class AssociatedMobx = AssociatedMobxBase with _$AssociatedMobx;

abstract class AssociatedMobxBase with Store {
  @observable
  ObservableFuture<List<Associated>> associatedList = ObservableFuture<List<Associated>>.value([]);

  @action
  Future fetchAll() => associatedList = ObservableFuture(StorageData().fetchAll());
}