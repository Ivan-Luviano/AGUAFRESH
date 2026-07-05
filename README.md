# AGUAFRESH
# 🚀 Smart Dispenser - Dispensador Inteligente IoT

¡Bienvenido al repositorio de **Smart Dispenser**! Este es un proyecto de Internet de las Cosas (IoT) diseñado para automatizar, monitorear y controlar la dispensación de `[comida para mascotas / agua / medicamentos / dulces]` de forma remota y eficiente.

El ecosistema está compuesto por una aplicación móvil multiplataforma, un backend en la nube para la gestión de datos en tiempo real y un circuito electrónico de hardware automatizado.

---

## 🛠️ Tecnologías Utilizadas

Este proyecto fue construido integrando las siguientes herramientas de desarrollo:

*   **Frontend (App Móvil):** [Flutter](https://flutter.dev) & Dart – Para una interfaz de usuario fluida, moderna y multiplataforma.
*   **Backend & Base de Datos:** [Firebase](https://firebase.google.com) (Auth, Realtime Database/Firestore) – Para el manejo de usuarios, historial de uso y comunicación en tiempo real con el hardware.
*   **Hardware / Firmware:** [Arduino IDE](https://www.arduino.cc/) & C++ – Programación del microcontrolador `[NodeMCU ESP32 / ESP8266 / Arduino Uno]` encargado de activar los motores y sensores del dispensador físico.

---

## ✨ Características Principales

*   📅 **Programación de Horarios:** Configura alertas y rutinas automáticas para que el dispositivo dispense de manera autónoma en horas específicas.
*   🔔 **Monitoreo en Tiempo Real:** Recibe notificaciones y visualiza el estado actual del dispensador (nivel de almacenamiento, última vez activado, batería).
*   📊 **Historial de Consumo:** Registro detallado en la nube de cuántas veces y a qué hora se ha activado el dispositivo.

---

## ⚙️ Arquitectura del Sistema

1.  **El Usuario** interactúa con la aplicación desarrollada en **Flutter**.
2.  **La App** envía una señal o actualiza un parámetro en **Firebase**.
3.  **El módulo Wi-Fi (Arduino)** detecta el cambio en la base de datos en tiempo real de Firebase al instante.
4.  **El hardware** activa el componente físico (servomotor, motor a pasos o bomba de agua) para liberar el producto.

---

## 🚀 Instalación y Configuración

### Prerrequisitos
Asegúrate de contar con el entorno de desarrollo preparado:
*   Flutter SDK (v3.44 o superior)
*   Node.js & Firebase CLI
*   Arduino IDE (con los drivers correspondientes instalados)

### Clona el repositorio
```bash
git clone [https://github.com/TU_USUARIO/TU_REPOSITORIO.git](https://github.com/TU_USUARIO/TU_REPOSITORIO.git)
