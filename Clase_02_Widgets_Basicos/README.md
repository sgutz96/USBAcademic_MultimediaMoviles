# Clase_02_Widgets_Basicos

## 🎯 Objetivo de la Clase

Comprender el funcionamiento de los widgets básicos de Flutter, construir una interfaz gráfica sencilla utilizando los componentes más utilizados del framework y configurar la depuración de aplicaciones en dispositivos móviles físicos para optimizar el proceso de desarrollo.

---

## 🏆 Resultados de Aprendizaje

Al finalizar esta clase, el estudiante será capaz de:

* Comprender qué es un Widget en Flutter.
* Diferenciar widgets visuales, de estructura y de interacción.
* Construir interfaces básicas utilizando widgets fundamentales.
* Ejecutar aplicaciones en dispositivos móviles físicos.
* Utilizar herramientas de depuración para identificar errores.
* Aplicar el proceso de Hot Reload durante el desarrollo.

---

## 📚 Temas de la Clase

### ¿Qué es un Widget?

En Flutter, todo es un Widget. Los widgets son los componentes que permiten construir la interfaz gráfica de una aplicación.

Los widgets pueden representar:

* Texto.
* Imágenes.
* Botones.
* Contenedores.
* Estructuras de diseño.
* Formularios.
* Navegación.

---

## 🧩 Widgets Básicos

### Text

Permite mostrar texto en pantalla.

```dart
Text('Hola Flutter')
```

### Container

Widget utilizado para agrupar y personalizar elementos.

```dart
Container(
  padding: EdgeInsets.all(16),
  child: Text('Contenido')
)
```

### Center

Centra los elementos dentro de la pantalla.

```dart
Center(
  child: Text('Contenido Centrado')
)
```

### Row

Organiza elementos horizontalmente.

```dart
Row(
  children: [
    Icon(Icons.home),
    Text('Inicio')
  ]
)
```

### Column

Organiza elementos verticalmente.

```dart
Column(
  children: [
    Text('Título'),
    Text('Descripción')
  ]
)
```

### Image

Permite mostrar imágenes.

```dart
Image.network('https://...')
```

### Icon

Muestra iconos proporcionados por Flutter.

```dart
Icon(Icons.favorite)
```

### ElevatedButton

Botón con elevación y estilos predeterminados.

```dart
ElevatedButton(
  onPressed: () {},
  child: Text('Aceptar')
)
```

---

## 📱 Estructura de la Aplicación

Durante esta práctica construiremos una pantalla sencilla que contenga:

* Imagen principal.
* Nombre del estudiante.
* Programa académico.
* Breve descripción.
* Botón de acción.
* Iconos decorativos.

---

## 🔍 Depuración en Dispositivo Físico

### Android

1. Activar Opciones de Desarrollador.
2. Activar Depuración USB.
3. Conectar el dispositivo mediante cable USB.
4. Autorizar la conexión desde el teléfono.

Verificar dispositivos conectados:

```bash
flutter devices
```

Ejecutar la aplicación:

```bash
flutter run
```

---

## 🚀 Hot Reload

Flutter permite visualizar cambios en tiempo real sin recompilar toda la aplicación.

Atajo en terminal:

```bash
r
```

Beneficios:

* Desarrollo más rápido.
* Corrección inmediata de errores visuales.
* Mayor productividad.

---

## 🛠️ Proyecto de la Clase

### Aplicación: Mi Tarjeta Personal

La aplicación deberá mostrar:

* Fotografía o avatar.
* Nombre completo.
* Programa académico.
* Correo electrónico.
* Botón de contacto.
* Íconos de redes sociales.

### Diseño de Referencia

```text
┌─────────────────┐
│      FOTO       │
├─────────────────┤
│ Nombre          │
│ Programa        │
│ Correo          │
├─────────────────┤
│ [ Contactar ]   │
├─────────────────┤
│ Redes Sociales  │
└─────────────────┘
```

---

## 🧪 Ejercicio en Clase

### Actividad 1

Crear un nuevo proyecto llamado:

```bash
flutter create widgets_basicos
```

### Actividad 2

Construir una pantalla utilizando obligatoriamente:

* Scaffold
* AppBar
* Container
* Column
* Row
* Text
* Image
* Icon
* ElevatedButton

### Actividad 3

Personalizar la interfaz con:

* Colores institucionales.
* Tipografía.
* Espaciado adecuado.
* Bordes redondeados.

### Actividad 4

Ejecutar la aplicación en un dispositivo móvil físico.

Realizar una captura de pantalla mostrando:

* La aplicación ejecutándose.
* El dispositivo conectado al entorno de desarrollo.

---

## 💡 Buenas Prácticas

* Utilizar nombres descriptivos para variables y widgets.
* Mantener la indentación correcta.
* Evitar código repetido.
* Organizar los widgets en estructuras claras.
* Probar constantemente mediante Hot Reload.

---

## 📝 Tarea

Diseñar una aplicación llamada **Mi Perfil Profesional** que incluya:

* Fotografía.
* Nombre.
* Carrera o profesión.
* Habilidades principales.
* Botón de contacto.
* Información de redes sociales.

La interfaz debe utilizar al menos:

* 8 widgets diferentes.
* 3 iconos.
* 1 imagen.
* 1 botón interactivo.

---

## ✅ Evidencia de Entrega

El estudiante deberá entregar:

1. Repositorio actualizado en GitHub.
2. Captura de la aplicación funcionando en un dispositivo móvil.
3. Código fuente comentado.
4. Captura del comando:

```bash
flutter devices
```

mostrando el dispositivo reconocido correctamente.
