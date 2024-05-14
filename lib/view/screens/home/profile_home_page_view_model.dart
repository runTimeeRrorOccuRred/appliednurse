import 'package:applied_nurse/helpers/base_screen_view.dart';
import 'package:applied_nurse/helpers/base_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileHomePageViewModel = ChangeNotifierProvider((ref) => ProfileHomePageViewModel(ref: ref));

class ProfileHomePageViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  ProfileHomePageViewModel({required this.ref}) : super();

  /// DATA MEMBERS
  
  // 0 - Clock in state | 1 - Take break state | 2 - Clocked out resume state
  int _clockin = 0;
  bool _takeABreak = false;

  /// GETTERS
  int get clockin => _clockin;
  bool get takeABreak => _takeABreak;

  /// SETTERS
  void changeClockInValue(int value) {
    _clockin = value;
    notifyListeners();
  }

  void toggleTakeABreake() {
    _takeABreak = !_takeABreak;
    notifyListeners();
  }


  /// OTHER METHODS
}
