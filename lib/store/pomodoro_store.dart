import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro_store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TipoIntervalo { TRABALHO, DESCANSO }

abstract class _PomodoroStore with Store {
  @observable
  bool iniciado = false;

  @observable
  int minutos = 2;

  @observable
  int segundos = 0;

  @observable
  int tempoTrabalho = 2;

  @observable
  int tempoDescanso = 1;

  @observable
  TipoIntervalo tipoIntervalo = TipoIntervalo.TRABALHO;

  Timer? cronometro;

  @action
  void iniciar() {
    iniciado = true;
    cronometro = Timer.periodic(Duration(seconds: 1), (timer) {
      if (minutos == 0 && segundos == 0) {
        _trocarTipoIntervalo();
      } else if (segundos == 0) {
        segundos = 59;
        minutos--;
      } else {
        segundos--;
      }
    });
  }

  @action
  void parar() {
    iniciado = false;
    cronometro?.cancel();
  }

  @action
  void reiniciar() {
    parar();
    minutos = trabalhando ? tempoTrabalho : tempoDescanso;
    segundos = 0;
  }

  @action
  void incrementarTempoTrabalho() {
    tempoTrabalho++;
    if (trabalhando) reiniciar();
  }

  @action
  void decrementarTempoTrabalho() {
    if (tempoTrabalho > 1) {
      tempoTrabalho--;
      if (trabalhando) reiniciar();
    }
  }

  @action
  void incrementarTempoDescanso() {
    tempoDescanso++;
    if (descansando) reiniciar();
  }

  @action
  void decrementarTempoDescanso() {
    if (tempoDescanso > 1) {
      tempoDescanso--;
      if (descansando) reiniciar();
    }
  }

  void _trocarTipoIntervalo() {
    if (trabalhando) {
      tipoIntervalo = TipoIntervalo.DESCANSO;
      minutos = tempoDescanso;
    } else {
      tipoIntervalo = TipoIntervalo.TRABALHO;
      minutos = tempoTrabalho;
    }
    segundos = 0;
  }

  bool get trabalhando => tipoIntervalo == TipoIntervalo.TRABALHO;
  bool get descansando => tipoIntervalo == TipoIntervalo.DESCANSO;

  bool get trabalhoEmAndamento => trabalhando && iniciado;
  bool get descansoEmAndamento => descansando && iniciado;
}
