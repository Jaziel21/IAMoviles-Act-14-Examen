import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // --- IMAGEN DE FONDO --- //
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondo_perfil.PNG'), // <-- Corregido a .PNG
                fit: BoxFit.cover,
              ),
            ),
          ),
          // --- FILTRO OSCURO --- //
          Container(
            color: Colors.black.withOpacity(0.7), // Aumentamos la opacidad para mejorar la legibilidad
          ),
          // --- CONTENIDO PRINCIPAL --- //
          Column(
            children: [
              AppBar(
                title: const Text(
                  "Perfil",
                  style: TextStyle(
                    fontFamily: 'serif',
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white, size: 30),
                    onPressed: () {},
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Centramos el contenido verticalmente
                    children: [
                      // --- Sección de Perfil --- //
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage('assets/images/perfil.PNG'),
                            backgroundColor: Colors.white24,
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Alfredo Martinez",
                                style: TextStyle(
                                  fontSize: 22, 
                                  fontWeight: FontWeight.bold, 
                                  color: Colors.white
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "TUS FRASES: 15",
                                style: TextStyle(color: Colors.white70, fontSize: 14),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "LIKES RECIBIDOS: 88",
                                style: TextStyle(color: Colors.white70, fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 60), // Mayor separación

                      // --- Botones de Acción --- //
                      _buildActionButton("VER FRASES", isPrimary: false),
                      const SizedBox(height: 20),
                      _buildActionButton("AÑADIR NUEVA FRASE", isPrimary: true),
                      const Spacer(), // Empuja los botones hacia el centro y deja espacio abajo
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget para construir los botones de acción
  Widget _buildActionButton(String text, {required bool isPrimary}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: isPrimary ? Colors.white : Colors.transparent,
          foregroundColor: isPrimary ? Colors.black : Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: isPrimary ? BorderSide.none : const BorderSide(color: Colors.white, width: 2),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
