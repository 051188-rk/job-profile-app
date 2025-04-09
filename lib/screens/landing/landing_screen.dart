import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../auth/auth_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),
              const Text(
                'Find Your Dream Job',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1D9DB4),
                ),
                textAlign: TextAlign.center,
              ).animate().fadeIn().slideY(),
              const SizedBox(height: 16),
              const Text(
                'Discover thousands of job opportunities with all the information you need. Its your future, come find it.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ).animate().fadeIn().slideY(delay: 200.ms),
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/landing_image.png',
                height: 250,
              ).animate().fadeIn().slideY(delay: 400.ms),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AuthScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                  shadowColor: const Color(0xFF1D9DB4).withOpacity(0.3),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18),
                ),
              ).animate().fadeIn().slideY(delay: 600.ms),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AuthScreen()),
                  );
                },
                child: const Text(
                  'Already have an account? Sign In',
                  style: TextStyle(
                    color: Color(0xFF1D9DB4),
                    fontSize: 16,
                  ),
                ),
              ).animate().fadeIn().slideY(delay: 800.ms),
            ],
          ),
        ),
      ),
    );
  }
} 