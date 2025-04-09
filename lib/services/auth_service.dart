import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService with ChangeNotifier {
  String? _userType;
  String? _email;
  bool _isLoggedIn = false;

  String? get userType => _userType;
  String? get email => _email;
  bool get isLoggedIn => _isLoggedIn;

  Stream<bool> get authStateChanges => Stream.value(_isLoggedIn);

  Future<void> signIn(String email, String password, String userType) async {
    // In a real app, you would validate credentials against a backend
    // For now, we'll just simulate a successful login
    _email = email;
    _userType = userType;
    _isLoggedIn = true;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('userType', userType);
    await prefs.setBool('isLoggedIn', true);

    notifyListeners();
  }

  Future<void> signUp(String email, String password, String userType) async {
    // In a real app, you would create a new user in your backend
    // For now, we'll just simulate a successful signup
    _email = email;
    _userType = userType;
    _isLoggedIn = true;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('userType', userType);
    await prefs.setBool('isLoggedIn', true);

    notifyListeners();
  }

  Future<void> signOut() async {
    _email = null;
    _userType = null;
    _isLoggedIn = false;

    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('email');
    await prefs.remove('userType');
    await prefs.remove('isLoggedIn');

    notifyListeners();
  }

  Future<void> checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    _isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    _email = prefs.getString('email');
    _userType = prefs.getString('userType');
    notifyListeners();
  }
}
