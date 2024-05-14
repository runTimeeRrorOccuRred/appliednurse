// ignore_for_file: prefer_final_fields

import 'package:applied_nurse/helpers/base_screen_view.dart';
import 'package:applied_nurse/helpers/base_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardViewModel = ChangeNotifierProvider((ref) => DashboardViewModel(ref: ref));

class DashboardViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  DashboardViewModel({required this.ref}) : super();

  /// DATA MEMBERS
  int _bottomNavigationIndex = 0;


  /// GETTERS
  int get bottomNavigationIndex => _bottomNavigationIndex;

  /// SETTERS
  void changeBottomNavigationIndex(int index) {
    _bottomNavigationIndex = index;
    notifyListeners();
  }


  /// OTHER METHODS
}
