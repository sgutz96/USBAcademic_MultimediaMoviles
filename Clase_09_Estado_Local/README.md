# Clase_09_Estado_Local

## 🎯 Objetivo de la Clase

Comprender el manejo del estado local en Flutter utilizando StatefulWidget y setState(), permitiendo que las aplicaciones actualicen su interfaz de manera dinámica en respuesta a las acciones del usuario.

---

## 🏆 Resultados de Aprendizaje

Al finalizar esta clase, el estudiante será capaz de:

* Comprender qué es el estado en una aplicación.
* Diferenciar StatelessWidget y StatefulWidget.
* Gestionar información dinámica dentro de una pantalla.
* Utilizar setState() para actualizar la interfaz.
* Crear componentes interactivos.
* Implementar contadores, listas y formularios dinámicos.
* Aplicar buenas prácticas en el manejo del estado local.

---

## 📚 Temas de la Clase

### ¿Qué es el Estado?

El estado es la información que puede cambiar durante la ejecución de una aplicación.

Ejemplos:

* Número de clics en un botón.
* Datos de un formulario.
* Estado de carga.
* Elementos seleccionados.
* Información mostrada en pantalla.

Cuando el estado cambia, la interfaz debe actualizarse para reflejar esos cambios.

---

## 🧩 Tipos de Widgets

### StatelessWidget

Se utiliza cuando la información no cambia durante la ejecución.

```dart
class MiPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hola Flutter');
  }
}
```

Características:

* No cambia dinámicamente.
* Menor consumo de recursos.
* Ideal para componentes visuales simples.

---

### StatefulWidget

Permite gestionar información que cambia en tiempo real.

```dart
class MiPantalla extends StatefulWidget {
  @override
  State<MiPantalla> createState() =>
      _MiPantallaState();
}
```

---

## 🔄 setState()

Flutter utiliza `setState()` para notificar que la interfaz debe reconstruirse.

### Ejemplo

```dart
setState(() {
  contador++;
});
```

Cada vez que se ejecuta `setState()`, Flutter actualiza la pantalla con los nuevos valores.

---

## 🔢 Ejemplo: Contador

```dart
int contador = 0;
```

Incrementar:

```dart
setState(() {
  contador++;
});
```

Mostrar resultado:

```dart
Text('$contador')
```

---

## 📝 Estado en Formularios

Los formularios también utilizan estado para almacenar información ingresada por el usuario.

### Ejemplo

```dart
String nombre = '';
```

Actualizar valor:

```dart
onChanged: (value) {
  setState(() {
    nombre = value;
  });
}
```

---

## 📋 Estado en Listas

Las listas dinámicas son uno de los usos más comunes del estado local.

### Ejemplo

```dart
List<String> tareas = [];
```

Agregar elementos:

```dart
setState(() {
  tareas.add('Nueva tarea');
});
```

Eliminar elementos:

```dart
setState(() {
  tareas.removeAt(index);
});
```

---

## 🎨 Actualización de la Interfaz

Cada cambio realizado mediante `setState()` se refleja automáticamente en la interfaz.

Ejemplos:

* Mostrar nuevos datos.
* Actualizar contadores.
* Agregar elementos.
* Eliminar registros.
* Cambiar colores o estilos.

---

## 📂 Organización Recomendada

```text
lib/
│
├── screens/
│   ├── counter_screen.dart
│   ├── tasks_screen.dart
│   └── profile_screen.dart
│
├── widgets/
│   ├── task_item.dart
│   ├── custom_button.dart
│   └── custom_input.dart
│
├── theme/
│
└── main.dart
```

---

## 🚀 Proyecto de la Clase

Desarrollaremos una aplicación llamada **Gestor de Tareas Local**.

La aplicación permitirá:

* Agregar tareas.
* Mostrar tareas registradas.
* Eliminar tareas.
* Actualizar automáticamente la interfaz utilizando estado local.

---

## 🧪 Ejercicio en Clase

### Actividad 1

Crear una pantalla utilizando StatefulWidget.

### Actividad 2

Implementar un contador con:

* Botón aumentar.
* Botón disminuir.
* Visualización del resultado.

### Actividad 3

Crear una lista dinámica de tareas.

### Actividad 4

Permitir agregar nuevas tareas mediante un formulario.

### Actividad 5

Permitir eliminar tareas seleccionadas.

---

## 💡 Buenas Prácticas

* Utilizar StatelessWidget cuando no se requiera estado.
* Limitar el uso de setState() únicamente a los cambios necesarios.
* Mantener organizada la lógica de la interfaz.
* Evitar almacenar demasiada información en una sola pantalla.
* Crear widgets reutilizables cuando la interfaz crezca.

---

## 📝 Tarea

Desarrollar una aplicación llamada **Lista de Compras**.

### Funcionalidades

* Agregar productos.
* Mostrar lista de productos.
* Eliminar productos.
* Mostrar cantidad total de elementos.

### Requisitos

* Uso de StatefulWidget.
* Uso de setState().
* Uso de listas dinámicas.
* Aplicación del sistema de diseño creado en clases anteriores.
* Diseño responsivo.

---

## ✅ Evidencia de Entrega

El estudiante deberá entregar:

1. Repositorio GitHub actualizado.
2. Aplicación funcional.
3. Implementación de StatefulWidget.
4. Uso correcto de setState().
5. Lista dinámica funcionando correctamente.
6. Capturas o video demostrando la interacción.

### Resultado Esperado

Al finalizar la clase, el estudiante comprenderá cómo gestionar información dinámica dentro de una aplicación Flutter utilizando estado local, permitiendo crear interfaces interactivas que reaccionen en tiempo real a las acciones del usuario y preparándolo para el aprendizaje de gestores de estado más avanzados.
