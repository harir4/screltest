import 'package:flutter/material.dart';
import 'package:screltest/model/dataModel.dart';
import 'package:screltest/modelview/apiservices.dart';

class DataController extends ChangeNotifier {
  final _apiservice = ApiServices();
  List<ApiModel>? dataList;
  bool loading = false;

  Future<void> DataView() async {
    try {
      loading = true;
      notifyListeners();
      dataList = await _apiservice.getData();
      loading = false;
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}
