import 'package:flutter/material.dart';
import 'package:flutter_mobx_pomodoro/components/botao_cronometro.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: BotaoCronometro(icone: Icons.play_arrow, texto: 'Iniciar'),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right:8.0),
              //   child: BotaoCronometro(icone: Icons.stop, texto: 'Parar'),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: BotaoCronometro(icone: Icons.refresh, texto: 'Reiniciar'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
