import 'package:mobx/mobx.dart';

import 'home_state.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  HomeState state = HomeState.empty();
  @action
  void setState(HomeState value) => state = value;
}
