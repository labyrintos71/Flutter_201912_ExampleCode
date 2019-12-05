import 'dart:async';

import 'package:examplecopy/viewmodel/list_viewmodel.dart';
import 'package:examplecopy/model/list_Item.dart';

class ListBloc {
  final _listViewModel = ListViewModel();
  final _listController = StreamController<List<ListItem>>();

  Stream<List<ListItem>> get listItems => _listController.stream;

  ListBloc() {
    _listController.add(_listViewModel.getListItems());
  }
}