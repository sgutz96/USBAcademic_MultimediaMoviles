# Clase_01_Flutter_Intro

## 🎯 Objetivo de la Clase

Comprender los fundamentos del desarrollo de aplicaciones móviles, identificar las diferencias entre aplicaciones nativas y multiplataforma, conocer las principales tecnologías utilizadas en la industria y configurar correctamente el entorno de desarrollo para crear la primera aplicación con Flutter.

---

## 🏆 Resultados de Aprendizaje

Al finalizar esta clase, el estudiante será capaz de:

* Definir qué es una aplicación móvil y sus principales características.
* Diferenciar entre desarrollo nativo y multiplataforma.
* Comparar Flutter, React Native y Android Studio.
* Instalar y configurar Flutter en su equipo.
* Crear y ejecutar un proyecto básico en Flutter.
* Identificar la estructura principal de un proyecto Flutter.

---

## 📚 Temas de la Clase

### ¿Qué es una Aplicación Móvil?

Una aplicación móvil es un software diseñado para ejecutarse en dispositivos móviles como teléfonos inteligentes y tabletas. Estas aplicaciones permiten resolver necesidades específicas de los usuarios mediante experiencias optimizadas para dispositivos táctiles.

### Casos de Uso

Algunos ejemplos de aplicaciones móviles son:

* Redes sociales.
* Aplicaciones bancarias.
* Comercio electrónico.
* Sistemas de geolocalización.
* Aplicaciones educativas.
* Plataformas de streaming.
* Herramientas empresariales.

---

## 📱 Tipos de Aplicaciones Móviles

### Aplicaciones Nativas

Son desarrolladas específicamente para un sistema operativo.

**Ejemplos:**

* Android → Kotlin / Java.
* iOS → Swift.

**Ventajas**

* Máximo rendimiento.
* Acceso completo al hardware.
* Mejor experiencia de usuario.

**Desventajas**

* Mayor tiempo de desarrollo.
* Mayor costo de mantenimiento.

### Aplicaciones Multiplataforma

Permiten desarrollar una única base de código para múltiples sistemas operativos.

**Ejemplos:**

* Flutter.
* React Native.

**Ventajas**

* Menor tiempo de desarrollo.
* Menor costo de mantenimiento.
* Código reutilizable.

**Desventajas**

* Dependencia del framework.
* Algunas limitaciones frente al desarrollo nativo.

---

## ⚖️ Comparativo de Tecnologías

| Característica       | Android Studio | React Native | Flutter    |
| -------------------- | -------------- | ------------ | ---------- |
| Lenguaje             | Kotlin / Java  | JavaScript   | Dart       |
| Multiplataforma      | No             | Sí           | Sí         |
| Rendimiento          | Excelente      | Muy Bueno    | Excelente  |
| Hot Reload           | No             | Sí           | Sí         |
| Comunidad            | Muy Grande     | Muy Grande   | Muy Grande |
| Curva de Aprendizaje | Media          | Media        | Media      |
| Productividad        | Media          | Alta         | Muy Alta   |

---

## 🚀 ¿Por qué Flutter?

Flutter es un framework desarrollado por Google que permite crear aplicaciones para Android, iOS, Web y Escritorio utilizando una sola base de código.

### Ventajas

* Desarrollo rápido mediante Hot Reload.
* Excelente rendimiento.
* Interfaz moderna y altamente personalizable.
* Amplia comunidad y documentación.
* Código único para múltiples plataformas.

---

## 🔧 Instalación de Flutter

### Requisitos Previos

* Sistema operativo Windows 10 o superior.
* Git instalado.
* Android Studio.
* Visual Studio Code.
* Android SDK configurado.

### Verificación de la Instalación

```bash
flutter doctor
```

---

## 📂 Creación del Primer Proyecto

Crear un nuevo proyecto:

```bash
flutter create mi_primera_app
```

Ingresar al proyecto:

```bash
cd mi_primera_app
```

Ejecutar la aplicación:

```bash
flutter run
```

---

## 🏗️ Estructura Básica de un Proyecto Flutter

```text
mi_primera_app/
│
├── android/
├── ios/
├── web/
├── lib/
│   └── main.dart
├── test/
├── pubspec.yaml
└── README.md
```

### Carpetas Principales

| Carpeta      | Función                           |
| ------------ | --------------------------------- |
| lib          | Código fuente principal           |
| main.dart    | Punto de entrada de la aplicación |
| android      | Configuración Android             |
| ios          | Configuración iOS                 |
| test         | Pruebas de la aplicación          |
| pubspec.yaml | Dependencias y configuración      |

---

## 💡 Buenas Prácticas

* Mantener una estructura organizada.
* Utilizar nombres descriptivos para archivos y variables.
* Trabajar con control de versiones (Git).
* Documentar el proyecto.
* Realizar pruebas frecuentes.
* Mantener el código limpio y modular.

---

## 🧪 Ejercicio en Clase

### Actividad 1: Investigación Comparativa

Realizar una tabla comparativa entre:

* Android Studio
* React Native
* Flutter

La tabla debe incluir:

* Lenguaje utilizado.
* Tipo de desarrollo.
* Ventajas.
* Desventajas.
* Casos de uso.

### Actividad 2: Instalación del Entorno

1. Instalar Flutter.
2. Instalar Android Studio.
3. Configurar un emulador Android.
4. Ejecutar el comando:

```bash
flutter doctor
```

5. Corregir todos los errores o advertencias encontradas.

### Actividad 3: Primer Proyecto

Crear un proyecto llamado:

```bash
flutter create mi_presentacion
```

Modificar la aplicación para mostrar:

* Nombre completo.
* Programa académico.
* Semestre actual.

---

## 📝 Tarea

Investigar tres aplicaciones desarrolladas con Flutter y responder:

1. Nombre de la aplicación.
2. Empresa desarrolladora.
3. Funcionalidad principal.
4. ¿Por qué consideran que Flutter fue una buena elección para desarrollarla?

Presentar la investigación en un documento PDF de máximo dos páginas.

---

## ✅ Evidencia de Entrega

El estudiante deberá entregar:

* Captura del resultado de `flutter doctor`.
* Captura del emulador ejecutando su aplicación.
* Repositorio GitHub con el proyecto creado.
* Documento PDF de la investigación.
    