
# Descripción General

Esta es una aplicación de Flutter para una librería, diseñada para permitir a los usuarios explorar diferentes categorías de libros y ver perfiles de usuario. La aplicación tiene una interfaz de usuario moderna y elegante, con un tema oscuro consistente en todas las pantallas.

# Estilo y Diseño

- **Tema:** Oscuro, con un fondo principal de color casi negro (`#1E1E1E`).
- **Tipografía:** Se utiliza una fuente con serifa para los títulos principales, dándole un toque clásico y elegante.
- **Paleta de Colores (Categorías):** Se usa una paleta de colores vibrantes y exóticos para las tarjetas de categorías, creando un contraste atractivo con el fondo oscuro.
- **Tarjetas:** Las tarjetas de categorías tienen esquinas redondeadas y una sombra sutil para dar una sensación de profundidad.
- **Botones:** Los botones tienen un estilo moderno, con esquinas redondeadas y un ligero efecto de opacidad.

# Características Implementadas

- **Pantalla de Inicio (`Inicio.dart`):
  - Muestra un fondo de pantalla completo con una imagen temática de una librería.
  - Superpone un filtro oscuro para garantizar la legibilidad del texto.
  - Presenta el nombre de la librería "LIBRERÍA AJMG" con una tipografía destacada y sombra.
  - Muestra información del autor y un eslogan motivador.
  - Incluye un botón "VER CATEGORÍAS" que navega a la pantalla de categorías.

- **Pantalla de Categorías (`pantalla2.dart`):
  - Muestra una rejilla (Grid) de 2 columnas con diferentes géneros de libros.
  - Cada categoría es una tarjeta con un color de fondo único y vibrante.
  - El título "Categorías" aparece en la barra de navegación superior.
  - Incluye un botón de navegación para ir a la pantalla de perfil.

- **Pantalla de Perfil (`pantalla3.dart`):
  - Utiliza una imagen de una estantería de libros (`fondo_perfil.png`) como fondo de pantalla.
  - Aplica un filtro oscuro sobre el fondo para mejorar la legibilidad del contenido.
  - Muestra la información del perfil del usuario, incluyendo una imagen, nombre y estadísticas (frases, likes).
  - La imagen de perfil se carga desde los assets locales.
  - Contiene botones de acción rediseñados ("VER FRASES" y "AÑADIR NUEVA FRASE") para destacar sobre el nuevo fondo.
  - Mantiene la consistencia del tema oscuro.

- **Gestión de Assets:
  - Se ha configurado el archivo `pubspec.yaml` para incluir una carpeta de `assets/images/`.
  - Las imágenes para el fondo de inicio, la foto de perfil y el fondo del perfil se cargan desde esta carpeta local.

# Plan Actual

- **Tarea:** Añadir una imagen de fondo a la pantalla de perfil.
- **Estado:** Completado. Se ha añadido la imagen `fondo_perfil.png` a la carpeta de assets y se ha modificado el archivo `lib/mispantallas/pantalla3.dart` para usarla como fondo, aplicando un filtro oscuro y ajustando el diseño para una mejor integración visual.
