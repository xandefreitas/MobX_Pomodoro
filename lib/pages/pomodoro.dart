import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_pomodoro/components/entrada_tempo.dart';
import 'package:flutter_mobx_pomodoro/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

import '../components/cronometro.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Observer(
        builder: (_) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Cronometro(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EntradaTempo(
                    titulo: 'Trabalho',
                    valor: store.tempoTrabalho,
                    incremento: store.trabalhoEmAndamento ? null : store.incrementarTempoTrabalho,
                    decremento: store.trabalhoEmAndamento ? null : store.decrementarTempoTrabalho,
                  ),
                  EntradaTempo(
                    titulo: 'Descanso',
                    valor: store.tempoDescanso,
                    incremento: store.descansoEmAndamento ? null : store.incrementarTempoDescanso,
                    decremento: store.descansoEmAndamento ? null : store.decrementarTempoDescanso,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
