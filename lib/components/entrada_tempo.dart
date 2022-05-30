import 'package:flutter/material.dart';

import 'botao_entrada_tempo.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  const EntradaTempo({
    Key? key,
    required this.titulo,
    required this.valor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BotaoEntradaTempo(icone: Icons.arrow_downward),
            Text(
              valor.toString(),
              style: TextStyle(fontSize: 16),
            ),
            BotaoEntradaTempo(icone: Icons.arrow_upward),
          ],
        ),
      ],
    );
  }
}
