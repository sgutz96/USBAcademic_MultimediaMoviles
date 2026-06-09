# Clase_10_Provider

## 🎯 Objetivo de la Clase

Aprender a gestionar el estado global de una aplicación Flutter utilizando Provider, separando la lógica de negocio de la interfaz gráfica y facilitando la comunicación entre diferentes pantallas y componentes.

---

## 🏆 Resultados de Aprendizaje

Al finalizar esta clase, el estudiante será capaz de:

* Comprender las limitaciones del estado local.
* Identificar cuándo utilizar un gestor de estado.
* Instalar y configurar Provider.
* Crear clases de estado utilizando ChangeNotifier.
* Compartir información entre múltiples widgets y pantallas.
* Actualizar la interfaz automáticamente cuando cambien los datos.
* Aplicar buenas prácticas de arquitectura en Flutter.

---

## 📚 Temas de la Clase

### ¿Qué es la Gestión de Estado?

La gestión de estado permite controlar y compartir información dentro de una aplicación.

Ejemplos:

* Usuario autenticado.
* Carrito de compras.
* Lista de tareas.
* Configuración de la aplicación.
* Preferencias del usuario.

A medida que una aplicación crece, utilizar únicamente `setState()` puede resultar difícil de mantener.

---

## 🤔 ¿Por qué usar Provider?

Provider es una de las soluciones más utilizadas en Flutter para manejar estado compartido.

### Ventajas

* Fácil de aprender.
* Oficialmente recomendado por la comunidad Flutter.
* Código más organizado.
* Separación entre lógica e interfaz.
* Escalable para proyectos medianos y grandes.

---

## 📦 Instalación

Agregar la dependencia en el archivo:

```yaml
dependencies:
  provider: ^6.0.0
```

Instalar dependencias:

```bash
flutter pub get
```

---

## 🧩 ChangeNotifier

Provider utiliza clases que heredan de `ChangeNotifier`.

### Ejemplo

```dart
class CounterProvider extends ChangeNotifier {

  int contador = 0;

  void incrementar() {
    contador++;
    notifyListeners();
  }

}
```

---

## 🔔 notifyListeners()

Cuando la información cambia, se debe notificar a los widgets que están escuchando.

```dart
notifyListeners();
```

Esto provoca la actualización automática de la interfaz.

---

## 🚀 Configuración Global

Registrar el Provider en la aplicación.

```dart
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: MyApp(),
    ),
  );
}
```

---

## 👀 Consumir Información

Acceder a los datos desde la interfaz.

```dart
Provider.of<CounterProvider>(context)
    .contador
```

---

## ✏️ Modificar Estado

Ejecutar métodos definidos en el Provider.

```dart
Provider.of<CounterProvider>(
  context,
  listen: false,
).incrementar();
```

---

## 🎨 Consumer

Consumer permite reconstruir únicamente una parte de la interfaz.

```dart
Consumer<CounterProvider>(
  builder: (context, provider, child) {
    return Text(
      provider.contador.toString(),
    );
  },
)
```

---

## 📂 Organización Recomendada

```text
lib/
│
├── providers/
│   └── counter_provider.dart
│
├── screens/
│   ├── home_screen.dart
│   ├── profile_screen.dart
│   └── settings_screen.dart
│
├── widgets/
│
├── services/
│
└── main.dart
```

---

## 🚀 Proyecto de la Clase

Transformaremos la aplicación de tareas creada anteriormente para que utilice Provider.

### Funcionalidades

* Agregar tareas.
* Eliminar tareas.
* Compartir información entre pantallas.
* Actualización automática de la interfaz.

---

## 🧪 Ejercicio en Clase

### Actividad 1

Instalar la dependencia Provider.

### Actividad 2

Crear una carpeta:

```text
providers/
```

### Actividad 3

Crear un Provider llamado:

```text
TaskProvider
```

### Actividad 4

Implementar:

* Lista de tareas.
* Método para agregar tareas.
* Método para eliminar tareas.

### Actividad 5

Conectar la interfaz con el Provider.

### Actividad 6

Mostrar el número total de tareas registradas.

---

## 🔄 Comparación

| Característica    | setState() | Provider |
| ----------------- | ---------- | -------- |
| Estado local      | ✅          | ✅        |
| Estado compartido | ❌          | ✅        |
| Escalabilidad     | Baja       | Alta     |
| Organización      | Media      | Alta     |
| Reutilización     | Baja       | Alta     |
| Mantenimiento     | Medio      | Alto     |

---

## 💡 Buenas Prácticas

* Mantener la lógica dentro de los Providers.
* Evitar colocar lógica compleja en los widgets.
* Utilizar Consumer para optimizar rendimiento.
* Dividir Providers según responsabilidades.
* Organizar el proyecto por módulos.

---

## 📝 Tarea

Desarrollar una aplicación llamada **Gestor de Estudiantes**.

### Funcionalidades

* Registrar estudiantes.
* Mostrar listado de estudiantes.
* Eliminar estudiantes.
* Mostrar cantidad total de registros.

### Requisitos

* Uso de Provider.
* Uso de ChangeNotifier.
* Uso de Consumer.
* Aplicación del sistema de diseño desarrollado en clases anteriores.
* Navegación entre pantallas.

### Desafío Adicional

Crear una segunda pantalla donde se visualice la misma información almacenada en el Provider para demostrar que el estado puede compartirse entre diferentes vistas.

---

## ✅ Evidencia de Entrega

El estudiante deberá entregar:

1. Repositorio GitHub actualizado.
2. Implementación funcional de Provider.
3. Uso de ChangeNotifier.
4. Uso de Consumer.
5. Aplicación funcionando en múltiples pantallas.
6. Capturas o video demostrando el flujo completo.

### Resultado Esperado

Al finalizar la clase, el estudiante comprenderá cómo gestionar información compartida en Flutter utilizando Provider, separando la lógica de negocio de la interfaz y construyendo aplicaciones más organizadas, escalables y fáciles de mantener.
