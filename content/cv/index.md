---
# ─────────────────────────────────────────────────────────────
#  CV — the home page (Spanish at /, English at /en/)
#  Write for people who are NOT technical: what you did and why
#  it mattered, not the protocol list. Each text has es + en.
# ─────────────────────────────────────────────────────────────
layout: cv
section: cv
permalink: /
alt: /en/
lang: es
title: Oqueber Navarro

full_name: Oqueber Navarro
since: 2018                 # years of experience are counted from this year
photo: photo.jpg            # file in this folder
photo_alt:
  es: Oqueber en su taller con una tira de LEDs encendida
  en: Oqueber in his workshop holding a lit LED strip
cv_pdf:                     # optional: drop the PDFs in this folder and write their names
  es:
  en:

hello:
  es: ¡Hola! soy
  en: Hi! I'm
headline:
  es: Ingeniero electrónico. Convierto ideas en aparatos que funcionan.
  en: Electronics engineer. I turn ideas into devices that work.
intro:
  es: Diseño el «cerebro» de equipos médicos, de telecomunicaciones y de defensa. En mi tiempo libre invento cosas en mi taller de Madrid — y las documento todas en el Lab.
  en: I design the "brain" inside medical, telecom and defence equipment. In my free time I invent things in my Madrid workshop — and document every one of them in the Lab.

