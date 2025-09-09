import 'dart:math';

import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
        centerTitle: true,
        backgroundColor:Theme.of(context).colorScheme.primary,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.tertiary,
              ],
              transform: const GradientRotation(pi / 3),
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // App logo / avatar
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.account_balance_wallet_rounded,
                size: 50,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 16),

            // App name
            const Text(
              "CashFlowr",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
            const SizedBox(height: 8),

            // Version
            const Text(
              "Version 1.0.0",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),

            // About description
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "CashFlowr is a simple and elegant personal finance tracker. "
                  "Easily add your daily expenses, track income, and visualize spending with colorful charts. "
                  "Stay in control of your budget and achieve your financial goals.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, height: 1.4),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Features
            const Text(
              "Features",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            const SizedBox(height: 10),
            featureTile(Icons.add_circle, "Quickly add expenses & income",),
            featureTile(Icons.bar_chart, "Visualize spending with charts"),
            featureTile(Icons.category, "Categorize transactions with icons"),
            featureTile(Icons.history, "View daily & monthly history"),
            featureTile(Icons.lock, "Your data stays private (no Firebase used)"),
            const SizedBox(height: 30),

            // Developer info
            const Text(
              "Developed By",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              "Umesh Mali",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16,color: Colors.white),
            ),
            const SizedBox(height: 6),
            const Text(
              "umeshmali341@email.com",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function for features
  // Helper function for features
  Widget featureTile(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            child: Icon(icon, color: Colors.purple),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white, // ✅ make feature text white
              ),
            ),
          ),
        ],
      ),
    );
  }
}
