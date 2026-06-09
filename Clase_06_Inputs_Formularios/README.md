# Clase_06_Inputs_Formularios

## 🎯 Objetivo de la Clase

Aprender a capturar información ingresada por el usuario mediante formularios e inputs en Flutter, aplicando validaciones básicas y buenas prácticas de experiencia de usuario para la construcción de aplicaciones interactivas.

---

## 🏆 Resultados de Aprendizaje

Al finalizar esta clase, el estudiante será capaz de:

* Comprender el funcionamiento de los formularios en Flutter.
* Utilizar diferentes tipos de campos de entrada.
* Capturar datos ingresados por el usuario.
* Implementar validaciones básicas.
* Gestionar formularios mediante Form y TextFormField.
* Mejorar la experiencia de usuario mediante mensajes de validación.
* Preparar formularios para futuras integraciones con bases de datos y APIs.

---

## 📚 Temas de la Clase

### ¿Qué es un Formulario?

Un formulario es una interfaz que permite al usuario ingresar información para ser procesada por la aplicación.

Ejemplos:

* Registro de usuarios.
* Inicio de sesión.
* Formularios de contacto.
* Encuestas.
* Solicitudes de servicios.

---

## 📝 Widgets para Captura de Datos

### TextField

Permite capturar texto de forma básica.

```dart
TextField(
  decoration: InputDecoration(
    labelText: 'Nombre',
  ),
)
```

---

### TextFormField

Versión avanzada de TextField que permite validaciones.

```dart
TextFormField(
  decoration: InputDecoration(
    labelText: 'Correo Electrónico',
  ),
)
```

---

### ElevatedButton

Permite enviar o procesar la información del formulario.

```dart
ElevatedButton(
  onPressed: () {},
  child: Text('Enviar'),
)
```

---

## 🎛️ Controladores (Controllers)

Los controladores permiten acceder al contenido de un campo de texto.

```dart
TextEditingController nombreController =
    TextEditingController();
```

### Uso

```dart
TextField(
  controller: nombreController,
)
```

Obtener valor:

```dart
String nombre =
    nombreController.text;
```

---

## ✅ Validaciones

Las validaciones ayudan a garantizar que la información ingresada sea correcta.

### Ejemplo

```dart
validator: (value) {
  if (value == null || value.isEmpty) {
    return 'Este campo es obligatorio';
  }
  return null;
}
```

---

## 📦 Widget Form

Flutter permite agrupar campos dentro de un formulario utilizando el widget Form.

```dart
final _formKey = GlobalKey<FormState>();
```

```dart
Form(
  key: _formKey,
  child: Column(
    children: [],
  ),
)
```

Validar formulario:

```dart
if (_formKey.currentState!.validate()) {
  // Procesar datos
}
```

---

## 🎨 Campos Comunes en Aplicaciones

Durante esta clase trabajaremos con:

### Nombre

```dart
TextFormField()
```

### Correo Electrónico

```dart
TextFormField(
  keyboardType:
      TextInputType.emailAddress,
)
```

### Contraseña

```dart
TextFormField(
  obscureText: true,
)
```

### Teléfono

```dart
TextFormField(
  keyboardType:
      TextInputType.phone,
)
```

### Comentarios

```dart
TextFormField(
  maxLines: 4,
)
```

---

## 📂 Organización Recomendada

```text
lib/
│
├── screens/
│   ├── home_screen.dart
│   ├── contact_screen.dart
│   └── register_screen.dart
│
├── widgets/
│   ├── custom_input.dart
│   ├── custom_button.dart
│   └── profile_card.dart
│
├── theme/
│
└── main.dart
```

---

## 🚀 Proyecto de la Clase

Crearemos una pantalla de registro de usuario que permita capturar:

* Nombre completo.
* Correo electrónico.
* Número telefónico.
* Contraseña.
* Confirmación de contraseña.
* Comentarios o descripción personal.

---

## 🧪 Ejercicio en Clase

### Actividad 1

Crear una nueva pantalla llamada:

```text
RegisterScreen
```

### Actividad 2

Diseñar un formulario utilizando:

* Form
* TextFormField
* ElevatedButton

### Actividad 3

Agregar validaciones para:

* Campos vacíos.
* Correo electrónico.
* Longitud mínima de contraseña.
* Confirmación de contraseña.

### Actividad 4

Mostrar un mensaje de éxito cuando el formulario sea válido.

### Actividad 5

Aplicar el sistema de diseño creado en las clases anteriores.

---

## 💡 Buenas Prácticas

* Validar siempre los datos ingresados.
* Utilizar mensajes claros para el usuario.
* Evitar formularios excesivamente largos.
* Organizar visualmente los campos.
* Utilizar controladores únicamente cuando sean necesarios.
* Mantener la consistencia visual del formulario.

---

## 📝 Tarea

Desarrollar una aplicación llamada **Formulario de Contacto Multimedia**.

### Campos Obligatorios

* Nombre.
* Correo electrónico.
* Teléfono.
* Asunto.
* Mensaje.

### Requisitos

* Validación de todos los campos.
* Diseño responsivo.
* Uso de widgets personalizados cuando sea posible.
* Integración con el sistema de diseño del proyecto.

### Funcionalidad

Al presionar el botón de enviar, mostrar un mensaje con la información capturada.

---

## ✅ Evidencia de Entrega

El estudiante deberá entregar:

1. Repositorio GitHub actualizado.
2. Formulario completamente funcional.
3. Validaciones implementadas.
4. Capturas de pantalla del formulario.
5. Código organizado y comentado.

### Resultado Esperado

Al finalizar la clase, el estudiante será capaz de construir formularios funcionales en Flutter, capturar información del usuario, validar datos y preparar aplicaciones para futuras integraciones con bases de datos, APIs y sistemas de autenticación.
