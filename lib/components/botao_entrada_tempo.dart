import 'package:flutter/material.dart';

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
    return ElevatedButton(
      onPressed: onPressed ?? null,
      child: Icon(icone),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(8),
        primary: Colors.red,
      ),
    );
  }
}
