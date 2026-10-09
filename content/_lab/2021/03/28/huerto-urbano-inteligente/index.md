---
title: Huerto urbano inteligente y autónomo
date: 2021-03-28
status: done
summary: Mi proyecto de fin de carrera — un huerto que se cuida solo y se controla desde el móvil.
tools: [ESP32-DevKitC-32D, C, JavaScript, HTML5, CSS3, MQTT]
links:
  - label: Leer el proyecto completo (UPM)
    url: https://oa.upm.es/70329/
redirect_from: /blog/Trabajo-Fin-de-Grado
---

<!-- result -->
Tras analizar el prototipo durante **cinco meses**, cumple lo que prometía: obtiene los datos del entorno, suministra iluminación y riega con la frecuencia fijada por el usuario.

Además, guarda un histórico de todo lo que mide, así que puedes entender de forma gráfica e intuitiva cómo está cada planta y cómo cuidarla mejor.

<!-- brief -->
Una alternativa a los huertos inteligentes comerciales, pensada para ser **escalable, personalizable y respetuosa con el medio ambiente**.

Cuida hasta cuatro plantas: mide su estado, les da luz a medida y las riega una a una.

<!-- process -->
Seguí la filosofía **DIY** (hazlo tú mismo): productos personalizados, económicos y reparables, con hardware y software libre. Por eso todo es modular, tanto el software como el hardware.

El sistema tiene tres partes:

1. **El huerto** — cuida físicamente las plantas y recoge datos de cada una.
2. **El servidor central** — procesa, ordena y guarda esa información.
3. **La plataforma web** — la interfaz desde cualquier móvil: añadir, editar y eliminar plantas, y ver sus variables en tiempo real.
