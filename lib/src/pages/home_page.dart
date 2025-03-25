import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void increment() {
    setState(() {
      if (count < 3) count++;
    });
  }

  void decrement() {
    setState(() {
      if (count > 0) count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Estilo ativo e desabilitado para os botões
    final ButtonStyle activeStyle = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFffdf2b),
      fixedSize: const Size(120, 75),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    );
    final ButtonStyle disabledStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.grey,
      fixedSize: const Size(120, 75),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            child: const Text(
              'Sair',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count == 3 ? "Acesso Bloqueado" : "Acesso Liberado",
              style: TextStyle(
                fontSize: 30,
                color: count == 3 ? Colors.red : Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$count',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 60,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),
            // Botões Remover e Adicionar lado a lado
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: count > 0 ? activeStyle : disabledStyle,
                  onPressed: () {
                    if (count > 0) {
                      decrement();
                    }
                  },
                  child: const Text(
                    "Remover",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF00004c),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  style: count < 3 ? activeStyle : disabledStyle,
                  onPressed: () {
                    if (count < 3) {
                      increment();
                    }
                  },
                  child: const Text(
                    "Adicionar",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF00004c),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
