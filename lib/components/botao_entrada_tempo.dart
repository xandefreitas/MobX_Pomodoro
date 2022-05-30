import 'package:flutter/material.dart';

class BotaoEntradaTempo extends StatelessWidget {
  final IconData icone;
  const BotaoEntradaTempo({
    Key? key,
    required this.icone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Icon(icone),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(8),
        primary: Colors.red,
      ),
    );
  }
}
