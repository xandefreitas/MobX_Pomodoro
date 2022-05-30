import 'package:flutter/material.dart';

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
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.arrow_downward),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(8),
                primary: Colors.red,
              ),
            ),
            Text(
              valor.toString(),
              style: TextStyle(fontSize: 16),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.arrow_upward),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(8),
                primary: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
