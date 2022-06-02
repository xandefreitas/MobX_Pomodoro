import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro_store.dart';

class BotaoEntradaTempo extends StatelessWidget {
  final IconData icone;
  final Function()? onPressed;
  const BotaoEntradaTempo({
    Key? key,
    required this.icone,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return ElevatedButton(
      onPressed: onPressed ?? null,
      child: Icon(icone),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(8),
        primary: store.trabalhando ? Colors.red : Colors.green,
      ),
    );
  }
}
