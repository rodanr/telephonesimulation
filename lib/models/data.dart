import 'package:flutter/foundation.dart';

class UserData with ChangeNotifier, DiagnosticableTreeMixin {
  var userStatus = {
    't0': 0,
    't1': 0,
    't2': 0,
    't3': 0,
    't4': 0,
    't5': 0,
    't6': 0,
    't7': 0
  };
  void changeUserStatus(String userName, int statusValue) {
    if (statusValue == 0 || statusValue == 1) {
      if (userStatus[userName] != statusValue) {
        userStatus[userName] = statusValue;
        notifyListeners();
        // ignore: avoid_print
        print(userStatus);
      }
    }
  }
}
