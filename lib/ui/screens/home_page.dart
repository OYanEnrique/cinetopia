import 'dart:ui';

import 'package:cinetopia/ui/components/buttons.dart';
import 'package:cinetopia/ui/screens/dashboard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1D0E44),
              Color(0xFFB370FF),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Image.asset("assets/logo.png"),
                ),
                Image.asset("assets/splash.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Text("O lugar ideal para busca, salvar e organizar seus filmes favoritos!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                  ),
                ),
                PrimaryButton(text: "Quero começar!", 
                  icon: Icons.arrow_forward, 
                  onTap: () =>
                    Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context) => Dashboard())),
                ),
                
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}