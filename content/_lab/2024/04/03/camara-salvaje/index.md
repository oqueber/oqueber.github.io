---
title: Cámara salvaje
date: 2024-04-03
status: working
summary: Una cámara diminuta y autónoma para fotografiar a los animales que pasan cuando nadie mira.
tools: [ESP32-CAM-MB, Cámara OV2640, Batería 18650, Cargador Li-ion 18650, Impresora 3D]
ask: ¿Qué sensor de presencia usarías para que solo dispare cuando pasa un animal?
redirect_from: /blog/camara-salvaje
---

<!-- brief -->
- Alta autonomía.
- Enviar una alerta cuando detecte algo.
- Muy bajo consumo.
- Súper portátil.

<!-- process -->
- Carcasa impresa en 3D con batería 18650.
- La placa de carga ya gestiona todo lo de la batería: la carga y entrega 3,3 V constantes.
- La ESP32-CAM-MB está lista para usar — hay quien la usa como webcam.
- Con la OV2640 se pueden probar distintas lentes y enfoques.

**Pendiente:** que sea a prueba de agua y añadir un sensor de presencia para hacer foto o vídeo.

Inspiración: el artículo *Create your own bird cam* de HackSpace (Naturebytes).
