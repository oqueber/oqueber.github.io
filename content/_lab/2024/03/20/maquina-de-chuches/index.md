---
title: Máquina de chuches
date: 2024-03-20
status: idea
summary: Un dispensador que premia al perro por portarse bien — y que algún día le enseñe trucos.
tools: [ESP32, Servomotor, Controlador paso a paso, Batería, Rodamientos]
ask: ¿Cómo sabrías que el perro está sentado antes de darle el premio?
redirect_from: /blog/maquina-de-chuches
---

<!-- brief -->
- Dar un premio por buena conducta.
- Cada hora, un premio.
- ¿Que se tenga que sentar para recibir la recompensa?

<!-- process -->
**V1** — En un tiempo *T* entregar *n* premios (8 horas ≈ 8 huecos, un premio por hora). Sonar con cada recompensa. Pulsación corta: empezar. Pulsación larga (≈ 2 s): desactivar.

**V1.1** — ¿Lanzar los premios con velocidad?

**V2** — Añadir una cámara que haga una foto un segundo después de sonar. ¿Reconocer que está sentado?

**V3** — Añadir IA para que haga trucos.

Diseño: una rueda de 8 compartimentos girada por un servo, con el ESP32 dormido hasta que una alarma del reloj (RTC) lo despierta cada hora. Unos 15 × 20 cm.
