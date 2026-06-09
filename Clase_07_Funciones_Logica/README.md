# Clase_07_Funciones_Logica

## 🎯 Objetivo de la Clase

Comprender cómo implementar lógica de programación en Flutter mediante funciones, variables, operadores y estructuras de control, permitiendo que las aplicaciones respondan a las acciones del usuario y procesen información de forma dinámica.

---

## 🏆 Resultados de Aprendizaje

Al finalizar esta clase, el estudiante será capaz de:

* Crear y utilizar funciones en Dart.
* Comprender la diferencia entre lógica e interfaz gráfica.
* Declarar y manipular variables.
* Utilizar operadores matemáticos y lógicos.
* Implementar estructuras condicionales.
* Utilizar ciclos de repetición.
* Conectar eventos de la interfaz con funciones personalizadas.

---

## 📚 Temas de la Clase

### ¿Qué es la Lógica de Programación?

La lógica es el conjunto de instrucciones que permiten a una aplicación tomar decisiones, procesar datos y responder a eventos generados por el usuario.

Ejemplos:

* Validar formularios.
* Realizar cálculos.
* Mostrar mensajes.
* Filtrar información.
* Gestionar estados de una aplicación.

---

## 🔤 Variables

Las variables permiten almacenar información temporalmente.

### Ejemplos

```dart
String nombre = "Juan";
int edad = 20;
double nota = 4.5;
bool activo = true;
```

---

## ⚙️ Funciones

Las funciones agrupan instrucciones reutilizables.

### Función Básica

```dart
void saludar() {
  print("Hola Mundo");
}
```

Llamar función:

```dart
saludar();
```

---

### Función con Parámetros

```dart
void mostrarNombre(String nombre) {
  print(nombre);
}
```

Uso:

```dart
mostrarNombre("Juan");
```

---

### Función con Retorno

```dart
int sumar(int a, int b) {
  return a + b;
}
```

Uso:

```dart
int resultado = sumar(10, 5);
```

---

## ➕ Operadores

### Matemáticos

```dart
+
-
*
/
%
```

Ejemplo:

```dart
int total = 10 + 5;
```

---

### Comparación

```dart
==
!=
>
<
>=
<=
```

Ejemplo:

```dart
if (edad >= 18) {
  print("Mayor de edad");
}
```

---

### Lógicos

```dart
&&
||
!
```

Ejemplo:

```dart
if (edad >= 18 && activo) {
  print("Acceso permitido");
}
```

---

## 🔀 Condicionales

Permiten ejecutar diferentes acciones según una condición.

### If

```dart
if (nota >= 3.0) {
  print("Aprobado");
}
```

---

### If - Else

```dart
if (nota >= 3.0) {
  print("Aprobado");
} else {
  print("Reprobado");
}
```

---

### Switch

```dart
switch (opcion) {
  case 1:
    print("Inicio");
    break;

  case 2:
    print("Perfil");
    break;

  default:
    print("Opción inválida");
}
```

---

## 🔄 Ciclos

Los ciclos permiten repetir acciones.

### For

```dart
for (int i = 0; i < 5; i++) {
  print(i);
}
```

---

### For In

```dart
List<String> nombres = [
  "Juan",
  "Ana",
  "Pedro"
];

for (var nombre in nombres) {
  print(nombre);
}
```

---

### While

```dart
int contador = 0;

while (contador < 5) {
  contador++;
}
```

---

## 🎮 Eventos y Lógica

Los widgets pueden ejecutar funciones cuando ocurre una acción.

### Ejemplo

```dart
ElevatedButton(
  onPressed: () {
    mostrarMensaje();
  },
  child: Text("Presionar"),
)
```

---

## 🧠 Separación de Responsabilidades

Una buena práctica consiste en separar:

### Interfaz

Responsable de mostrar información.

### Lógica

Responsable de procesar datos.

### Datos

Responsables de almacenar información.

---

## 📂 Organización Recomendada

```text
lib/
│
├── screens/
│
├── widgets/
│
├── services/
│   └── calculator_service.dart
│
├── utils/
│   └── functions.dart
│
└── main.dart
```

---

## 🚀 Proyecto de la Clase

Desarrollaremos una aplicación llamada **Calculadora Multimedia**.

La aplicación permitirá:

* Ingresar dos números.
* Realizar operaciones matemáticas.
* Mostrar resultados.
* Aplicar lógica mediante funciones.

---

## 🧪 Ejercicio en Clase

### Actividad 1

Crear una función que reciba el nombre del usuario y muestre un mensaje de bienvenida.

### Actividad 2

Crear funciones para:

* Sumar.
* Restar.
* Multiplicar.
* Dividir.

### Actividad 3

Conectar estas funciones a botones de la interfaz.

### Actividad 4

Mostrar el resultado dentro de la aplicación.

### Actividad 5

Agregar validaciones para evitar errores cuando los campos estén vacíos.

---

## 💡 Buenas Prácticas

* Crear funciones pequeñas y reutilizables.
* Utilizar nombres descriptivos.
* Separar lógica e interfaz.
* Evitar repetir código.
* Documentar funciones importantes.
* Validar siempre la información antes de procesarla.

---

## 📝 Tarea

Desarrollar una aplicación llamada **Calculadora de Promedios**.

### Funcionalidades

* Ingresar tres notas.
* Calcular promedio.
* Mostrar resultado.
* Indicar si el estudiante aprobó o reprobó.

### Reglas

* Promedio mayor o igual a 3.0 → Aprobado.
* Promedio menor a 3.0 → Reprobado.

### Requisitos

* Uso de funciones.
* Uso de variables.
* Uso de condicionales.
* Interfaz amigable y estilizada.

---

## ✅ Evidencia de Entrega

El estudiante deberá entregar:

1. Repositorio GitHub actualizado.
2. Aplicación funcional.
3. Implementación de funciones personalizadas.
4. Uso correcto de variables y condicionales.
5. Capturas de pantalla mostrando diferentes resultados.

### Resultado Esperado

Al finalizar la clase, el estudiante será capaz de integrar lógica de programación dentro de aplicaciones Flutter, utilizando funciones, variables y estructuras de control para crear aplicaciones dinámicas e interactivas que respondan correctamente a las acciones del usuario.
