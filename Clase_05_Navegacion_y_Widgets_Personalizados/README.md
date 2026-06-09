# Clase_05_Navegacion_y_Widgets_Personalizados

## 🎯 Objetivo de la Clase

Aprender a implementar la navegación entre pantallas en Flutter y crear widgets personalizados reutilizables para mejorar la organización, mantenimiento y escalabilidad de las aplicaciones móviles.

---

## 🏆 Resultados de Aprendizaje

Al finalizar esta clase, el estudiante será capaz de:

* Comprender el funcionamiento de la navegación en Flutter.
* Crear y gestionar múltiples pantallas dentro de una aplicación.
* Enviar información entre pantallas.
* Utilizar rutas y navegación mediante Navigator.
* Crear widgets personalizados reutilizables.
* Organizar mejor el código mediante componentes independientes.
* Aplicar principios de reutilización de interfaces.

---

## 📚 Temas de la Clase

### ¿Qué es la Navegación?

La navegación permite desplazarse entre diferentes pantallas de una aplicación.

Ejemplos comunes:

* Pantalla de inicio.
* Perfil de usuario.
* Configuración.
* Detalles de un producto.
* Formulario de contacto.

---

## 📱 Navegación Básica

Flutter utiliza la clase `Navigator` para gestionar el cambio entre pantallas.

### Crear una Nueva Pantalla

```dart
class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Center(
        child: Text('Pantalla Perfil'),
      ),
    );
  }
}
```

---

## 🚀 Navegar a Otra Pantalla

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => PerfilScreen(),
  ),
);
```

---

## ⬅️ Regresar a la Pantalla Anterior

```dart
Navigator.pop(context);
```

---

## 📦 Envío de Datos Entre Pantallas

### Pantalla Destino

```dart
class PerfilScreen extends StatelessWidget {
  final String nombre;

  const PerfilScreen({
    super.key,
    required this.nombre,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(nombre),
    );
  }
}
```

### Navegación

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) =>
        PerfilScreen(nombre: 'Juan Pérez'),
  ),
);
```

---

## 🧩 ¿Qué son los Widgets Personalizados?

Son componentes creados por el desarrollador para reutilizar elementos visuales en diferentes partes de la aplicación.

Beneficios:

* Código más limpio.
* Mayor reutilización.
* Fácil mantenimiento.
* Mejor organización del proyecto.

---

## 🎨 Ejemplo de Widget Personalizado

### Tarjeta de Perfil

```dart
class ProfileCard extends StatelessWidget {
  final String nombre;
  final String profesion;

  const ProfileCard({
    super.key,
    required this.nombre,
    required this.profesion,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(nombre),
        subtitle: Text(profesion),
      ),
    );
  }
}
```

---

## Uso del Widget

```dart
ProfileCard(
  nombre: 'Juan Pérez',
  profesion: 'Diseñador Multimedia',
)
```

---

## 📂 Organización Recomendada

```text
lib/
│
├── screens/
│   ├── home_screen.dart
│   ├── profile_screen.dart
│   └── contact_screen.dart
│
├── widgets/
│   ├── profile_card.dart
│   ├── custom_button.dart
│   └── social_icon.dart
│
├── theme/
│
└── main.dart
```

---

## 🎯 Proyecto de la Clase

Convertiremos la aplicación desarrollada en las clases anteriores en una aplicación multipantalla.

### Pantallas

#### Inicio

* Información general.
* Menú de navegación.

#### Perfil

* Información personal.
* Habilidades.
* Experiencia.

#### Contacto

* Correo electrónico.
* Redes sociales.
* Botones de acción.

---

## 🧪 Ejercicio en Clase

### Actividad 1

Crear tres pantallas:

```text
HomeScreen
ProfileScreen
ContactScreen
```

### Actividad 2

Implementar navegación desde la pantalla principal hacia las demás pantallas.

### Actividad 3

Crear los siguientes widgets personalizados:

* ProfileCard
* CustomButton
* SocialIcon

### Actividad 4

Reemplazar elementos repetidos utilizando los widgets creados.

### Actividad 5

Personalizar la interfaz utilizando el sistema de diseño desarrollado en clases anteriores.

---

## 💡 Buenas Prácticas

* Mantener cada pantalla en un archivo independiente.
* Crear widgets reutilizables para elementos repetitivos.
* Utilizar nombres descriptivos.
* Evitar duplicar código.
* Mantener organizada la estructura de carpetas.
* Aplicar principios de diseño modular.

---

## 📝 Tarea

Desarrollar una aplicación llamada **Portafolio Multimedia** con mínimo tres pantallas:

### Pantalla Inicio

* Presentación personal.
* Imagen principal.

### Pantalla Proyectos

* Lista de proyectos.
* Tarjetas personalizadas.

### Pantalla Contacto

* Redes sociales.
* Correo electrónico.
* Botón de contacto.

### Requisitos

* Navegación funcional entre pantallas.
* Uso mínimo de tres widgets personalizados.
* Aplicación del sistema de diseño creado anteriormente.
* Código organizado en carpetas.

---

## ✅ Evidencia de Entrega

El estudiante deberá entregar:

1. Repositorio GitHub actualizado.
2. Aplicación con mínimo tres pantallas funcionales.
3. Implementación de navegación mediante Navigator.
4. Mínimo tres widgets personalizados.
5. Capturas o video mostrando el flujo de navegación.

### Resultado Esperado

Al finalizar la clase, el estudiante contará con una aplicación estructurada en múltiples pantallas, utilizando navegación entre vistas y componentes reutilizables que servirán como base para el desarrollo de aplicaciones más complejas en las siguientes unidades del curso.
