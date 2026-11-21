# Desarrollo Móvil en Flutter - Curso Multimedia

Este repositorio contiene los materiales y ejercicios del curso de Desarrollo Móvil en Flutter. El curso recorre los conceptos fundamentales del desarrollo de aplicaciones móviles, desde los principios básicos hasta la gestión de estado, el consumo de APIs, la persistencia de datos, el uso de sensores y funciones del dispositivo (giroscopio, vibración, notificaciones) y la entrega de una aplicación compilada.

A lo largo de las 16 clases se construye un único proyecto integrador que crece clase a clase, de modo que cada tema se aplica sobre una aplicación real y no sobre ejercicios aislados.

---

## Contenido

1. [Proyecto integrador](#proyecto-integrador)
2. [Cortes y evaluación](#cortes-y-evaluación)
3. [Lista completa de clases](#lista-completa-de-clases)
4. [Primer corte: clases 01 a 06](#primer-corte-clases-01-a-06-30)
5. [Segundo corte: clases 07 a 11](#segundo-corte-clases-07-a-11-30)
6. [Tercer corte: clases 12 a 16](#tercer-corte-clases-12-a-16-40)
7. [Temas complementarios](#temas-complementarios)
8. [Estructura del repositorio](#estructura-del-repositorio)
9. [Requisitos](#requisitos)
10. [Instalación](#instalación)

---

## Proyecto integrador

**Catálogo de películas.** Aplicación móvil que consume una API pública de películas, permite explorar el catálogo, ver el detalle de cada título, marcar favoritos, conservar esos favoritos en el dispositivo e interactuar con el teléfono mediante sensores, vibración y notificaciones.

El proyecto evoluciona durante el curso:

| Corte | Clases | Resultado |
|-------|--------|-----------|
| Primer corte | 01 a 06 | Pantallas con tema propio, diseño adaptable, navegación y formulario de búsqueda |
| Segundo corte | 07 a 11 | Interacción real: filtros, favoritos, estado compartido con Provider, listas, componentes propios y animaciones |
| Tercer corte | 12 a 16 | Datos desde una API, persistencia local, arquitectura por capas, sensores, vibración, notificaciones y APK firmado |

Funciones del dispositivo que incorpora el proyecto en el tercer corte:

- Agitar o inclinar el teléfono para obtener una película aleatoria (acelerómetro y giroscopio).
- Vibración al marcar un favorito o al ocurrir un error.
- Notificación local que recuerda ver una película guardada.

---

## Cortes y evaluación

| Corte | Clases | Peso en la nota final |
|-------|--------|-----------------------|
| Primer corte | 01 a 06 | 30% |
| Segundo corte | 07 a 11 | 30% |
| Tercer corte | 12 a 16 | 40% |

El tercer corte tiene el mayor peso porque concentra la integración de todo lo aprendido: consumo de API, persistencia, arquitectura, sensores, notificaciones y entrega del proyecto final.

Cada corte se evalúa con los entregables del proyecto integrador correspondientes a sus clases. El tercer corte incluye además la entrega del proyecto final completo y su sustentación.

---

## Lista completa de clases

| Clase | Tema principal | Corte |
|-------|----------------|-------|
| 01 | Entorno y Dart básico | Primero (30%) |
| 02 | Widgets básicos | Primero (30%) |
| 03 | Temas y estilizado | Primero (30%) |
| 04 | Layouts responsivos | Primero (30%) |
| 05 | Navegación | Primero (30%) |
| 06 | Inputs y formularios | Primero (30%) |
| 07 | Dart avanzado y async/await | Segundo (30%) |
| 08 | Estado local | Segundo (30%) |
| 09 | Provider | Segundo (30%) |
| 10 | Listas, builders y transiciones Hero | Segundo (30%) |
| 11 | Componentes reutilizables y animaciones implícitas | Segundo (30%) |
| 12 | APIs, FutureBuilder y manejo de errores | Tercero (40%) |
| 13 | Persistencia de datos y arquitectura por capas | Tercero (40%) |
| 14 | Sensores y vibración | Tercero (40%) |
| 15 | Notificaciones, permisos y recursos del dispositivo | Tercero (40%) |
| 16 | Compilación y entrega | Tercero (40%) |

---

## Primer corte: clases 01 a 06 (30%)

Objetivo del corte: que el estudiante conozca el entorno, escriba Dart con soltura y construya interfaces completas, adaptables y navegables.

### Clase 01. Entorno y Dart básico

- **Qué es:** sesión de arranque. Se instala y configura Flutter, se crea el primer proyecto y se recorre su estructura de carpetas. Se introduce el lenguaje Dart: variables, tipos, null safety, listas, mapas, funciones simples y clases.
- **Cómo es:** práctica guiada. Cada estudiante deja su entorno funcionando, ejecuta la app de ejemplo y modifica pequeños fragmentos de código para ver el resultado.
- **Para qué sirve:** sin un entorno estable y sin bases de Dart, el resto del curso se vuelve lento. Desde la clase 02 el estudiante ya escribe Dart en cada widget.
- **Entregable:** app de ejemplo ejecutándose en emulador o dispositivo, y ejercicios cortos de Dart resueltos.

### Clase 02. Widgets básicos

- **Qué es:** introducción a la idea central de Flutter: todo es un widget. Se trabajan `Text`, `Container`, `Row`, `Column`, `Stack`, `Image` e `Icon`.
- **Cómo es:** se arma paso a paso la pantalla de inicio del catálogo con datos estáticos, combinando widgets y observando cómo se anidan.
- **Para qué sirve:** da el vocabulario visual con el que se construye cualquier pantalla y enseña a leer el árbol de widgets.
- **Entregable:** pantalla de inicio del catálogo con datos fijos.

### Clase 03. Temas y estilizado

- **Qué es:** personalización de la apariencia mediante `ThemeData`, paleta de colores, tipografías, estilos de texto y modo claro y oscuro.
- **Cómo es:** el estudiante define un tema propio y lo aplica globalmente, en lugar de dar estilo widget por widget.
- **Para qué sirve:** garantiza coherencia visual y evita repetir estilos. Es una habilidad especialmente relevante para estudiantes de Multimedia.
- **Entregable:** tema propio (colores y tipografías) aplicado a toda la app.

### Clase 04. Layouts responsivos

- **Qué es:** creación de interfaces que se adaptan a distintos tamaños y orientaciones de pantalla con `Flex`, `Expanded`, `Flexible`, `LayoutBuilder` y `MediaQuery`.
- **Cómo es:** se prueba la misma pantalla en distintos tamaños de emulador y se corrigen desbordamientos y proporciones.
- **Para qué sirve:** una app real se usa en teléfonos y tabletas de tamaños muy distintos; este tema evita interfaces rotas.
- **Entregable:** pantalla de inicio adaptable a teléfono y tableta.

### Clase 05. Navegación

- **Qué es:** manejo de rutas y navegación entre pantallas con `Navigator`, el parámetro `routes` de `MaterialApp` y paso de datos entre pantallas. Se introduce `go_router` como opción moderna.
- **Cómo es:** se divide la app en varias pantallas y se conecta la lista con el detalle de cada película.
- **Para qué sirve:** casi ninguna app cabe en una sola pantalla; la navegación estructura el flujo del usuario.
- **Entregable:** navegación funcional entre lista y detalle de película.

### Clase 06. Inputs y formularios

- **Qué es:** captura de datos del usuario con `TextField`, `Form`, `TextFormField`, `DropdownButton`, validaciones y controladores.
- **Cómo es:** se construye un formulario de búsqueda y filtros, con mensajes de error claros cuando los datos no son válidos.
- **Para qué sirve:** permite que la app reciba información del usuario de forma segura y ordenada. Cierra el primer corte con una app interactiva a nivel de interfaz.
- **Entregable:** formulario de búsqueda y filtros con validación.

---

## Segundo corte: clases 07 a 11 (30%)

Objetivo del corte: dar vida a la interfaz con lógica, estado compartido, listas dinámicas, componentes propios y animaciones.

### Clase 07. Dart avanzado y async/await

- **Qué es:** profundización en Dart: funciones de orden superior, manejo de colecciones (`map`, `where`, `reduce`), clases y constructores con nombre, y programación asíncrona con `Future`, `Stream` y `async/await`.
- **Cómo es:** ejercicios de lógica sobre la lista de películas: filtrar, ordenar y simular una carga de datos con retardo.
- **Para qué sirve:** la lógica de la app y, más adelante, el consumo de APIs y la lectura de sensores dependen de dominar colecciones, `Future` y `Stream`.
- **Entregable:** funciones de filtrado y ordenamiento, y una simulación de carga asíncrona.

### Clase 08. Estado local

- **Qué es:** gestión del estado dentro de un widget con `StatefulWidget` y `setState`, y ciclo de vida básico de un widget con estado.
- **Cómo es:** se agregan elementos interactivos: botón de favorito, contador de votos y cambio de vista.
- **Para qué sirve:** es la primera forma de hacer que la interfaz reaccione a las acciones del usuario, y prepara la necesidad de un estado compartido.
- **Entregable:** botón de favorito y contador funcionales en el catálogo.

### Clase 09. Provider

- **Qué es:** patrón de gestión de estado con `ChangeNotifier`, `ChangeNotifierProvider` y `Consumer`. Se menciona Riverpod como siguiente paso para quienes quieran profundizar.
- **Cómo es:** se traslada el estado de favoritos a un proveedor central que varias pantallas consultan y modifican.
- **Para qué sirve:** resuelve el problema de compartir estado entre pantallas sin pasar datos manualmente por todo el árbol de widgets.
- **Entregable:** favoritos compartidos entre la lista, el detalle y una pantalla de favoritos.

### Clase 10. Listas, builders y transiciones Hero

- **Qué es:** listas dinámicas y eficientes con `ListView`, `GridView`, `ListView.builder` y `GridView.builder`, junto con la transición `Hero` entre la lista y el detalle.
- **Cómo es:** el catálogo deja de armarse a mano y se genera a partir de una colección de datos, con alternancia entre vista de lista y de cuadrícula. La portada de cada película viaja animada hasta la pantalla de detalle.
- **Para qué sirve:** casi toda app muestra colecciones de elementos; los builders construyen solo lo visible y mantienen buen rendimiento con muchos datos. `Hero` aporta un primer efecto visual de alto impacto con muy poco código.
- **Entregable:** catálogo en lista y en cuadrícula generado desde datos, con transición `Hero` al detalle.

### Clase 11. Componentes reutilizables y animaciones implícitas

- **Qué es:** creación de widgets propios y reutilizables (tarjeta de película, botones, encabezados, estados vacíos) y animaciones implícitas con `AnimatedContainer`, `AnimatedOpacity` y `AnimatedSwitcher`.
- **Cómo es:** se refactoriza el código de las clases anteriores, extrayendo piezas repetidas a widgets con parámetros, y se añaden animaciones sencillas a esos componentes.
- **Para qué sirve:** mejora la modularidad, reduce código duplicado y facilita mantener y escalar la app. Las animaciones dan acabado visual, un aspecto clave en el perfil de Multimedia. Cierra el segundo corte con una base de código ordenada y atractiva.
- **Entregable:** biblioteca de widgets propios con animaciones, usada en todo el proyecto.

---

## Tercer corte: clases 12 a 16 (40%)

Objetivo del corte: conectar la app con datos reales, hacerla persistente, ordenarla con una arquitectura clara, aprovechar el hardware del teléfono y entregarla compilada.

### Clase 12. APIs, FutureBuilder y manejo de errores

- **Qué es:** consumo de APIs RESTful con el paquete `http`, conversión de JSON a modelos de datos, y uso de `FutureBuilder` y `StreamBuilder`. Incluye el manejo de errores y los estados de carga, vacío y fallo.
- **Cómo es:** el catálogo deja de usar datos locales y pasa a leer películas de una API pública, mostrando indicadores de carga y mensajes claros cuando algo falla.
- **Para qué sirve:** es el paso de una app de práctica a una app con datos reales, y enseña a diseñar la interfaz pensando en que la red puede fallar.
- **Entregable:** catálogo alimentado desde la API, con estados de carga y error.

### Clase 13. Persistencia de datos y arquitectura por capas

- **Qué es:** almacenamiento local con `shared_preferences` para datos simples y `sqflite` para datos estructurados, junto con la separación del código en capas (modelos, servicios, providers y vistas) y la depuración con DevTools.
- **Cómo es:** los favoritos se guardan en el dispositivo y se recuperan al abrir la app. En paralelo se reorganiza el proyecto, moviendo el acceso a la API y a la base de datos a servicios independientes de la interfaz.
- **Para qué sirve:** permite que la información del usuario sobreviva al cierre de la app y deja un proyecto ordenado, fácil de depurar y de ampliar. Es la base sobre la que se añaden las funciones del dispositivo en las clases siguientes.
- **Entregable:** favoritos que se conservan al cerrar la app y proyecto organizado por capas, con una descripción breve de su estructura.

### Clase 14. Sensores y vibración

- **Qué es:** lectura de los sensores del teléfono con el paquete `sensors_plus` (giroscopio y acelerómetro, mediante `Stream`) y uso de la vibración con `HapticFeedback` y el paquete `vibration`.
- **Cómo es:** el estudiante lee los valores del sensor en pantalla, detecta el gesto de agitar o inclinar el teléfono para mostrar una película aleatoria, y añade vibración al marcar un favorito o al ocurrir un error. Se explica cómo filtrar el ruido de las lecturas y cómo cancelar las suscripciones para no gastar batería.
- **Para qué sirve:** muestra que una app móvil puede reaccionar al movimiento y dar respuesta física al usuario, algo que distingue a las apps móviles de las web. Reutiliza lo aprendido sobre `Stream` en las clases 07 y 12.
- **Entregable:** función de película aleatoria al agitar o inclinar el teléfono y vibración al marcar favoritos.
- **Nota:** los sensores y la vibración se prueban en un dispositivo físico; el emulador solo los simula de forma limitada.

### Clase 15. Notificaciones, permisos y recursos del dispositivo

- **Qué es:** notificaciones locales con `flutter_local_notifications` (inmediatas y programadas), solicitud de permisos con `permission_handler` y uso de un recurso adicional del dispositivo a elección: cámara o galería con `image_picker`, o geolocalización con `geolocator`.
- **Cómo es:** se pide al usuario el permiso de notificaciones, se programa un recordatorio para ver una película guardada y se maneja el caso en que el permiso sea denegado. Después cada estudiante integra un recurso adicional al proyecto.
- **Para qué sirve:** las notificaciones mantienen al usuario conectado con la app, y el manejo correcto de permisos es obligatorio en cualquier app publicada, tanto en Android como en iOS.
- **Entregable:** recordatorio mediante notificación local, flujo de permisos y un recurso adicional integrado al proyecto.
- **Nota:** las notificaciones push remotas (Firebase Cloud Messaging) se mencionan como ampliación, pero no forman parte de la evaluación.

### Clase 16. Compilación y entrega

- **Qué es:** generación de APK y AAB firmado, configuración de nombre, icono y permisos de la app (`AndroidManifest.xml` e `Info.plist`), y revisión demostrativa del proceso de publicación en Google Play Store y Apple App Store.
- **Cómo es:** cada estudiante compila su proyecto final, lo instala en un dispositivo y lo presenta, verificando que sensores, vibración y notificaciones funcionan en la versión compilada. La publicación en las tiendas se explica de forma demostrativa, ya que requiere cuentas de desarrollador de pago y, para iOS, un equipo Mac.
- **Para qué sirve:** cierra el ciclo completo de una aplicación, desde la idea hasta un archivo instalable listo para distribuir.
- **Entregable:** APK firmado del proyecto final y sustentación.

---

## Temas complementarios

Estos temas no forman parte de la secuencia principal, pero pueden trabajarse como ampliación o proyecto final:

- Notificaciones push remotas con Firebase Cloud Messaging.
- Autenticación biométrica (huella o rostro).
- Riverpod como alternativa a Provider.
- Pruebas de widgets y pruebas unitarias.

---

## Estructura del repositorio

El repositorio está organizado en carpetas, una por clase:

```
curso-flutter/
├── clase-01-entorno-dart-basico/
├── clase-02-widgets-basicos/
├── clase-03-temas-estilizado/
├── clase-04-layouts-responsivos/
├── clase-05-navegacion/
├── clase-06-inputs-formularios/
├── clase-07-dart-avanzado-async/
├── clase-08-estado-local/
├── clase-09-provider/
├── clase-10-listas-builders-hero/
├── clase-11-componentes-animaciones/
├── clase-12-apis-futurebuilder/
├── clase-13-persistencia-arquitectura/
├── clase-14-sensores-vibracion/
├── clase-15-notificaciones-permisos/
└── clase-16-compilacion-entrega/
```

Cada carpeta contiene el código de la clase, los ejercicios propuestos y, cuando aplica, la solución de referencia.

---

## Requisitos

- **Flutter:** versión 3.24 o superior
- **Dart:** versión 3.x (incluida con Flutter)
- **IDE recomendado:** Android Studio o VS Code con las extensiones de Flutter y Dart
- **Dispositivo de pruebas:** emulador de Android para las clases 01 a 13; **dispositivo físico Android con depuración USB activada** para las clases 14 a 16, ya que los sensores, la vibración y las notificaciones no se comportan igual en el emulador
- **Para compilar en iOS:** equipo Mac con Xcode y cuenta de desarrollador de Apple (opcional; el curso se trabaja con Android)

Para verificar que el entorno está listo, ejecuta:

```bash
flutter doctor
```

---

## Instalación

Para comenzar a trabajar con el código, sigue estos pasos:

1. Clona este repositorio:

   ```bash
   git clone https://github.com/tuusuario/curso-flutter.git
   ```

2. Entra en la carpeta del repositorio y luego en la clase que quieras ejecutar:

   ```bash
   cd curso-flutter/clase-01-entorno-dart-basico
   ```

3. Instala las dependencias:

   ```bash
   flutter pub get
   ```

4. Ejecuta la aplicación en el emulador o dispositivo conectado:

   ```bash
   flutter run
   ```

Reemplaza `tuusuario` por el nombre de usuario del repositorio real antes de publicarlo.