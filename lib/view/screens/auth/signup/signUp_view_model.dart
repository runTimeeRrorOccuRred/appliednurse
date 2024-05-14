import 'package:applied_nurse/helpers/base_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileProgressModel = ChangeNotifierProvider((ref) => ProfileProgressModel(ref: ref));

class ProfileProgressModel extends BaseViewModel {
  Ref ref;
  ProfileProgressModel({required this.ref});

  /// DATA MEMBER
  int _pageNumber = 1;

  /// GETTER
  int get pageNumber => _pageNumber;

  /// SETTER
  void onPageChanged() {
    _pageNumber++;
    notifyListeners();
  }

  void resetProfile() {
    _pageNumber = 1;
    notifyListeners();
  }
}
