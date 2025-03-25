import 'package:flutter/material.dart';

class InputLoginWidget extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool obscure;

  const InputLoginWidget({
    super.key,
    required this.icon,
    required this.hint,
    required this.obscure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(14),
      ),
      margin: const EdgeInsets.only(bottom: 15),
      child: TextField(
        obscureText: obscure,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontSize: 16,
          ),
          prefixIcon: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}
