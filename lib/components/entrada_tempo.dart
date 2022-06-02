import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'botao_entrada_tempo.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? incremento;
  final void Function()? decremento;
  const EntradaTempo({
    Key? key,
    required this.titulo,
    required this.valor,
    this.incremento,
    this.decremento,
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
            BotaoEntradaTempo(
              icone: Icons.arrow_downward,
              onPressed: decremento,
            ),
            Text(
              valor.toString(),
              style: TextStyle(fontSize: 16),
            ),
            BotaoEntradaTempo(
              icone: Icons.arrow_upward,
              onPressed: incremento,
            ),
          ],
        ),
      ],
    );
  }
}
