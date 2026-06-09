# Clase_04_Layouts_Responsivos

## 🎯 Objetivo de la Clase

Comprender cómo construir interfaces adaptables en Flutter que respondan correctamente a diferentes tamaños de pantalla y orientaciones, utilizando herramientas y widgets que permitan crear aplicaciones móviles modernas y responsivas.

---

## 🏆 Resultados de Aprendizaje

Al finalizar esta clase, el estudiante será capaz de:

* Comprender el concepto de diseño responsivo.
* Adaptar interfaces a diferentes dispositivos móviles.
* Utilizar MediaQuery para obtener información de la pantalla.
* Implementar layouts flexibles con Expanded y Flexible.
* Diseñar interfaces que funcionen en orientación vertical y horizontal.
* Aplicar buenas prácticas de experiencia de usuario en múltiples tamaños de pantalla.

---

## 📚 Temas de la Clase

### ¿Qué es un Layout Responsivo?

Un layout responsivo es una interfaz que se adapta automáticamente al tamaño y orientación del dispositivo donde se ejecuta la aplicación.

El objetivo es garantizar que la aplicación se visualice correctamente en:

* Teléfonos pequeños.
* Teléfonos grandes.
* Tablets.
* Dispositivos plegables.
* Orientación vertical (Portrait).
* Orientación horizontal (Landscape).

---

## 📱 Problemas Comunes

Cuando una aplicación no es responsiva pueden ocurrir situaciones como:

* Texto cortado.
* Botones fuera de pantalla.
* Imágenes deformadas.
* Desbordamientos (Overflow).
* Mala experiencia de usuario.

---

## 📏 MediaQuery

Flutter permite acceder a las dimensiones del dispositivo mediante MediaQuery.

### Ejemplo

```dart
final size = MediaQuery.of(context).size;

double ancho = size.width;
double alto = size.height;
```

### Obtener Ancho y Alto

```dart
Container(
  width: MediaQuery.of(context).size.width * 0.8,
)
```

---

## 🧩 Widgets para Layouts Responsivos

### Expanded

Permite que un widget ocupe el espacio disponible.

```dart
Expanded(
  child: Container()
)
```

### Flexible

Permite controlar cómo se distribuye el espacio.

```dart
Flexible(
  flex: 2,
  child: Container(),
)
```

### SizedBox

Añade espacios y dimensiones controladas.

```dart
SizedBox(
  height: 20,
)
```

### Wrap

Permite acomodar elementos automáticamente cuando no hay espacio suficiente.

```dart
Wrap(
  spacing: 10,
  children: [
    Chip(label: Text('Flutter')),
    Chip(label: Text('Dart')),
  ],
)
```

---

## 🔄 Orientación de Pantalla

Detectar la orientación actual:

```dart
Orientation orientation =
    MediaQuery.of(context).orientation;
```

### Ejemplo

```dart
if (orientation == Orientation.portrait) {
  return VistaVertical();
} else {
  return VistaHorizontal();
}
```

---

## 🎨 Adaptación de Componentes

Durante esta clase aprenderemos a:

* Escalar imágenes.
* Ajustar tamaños de texto.
* Reorganizar elementos.
* Adaptar tarjetas y formularios.
* Optimizar interfaces para distintos dispositivos.

---

## 📂 Organización Recomendada

```text
lib/
│
├── screens/
│   ├── profile_screen.dart
│   └── responsive_screen.dart
│
├── widgets/
│   ├── profile_card.dart
│   └── responsive_menu.dart
│
└── theme/
```

---

## 🚀 Proyecto de la Clase

Tomaremos la aplicación creada en las clases anteriores y la adaptaremos para que funcione correctamente en:

* Teléfonos pequeños.
* Teléfonos grandes.
* Tablets.
* Orientación horizontal.

### Elementos a Optimizar

* Imagen de perfil.
* Información personal.
* Botones.
* Tarjetas.
* Espaciados.
* Distribución de contenido.

---

## 🧪 Ejercicio en Clase

### Actividad 1

Analizar la aplicación actual e identificar elementos que podrían presentar problemas en pantallas pequeñas.

### Actividad 2

Implementar MediaQuery para obtener:

* Ancho de pantalla.
* Alto de pantalla.
* Orientación.

### Actividad 3

Modificar la interfaz para que:

* Las imágenes se adapten al ancho disponible.
* Los textos mantengan una lectura adecuada.
* Los botones ocupen espacios proporcionales.

### Actividad 4

Probar la aplicación en:

* Emulador pequeño.
* Emulador grande.
* Orientación horizontal.

### Actividad 5

Comparar resultados antes y después de aplicar técnicas responsivas.

---

## 💡 Buenas Prácticas

* Evitar tamaños fijos cuando sea posible.
* Utilizar porcentajes relativos al tamaño de pantalla.
* Probar constantemente en diferentes resoluciones.
* Utilizar Expanded y Flexible para distribuir espacio.
* Considerar siempre la orientación del dispositivo.
* Mantener una experiencia de usuario consistente.

---

## 📝 Tarea

Crear una pantalla llamada **Perfil Profesional Responsivo** que se adapte correctamente a distintos tamaños de pantalla.

La pantalla deberá incluir:

* Fotografía.
* Nombre.
* Descripción.
* Habilidades.
* Redes sociales.
* Botones de contacto.

### Requisitos

* Uso de MediaQuery.
* Uso de Expanded o Flexible.
* Adaptación a orientación horizontal.
* Diseño visual consistente con el sistema de diseño creado en la Clase 03.

---

## ✅ Evidencia de Entrega

El estudiante deberá entregar:

1. Repositorio GitHub actualizado.
2. Capturas de pantalla en:

   * Teléfono pequeño.
   * Teléfono grande.
   * Orientación horizontal.
3. Código organizado y comentado.
4. Implementación de MediaQuery y widgets responsivos.
5. Aplicación funcional sin errores de desbordamiento.

### Resultado Esperado

Al finalizar la clase, el estudiante contará con una aplicación visualmente adaptable y preparada para ejecutarse correctamente en diferentes dispositivos y resoluciones, aplicando principios fundamentales de diseño responsivo en Flutter.