# Each job has two versions:
#   plain → "versión corta": one or two sentences anyone understands
#   long  → "versión larga": the detailed bullets + skill tags
jobs:
  - company: RBZ Robot Design
    when: { es: 2022 — hoy, en: 2022 — now }
    dates: { es: Dic 2022 — hoy, en: Dec 2022 — now }
    role: { es: Ingeniero de Firmware, en: Firmware Engineer }
    plain:
      es: Doy vida a equipos médicos y de telecomunicaciones — el software que hace que el hardware piense. Lidero proyectos de principio a fin, cumpliendo normativas médicas muy exigentes.
      en: I bring medical and telecom devices to life — the software that makes hardware think. I lead projects end to end, meeting demanding medical regulations.
    long:
      es:
        - Lidero la planificación, implementación y gestión técnica de proyectos de telecomunicaciones.
        - Diseño y desarrollo la lógica de equipos médicos, cumpliendo estrictos estándares regulatorios y mejorando la fiabilidad del hardware.
        - Implemento y optimizo protocolos de comunicación (I2C, SPI, UART, USB, WiFi, Bluetooth, NFC) en microcontroladores de 32 bits de NXP, Renesas y STM32.
        - Desarrollé comunicaciones LoRaWAN de largo alcance entre equipos en diferentes proyectos IoT.
        - Integré Zephyr RTOS en sistemas embebidos, logrando más estabilidad y escalabilidad en proyectos IoT.
        - Superviso la puesta en marcha del hardware, detectando y resolviendo problemas críticos en equipos electrónicos complejos.
        - Gestiono las versiones de software y firmware con GitLab para un desarrollo controlado y colaborativo.
      en:
        - Lead the planning, implementation and technical management of telecom projects.
        - Design and develop the logic of medical devices, meeting strict regulatory standards and improving hardware reliability.
        - Implement and optimise communication protocols (I2C, SPI, UART, USB, WiFi, Bluetooth, NFC) on 32-bit NXP, Renesas and STM32 microcontrollers.
        - Developed long-range LoRaWAN communication between devices across different IoT projects.
        - Integrated Zephyr RTOS into embedded systems, bringing more stability and scalability to IoT projects.
        - Oversee hardware bring-up, finding and fixing critical issues in complex electronic equipment.
        - Manage software and firmware versions with GitLab for controlled, collaborative development.
    tags: [Zephyr, LoRaWAN, Python, STM32, Renesas, NXP, GitLab, Análisis de datos, Laboratorio electrónico]

  - company: Inelcom
    when: 2020 — 2022
    dates: { es: Sep 2020 — Dic 2022, en: Sep 2020 — Dec 2022 }
    role: { es: Programador de sistemas embebidos, en: Embedded Systems Developer }
    plain:
      es: Llevé la industria 4.0 a equipos de campo — máquinas conectadas, fiables y medibles — e introduje nuevas tecnologías IoT en la empresa.
      en: I brought Industry 4.0 to field equipment — connected, reliable, measurable machines — and introduced new IoT technology to the company.
    long:
      es:
        - Diseñé y desarrollé pruebas de validación para nuevos equipos electrónicos.
        - Implementé protocolos de comunicación industrial — Modbus (TCP/IP, RTU) y SNMP — integrándolos con RS232, RS485 y Ethernet.
        - Programé microcontroladores de 8 y 32 bits (NXP, PIC18F, STM32) y procesadores con Linux embebido (Raspbian) para soluciones IoT.
        - Analicé señales de control en instalaciones reales, mejorando el tiempo de respuesta de sistemas críticos.
        - Introduje IoT y FreeRTOS en los proyectos, impulsando la adopción de la Industria 4.0.
        - Redacté la documentación técnica completa — manuales de usuario, informes de verificación y pruebas de validación.
        - Implanté control de versiones con GitLab para la trazabilidad de los proyectos de firmware.
      en:
        - Designed and built validation tests for new electronic equipment.
        - Implemented industrial communication protocols — Modbus (TCP/IP, RTU) and SNMP — integrating them with RS232, RS485 and Ethernet.
        - Programmed 8- and 32-bit microcontrollers (NXP, PIC18F, STM32) and embedded-Linux processors (Raspbian) for IoT solutions.
        - Analysed control signals in real installations, improving the response time of critical systems.
        - Introduced IoT and FreeRTOS into projects, driving the adoption of Industry 4.0.
        - Wrote the full technical documentation — user manuals, verification reports and validation tests.
        - Set up version control with GitLab for traceable firmware projects.
    tags: [C, FreeRTOS, Python, IoT, STM32, Modbus, Industria 4.0]

  - company: Cellnex Telecom
    when: 2020
    dates: { es: Jun 2020 — Ago 2020, en: Jun 2020 — Aug 2020 }
    role: { es: Innovación (prácticas), en: Innovation intern }
    plain:
      es: Investigué cómo el 5G y el IoT cambiarán los proyectos de los próximos años y lo conté en informes y artículos.
      en: I researched how 5G and IoT will change the projects of the coming years, and explained it in reports and articles.
    long:
      es:
        - Investigué tecnologías emergentes como 5G e IoT y elaboré informes estratégicos para proyectos a largo plazo.
        - Escribí artículos técnicos sobre casos de uso innovadores para comunicar los avances a los stakeholders.
        - Hice seguimiento de proyectos de innovación, asegurando que encajaban con los objetivos comerciales y tecnológicos.
      en:
        - Researched emerging technologies such as 5G and IoT and produced strategic reports for long-term projects.
        - Wrote technical articles on innovative use cases to communicate progress to stakeholders.
        - Tracked innovation projects, making sure they matched business and technology goals.
    tags: [Innovación, Telecomunicaciones, Gestión de proyectos]

  - company: Indra
    when: 2019 — 2020
    dates: { es: Abr 2019 — Ene 2020, en: Apr 2019 — Jan 2020 }
    role: { es: Firmware (prácticas), en: Firmware intern }
    plain:
      es: Probé y mejoré sistemas de radar para defensa aérea, trabajando en laboratorio con equipos reales.
      en: I tested and improved air-defence radar systems, working in the lab with real equipment.
    long:
      es:
        - Diseñé, desarrollé y realicé pruebas de integración para equipos de defensa aérea (departamento IFF).
        - Modelé circuitos electrónicos en VHDL con Quartus.
        - Detecté y solucioné problemas en PCBs y sistemas de radar, mejorando su estabilidad operativa.
        - Monté simulaciones en bancos de prueba con osciloscopios, analizadores de espectro y medidores de potencia RF.
        - Colaboré en el análisis de sistemas de comunicación aeronáuticos civiles y militares según estándares internacionales.
      en:
        - Designed, developed and ran integration tests for air-defence equipment (IFF department).
        - Modelled electronic circuits in VHDL with Quartus.
        - Found and fixed issues in PCBs and radar systems, improving their operational stability.
        - Built test-bench simulations with oscilloscopes, spectrum analysers and RF power meters.
        - Helped analyse civil and military aeronautical communication systems against international standards.
    tags: [VHDL, Quartus, Radar, IFF, Defensa, Osciloscopio]

  - company: Everis
    when: 2018 — 2019
    dates: { es: Sep 2018 — Abr 2019, en: Sep 2018 — Apr 2019 }
    role: { es: IA y nuevas tecnologías (prácticas), en: AI & emerging tech intern }
    plain:
      es: Construí prototipos de inteligencia artificial para clientes y les ayudé a decidir qué tecnología usar.
      en: I built artificial-intelligence prototypes for clients and helped them choose the right technology.
    long:
      es:
        - Desarrollé pruebas de concepto de IA con TensorFlow, con modelos de clasificación de un 85 % de precisión.
        - Programé soluciones con Python, C, JavaScript, Vue.js y Node.js.
        - Diseñé bases de datos no relacionales (MongoDB) para guardar métricas y datos procesados.
        - Elaboré análisis de mercado sobre IA y presenté propuestas estratégicas a clientes.
        - Seleccioné el hardware adecuado para cada proyecto, optimizando coste y rendimiento.
      en:
        - Built AI proofs of concept with TensorFlow, with classification models reaching 85% accuracy.
        - Programmed solutions with Python, C, JavaScript, Vue.js and Node.js.
        - Designed non-relational databases (MongoDB) to store metrics and processed data.
        - Produced market analyses on AI and presented strategic proposals to clients.
        - Chose the right hardware for each project, balancing cost and performance.
    tags: [TensorFlow, Python, Vue.js, Node.js, MongoDB, Firebase, IA]

education:
  - when: 2021
    title: { es: Ingeniería Electrónica · Universidad Politécnica de Madrid, en: Electronics Engineering · Universidad Politécnica de Madrid }
    plain:
      es: Proyecto final — un huerto urbano inteligente y autónomo, documentado en el Lab.
      en: Final project — a smart, autonomous urban garden, documented in the Lab.
---
