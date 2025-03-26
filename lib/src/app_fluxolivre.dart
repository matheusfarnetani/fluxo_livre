import 'package:flutter/material.dart';
import 'package:fluxo_livre/src/pages/cad_usuario_page.dart';
import 'package:fluxo_livre/src/pages/login_page.dart';
import 'package:fluxo_livre/src/pages/home_page.dart';
import 'package:fluxo_livre/src/pages/register_page.dart';

class AppFluxoLivre extends StatelessWidget {
  const AppFluxoLivre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Fluxo Livre',
      theme: ThemeData(
        primaryColor: const Color(0xFF031C5F),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/register': (context) => const RegisterPage(),
        '/cadnovousuario': (context) => const CadUsuarioPage(),
      },
    );
  }
}
