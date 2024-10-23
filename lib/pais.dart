import 'package:flutter/material.dart';

class Pais extends StatelessWidget {
  final String newCountry;

  const Pais({super.key, required this.newCountry});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('Hizo clic en el item: $newCountry');
      },
      onDoubleTap: () {
        debugPrint('Hizo doble clic en el item: $newCountry');
      },
      onLongPress: () {
        debugPrint('Hizo clic sostenido en el item: $newCountry');
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.grey, width: 1), // Borde alrededor del cuadro
        ),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(
              newCountry,
              style: const TextStyle(fontSize: 16), // Ajusta el tamaño de la fuente si lo prefieres
            ),
          ),
        ),
      ),
    );
  }
}
