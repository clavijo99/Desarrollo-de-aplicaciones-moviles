import 'package:flutter/widgets.dart';

class SessionManagerProvider with ChangeNotifier {
  
  bool _isSessionExpired = false;

  bool get isSessionExpired => _isSessionExpired;

  void setSessionExpired() {
    _isSessionExpired = true;
    notifyListeners();
  }

  void resetSessionExpired() {
    _isSessionExpired = false;
    notifyListeners();
  }
}
