# Clase_08_Callbacks_Async

## 🎯 Objetivo de la Clase

Comprender cómo funcionan los callbacks, la programación asíncrona y el manejo de tareas que requieren tiempo de ejecución en Flutter, permitiendo desarrollar aplicaciones más dinámicas, eficientes y preparadas para consumir información externa.

---

## 🏆 Resultados de Aprendizaje

Al finalizar esta clase, el estudiante será capaz de:

* Comprender el concepto de callback.
* Identificar procesos síncronos y asíncronos.
* Utilizar funciones callback para la comunicación entre widgets.
* Implementar async y await.
* Trabajar con Future.
* Simular peticiones a servicios externos.
* Mostrar estados de carga en la interfaz.

---

## 📚 Temas de la Clase

### ¿Qué es un Callback?

Un callback es una función que se envía como parámetro a otra función para ejecutarse posteriormente cuando ocurre un evento determinado.

Los callbacks son fundamentales en Flutter porque permiten responder a acciones del usuario.

### Ejemplo

```dart
ElevatedButton(
  onPressed: () {
    print('Botón presionado');
  },
  child: Text('Guardar'),
)
```

En este caso, `onPressed` recibe una función callback.

---

## 🔄 Comunicación Entre Widgets

Los callbacks permiten que un widget hijo notifique eventos a un widget padre.

### Ejemplo Conceptual

```dart
CustomButton(
  onTap: () {
    guardarDatos();
  },
)
```

Beneficios:

* Reutilización de componentes.
* Mejor organización del código.
* Separación de responsabilidades.

---

## ⚡ Programación Síncrona vs Asíncrona

### Síncrona

Las tareas se ejecutan una después de otra.

```dart
print('Paso 1');
print('Paso 2');
print('Paso 3');
```

Resultado:

```text
Paso 1
Paso 2
Paso 3
```

---

### Asíncrona

Permite ejecutar tareas que toman tiempo sin bloquear la aplicación.

Ejemplos:

* Consultar una API.
* Descargar imágenes.
* Leer archivos.
* Acceder a una base de datos.
* Autenticación de usuarios.

---

## 🚀 Future

Un Future representa un valor que estará disponible en el futuro.

### Ejemplo

```dart
Future<String> obtenerDatos() async {
  return 'Información recibida';
}
```

---

## ⏳ Async y Await

Permiten trabajar con tareas asíncronas de forma más sencilla.

### Ejemplo

```dart
Future<void> cargarDatos() async {
  String resultado =
      await obtenerDatos();

  print(resultado);
}
```

---

## 🧪 Simulación de Peticiones

Podemos utilizar Future.delayed para simular tiempos de espera.

### Ejemplo

```dart
Future<String> obtenerUsuario() async {
  await Future.delayed(
    Duration(seconds: 3),
  );

  return 'Juan Pérez';
}
```

---

## 🔄 FutureBuilder

Flutter proporciona FutureBuilder para construir interfaces basadas en procesos asíncronos.

### Ejemplo

```dart
FutureBuilder(
  future: obtenerUsuario(),
  builder: (context, snapshot) {
    if (!snapshot.hasData) {
      return CircularProgressIndicator();
    }

    return Text(snapshot.data.toString());
  },
)
```

---

## 🎨 Indicadores de Carga

Mientras una operación está en ejecución es importante informar al usuario.

### Ejemplo

```dart
CircularProgressIndicator()
```

Buenas prácticas:

* Mostrar mensajes de carga.
* Informar errores.
* Evitar bloquear la interfaz.

---

## 📂 Organización Recomendada

```text
lib/
│
├── screens/
│   └── users_screen.dart
│
├── widgets/
│   ├── custom_button.dart
│   ├── loading_widget.dart
│   └── user_card.dart
│
├── services/
│   └── user_service.dart
│
└── main.dart
```

---

## 🚀 Proyecto de la Clase

Crearemos una aplicación llamada **Perfil Dinámico**.

La aplicación deberá:

* Mostrar un botón de carga.
* Simular una consulta a un servidor.
* Esperar algunos segundos.
* Mostrar información del usuario cuando la carga finalice.
* Indicar visualmente el estado de carga.

---

## 🧪 Ejercicio en Clase

### Actividad 1

Crear una función asíncrona que retorne información después de 3 segundos.

### Actividad 2

Mostrar un indicador de carga mientras se espera la respuesta.

### Actividad 3

Crear un widget personalizado que reciba un callback.

### Actividad 4

Conectar el callback a un botón para iniciar la carga de información.

### Actividad 5

Mostrar el resultado en pantalla cuando el proceso termine.

---

## 💡 Buenas Prácticas

* Utilizar async y await en lugar de cadenas complejas de callbacks.
* Mostrar siempre indicadores de carga.
* Gestionar posibles errores.
* Mantener separada la lógica de la interfaz.
* Evitar operaciones pesadas en el hilo principal.

---

## 📝 Tarea

Desarrollar una aplicación llamada **Consulta de Productos**.

### Funcionalidades

* Mostrar un botón "Cargar Productos".
* Simular una consulta remota utilizando Future.delayed.
* Mostrar un indicador de carga.
* Mostrar una lista de productos cuando finalice la consulta.

### Requisitos

* Uso de Future.
* Uso de async y await.
* Uso de callbacks.
* Uso de widgets personalizados.
* Aplicación del sistema de diseño desarrollado en clases anteriores.

---

## ✅ Evidencia de Entrega

El estudiante deberá entregar:

1. Repositorio GitHub actualizado.
2. Aplicación funcional.
3. Implementación de callbacks.
4. Uso correcto de Future, async y await.
5. Indicadores de carga visibles.
6. Capturas de pantalla mostrando el proceso completo.

### Resultado Esperado

Al finalizar la clase, el estudiante comprenderá cómo manejar procesos asíncronos en Flutter, crear componentes que se comuniquen mediante callbacks y desarrollar interfaces capaces de responder correctamente a operaciones que requieren tiempo de ejecución, sentando las bases para el consumo de APIs y servicios externos.
