import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/auth/auth_screen.dart';
import 'screens/home/home_screen.dart';
import 'services/auth_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => AuthService()..checkLoginStatus()),
      ],
      child: MaterialApp(
        title: 'Job Application Platform',
        theme: ThemeData(
          primaryColor: const Color(0xFF1D9DB4),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF1D9DB4),
            primary: const Color(0xFF1D9DB4),
            secondary: const Color(0xFF1D9DB4).withOpacity(0.8),
          ),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Color(0xFF1D9DB4)),
            titleTextStyle: TextStyle(
              color: Color(0xFF1D9DB4),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1D9DB4),
              foregroundColor: Colors.white,
              elevation: 4,
              shadowColor: const Color(0xFF1D9DB4).withOpacity(0.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        home: const AuthWrapper(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return authService.isLoggedIn ? const HomeScreen() : const AuthScreen();
  }
}
