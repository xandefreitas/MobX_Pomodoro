import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_pomodoro/components/botao_cronometro.dart';
import 'package:flutter_mobx_pomodoro/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Text(
            '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                !store.iniciado
                    ? Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: BotaoCronometro(
                          icone: Icons.play_arrow,
                          texto: 'Iniciar',
                          onPressed: store.iniciar,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: BotaoCronometro(
                          icone: Icons.stop,
                          texto: 'Parar',
                          onPressed: store.parar,
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: BotaoCronometro(
                    icone: Icons.refresh,
                    texto: 'Reiniciar',
                    onPressed: store.reiniciar,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
