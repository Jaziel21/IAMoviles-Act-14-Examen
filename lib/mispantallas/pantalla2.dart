import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    // Paleta de colores exóticos y elegantes
    final List<Color> exoticColors = [
      const Color(0xFF4A148C), // Púrpura profundo
      const Color(0xFF004D40), // Verde azulado oscuro
      const Color(0xFFD84315), // Naranja quemado
      const Color(0xFF5D4037), // Marrón tierra
      const Color(0xFFC2185B), // Magenta
      const Color(0xFF0277BD), // Azul cerúleo
      const Color(0xFFF9A825), // Amarillo ámbar
      const Color(0xFF455A64), // Gris pizarra
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E), // Un fondo oscuro casi negro para consistencia
      appBar: AppBar(
        title: const Text(
          "Categorías",
          style: TextStyle(
            fontFamily: 'serif',
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white, // Se mantiene el color explícito para asegurar visibilidad
          ),
        ),
        centerTitle: false, // Alinea el título a la izquierda, junto a la flecha
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.filter_list, color: Colors.white), // Se mantiene el icono de filtro
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20), // Ajustado el padding superior
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // El texto "Explora por género" ha sido removido.
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  _itemCategoria("Ficción", exoticColors[0]),
                  _itemCategoria("Misterio", exoticColors[1]),
                  _itemCategoria("Fantasía", exoticColors[2]),
                  _itemCategoria("Biografía", exoticColors[3]),
                  _itemCategoria("Romance", exoticColors[4]),
                  _itemCategoria("Terror", exoticColors[5]),
                  _itemCategoria("Poesía", exoticColors[6]),
                  _itemCategoria("Clásicos", exoticColors[7]),
                ],
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/pantalla3'),
                child: const Text(
                  "IR A MI PERFIL →",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _itemCategoria(String titulo, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Text(
          titulo,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                blurRadius: 4.0,
                color: Colors.black45,
                offset: Offset(2.0, 2.0),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
