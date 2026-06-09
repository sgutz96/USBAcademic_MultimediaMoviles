# Clase_03_Temas_Estilizado

## 🎯 Objetivo de la Clase

Aprender a personalizar visualmente una aplicación Flutter mediante la creación de temas, estilos reutilizables y variables de diseño que permitan mantener una identidad visual consistente en toda la aplicación.

---

## 🏆 Resultados de Aprendizaje

Al finalizar esta clase, el estudiante será capaz de:

* Comprender la importancia del diseño visual en aplicaciones móviles.
* Aplicar estilos personalizados a widgets.
* Crear y gestionar temas globales en Flutter.
* Definir variables de diseño reutilizables.
* Implementar una identidad visual coherente en una aplicación.
* Mejorar la experiencia de usuario mediante buenas prácticas de diseño.

---

## 📚 Temas de la Clase

### ¿Qué es la Estilización en Flutter?

La estilización consiste en personalizar la apariencia visual de los componentes de una aplicación para lograr una experiencia consistente, atractiva y alineada con una identidad gráfica.

Elementos que pueden personalizarse:

* Colores.
* Tipografías.
* Tamaños.
* Espaciados.
* Bordes.
* Sombras.
* Iconografía.

---

## 🎨 Sistema de Diseño

Un sistema de diseño permite reutilizar estilos en toda la aplicación evitando configuraciones repetidas.

Beneficios:

* Consistencia visual.
* Mantenimiento más sencillo.
* Escalabilidad.
* Mejor experiencia de usuario.

---

## 🌈 Paleta de Colores

Se recomienda centralizar los colores principales de la aplicación.

### Ejemplo

```dart
class AppColors {
  static const primary = Color(0xFF1565C0);
  static const secondary = Color(0xFF42A5F5);
  static const background = Color(0xFFF5F5F5);
  static const textDark = Color(0xFF212121);
}
```

---

## ✍️ Estilos de Texto

Definir estilos reutilizables permite mantener una misma jerarquía visual.

### Ejemplo

```dart
class AppTextStyles {
  static const title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const body = TextStyle(
    fontSize: 16,
  );
}
```

---

## 📏 Variables de Espaciado

Los espacios también deben ser consistentes.

### Ejemplo

```dart
class AppSpacing {
  static const small = 8.0;
  static const medium = 16.0;
  static const large = 24.0;
}
```

---

## 🎭 Temas Globales

Flutter permite definir un tema general para toda la aplicación.

### Ejemplo

```dart
MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
  ),
)
```

---

## 🧩 Personalización de Widgets

### Text

```dart
Text(
  'Hola Flutter',
  style: AppTextStyles.title,
)
```

### ElevatedButton

```dart
ElevatedButton(
  style: ElevatedButton.styleFrom(
    padding: EdgeInsets.all(16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  onPressed: () {},
  child: Text('Guardar'),
)
```

### Container

```dart
Container(
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  ),
)
```

---

## 📂 Organización Recomendada

Durante esta clase comenzaremos a separar los recursos de diseño del resto de la aplicación.

```text
lib/
│
├── main.dart
│
├── theme/
│   ├── app_colors.dart
│   ├── app_styles.dart
│   ├── app_spacing.dart
│   └── app_theme.dart
│
├── screens/
│
└── widgets/
```

---

## 🚀 Proyecto de la Clase

Tomaremos la aplicación **Mi Tarjeta Personal** desarrollada en la clase anterior y realizaremos una actualización visual completa.

### Mejoras a Implementar

* Paleta de colores personalizada.
* Tipografía consistente.
* Bordes redondeados.
* Espaciados uniformes.
* Botones estilizados.
* Tarjetas visualmente atractivas.
* Mejor organización del código.

---

## 🧪 Ejercicio en Clase

### Actividad 1

Crear una carpeta llamada:

```text
theme/
```

### Actividad 2

Crear los siguientes archivos:

```text
app_colors.dart
app_styles.dart
app_spacing.dart
app_theme.dart
```

### Actividad 3

Definir:

* 4 colores principales.
* 3 estilos de texto.
* 3 tamaños de espaciado.

### Actividad 4

Aplicar estas configuraciones a la aplicación creada en la clase anterior.

### Actividad 5

Comparar visualmente la versión original y la versión estilizada.

---

## 💡 Buenas Prácticas

* Evitar colores definidos directamente dentro de los widgets.
* Utilizar variables reutilizables.
* Mantener una jerarquía visual clara.
* Aplicar consistencia en tamaños y espacios.
* Centralizar la configuración visual en archivos específicos.

---

## 📝 Tarea

Rediseñar la aplicación **Mi Perfil Profesional** aplicando un sistema de diseño propio.

La aplicación deberá incluir:

* Paleta de colores personalizada.
* Tipografía consistente.
* Espaciado uniforme.
* Botones personalizados.
* Tarjetas estilizadas.
* Íconos acordes a la identidad visual.

### Requisito Adicional

Toda la configuración visual deberá estar centralizada en archivos de tema y no directamente dentro de los widgets.

---

## ✅ Evidencia de Entrega

El estudiante deberá entregar:

1. Repositorio GitHub actualizado.
2. Capturas de la aplicación antes y después de la estilización.
3. Código organizado utilizando la carpeta `theme`.
4. Implementación de colores, estilos y espaciados reutilizables.
5. Aplicación ejecutándose correctamente en dispositivo físico o emulador.

### Resultado Esperado

Al finalizar la clase, la aplicación desarrollada en la Clase 02 deberá presentar una apariencia profesional, organizada y consistente, utilizando variables de diseño y temas reutilizables que faciliten su crecimiento en futuras clases.
