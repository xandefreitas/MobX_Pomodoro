import 'package:flutter/material.dart';

class BotaoCronometro extends StatelessWidget {
  final IconData icone;
  final String texto;
  const BotaoCronometro({
    Key? key,
    required this.icone,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.all(16),
        textStyle: TextStyle(fontSize: 24),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(icone, size: 32),
          ),
          Text(texto),
        ],
      ),
    );
  }
}
