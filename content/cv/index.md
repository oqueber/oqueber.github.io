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
since: 2020                 # years of experience are counted from this year (matches "6 años" in the PDF CV)
photo: photo.jpg            # file in this folder
photo_alt:
  es: Oqueber en su taller con una tira de LEDs encendida
  en: Oqueber in his workshop holding a lit LED strip
cv_pdf:                     # optional: drop the PDFs in this folder and write their names
  es: Oqueber_CV_ES.pdf
  en: Oqueber_CV_EN.pdf

hello:
  es: ¡Hola! soy
  en: Hi! I'm
headline:
  es: Ingeniero de firmware embebido. Convierto ideas en aparatos que funcionan.
  en: Embedded firmware engineer. I turn ideas into devices that work.
intro:
  es: Escribo el firmware — el «cerebro» — de equipos médicos, de telecomunicaciones e IoT, desde la puesta en marcha de la placa hasta el producto final. En mi tiempo libre invento cosas en mi taller de Madrid — y las documento todas en el Lab.
  en: I write the firmware — the "brain" — inside medical, telecom and IoT equipment, from board bring-up to finished product. In my free time I invent things in my Madrid workshop — and document every one of them in the Lab.

# Skills grid under the key facts. Only list what you can talk about in an interview.
skills:
  - group: { es: Lenguajes, en: Languages }
    items: [C, C++, Python, VHDL, JavaScript]
  - group: { es: RTOS y sistemas, en: RTOS & OS }
    items: [Zephyr RTOS, FreeRTOS, { es: Linux embebido, en: Embedded Linux }]
  - group: { es: Microcontroladores, en: Microcontrollers }
    items: [STM32, NXP, Renesas, ESP32, PIC18F, Raspberry Pi]
  - group: { es: Comunicaciones, en: Communications }
    items: [I2C, SPI, UART, USB, RS232 / RS485, Modbus, Ethernet, LoRaWAN, WiFi, Bluetooth, NFC, MQTT]
  - group: { es: Depuración y laboratorio, en: Debugging & lab }
    items: [JTAG / SWD, SEGGER J-Link, Lauterbach, { es: Osciloscopio, en: Oscilloscope }, { es: Analizador lógico, en: Logic analyser }, { es: Polímetro, en: Multimeter }, { es: Analizador de espectro, en: Spectrum analyser }, { es: Bring-up de hardware, en: Hardware bring-up }]
  - group: { es: Hardware y FPGA, en: Hardware & FPGA }
    items: [{ es: Lectura de esquemáticos, en: Schematic reading }, { es: Altium (validación de PCB), en: Altium (PCB validation) }, FPGA, VHDL, Intel Quartus, { es: Diseño VLSI (microcredencial UPM), en: VLSI design (UPM micro-credential) }]
  - group: { es: Forma de trabajar, en: Ways of working }
    items: [GitLab, { es: Tests unitarios en C, en: C unit testing }, { es: Normativa de equipos médicos, en: Medical-device regulations }, { es: Documentación técnica, en: Technical documentation }, { es: Pruebas de validación, en: Validation testing }]

# Lab articles shown on the CV (folder names). Leave empty to show the most recently active ones.
featured: [huerto-urbano-inteligente, camara-salvaje, el-compi-bmo]

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
        - Desarrollo firmware C/C++ para equipos médicos regulados, de los requisitos a producción, cumpliendo estrictas normas regulatorias y de documentación.
        - Escribo tests unitarios para cada módulo en C que desarrollo.
        - Leo los esquemáticos a diario para poner en marcha el firmware — qué está conectado, con qué y para qué.
        - Valido cada parte de las nuevas PCBs frente al diseño en Altium; diagnostico fallos con polímetro, osciloscopio y analizadores lógicos y analógicos, y acuerdo soluciones con el departamento de hardware.
        - Implemento y optimizo protocolos de comunicación (I2C, SPI, UART, USB, WiFi, Bluetooth, NFC) en microcontroladores de 32 bits de NXP, Renesas y STM32.
        - Desarrollé comunicaciones LoRaWAN de largo alcance entre equipos en diferentes proyectos IoT.
        - Integré Zephyr RTOS en sistemas embebidos, logrando más estabilidad y escalabilidad en proyectos IoT.
        - Depuro el firmware a bajo nivel con JTAG y SWD, usando herramientas de SEGGER y Lauterbach para sacar adelante los proyectos.
        - Gestiono las versiones de software y firmware con GitLab para un desarrollo controlado y colaborativo.
      en:
        - Lead the planning, implementation and technical management of telecom projects.
        - Develop C/C++ firmware for regulated medical devices, from requirements to production, meeting strict regulatory and documentation standards.
        - Write unit tests for every C module I develop.
        - Read schematics daily to bring firmware up — what is connected, to what, and why.
        - Validate every section of new PCBs against the Altium design; diagnose faults with multimeter, oscilloscope and logic/analog analysers, and agree fixes with the hardware team.
        - Implement and optimise communication protocols (I2C, SPI, UART, USB, WiFi, Bluetooth, NFC) on 32-bit NXP, Renesas and STM32 microcontrollers.
        - Developed long-range LoRaWAN communication between devices across different IoT projects.
        - Integrated Zephyr RTOS into embedded systems, bringing more stability and scalability to IoT projects.
        - Debug firmware at low level over JTAG and SWD, using SEGGER and Lauterbach tools to get projects over the line.
        - Manage software and firmware versions with GitLab for controlled, collaborative development.
    tags: [C/C++, Zephyr, LoRaWAN, Python, STM32, Renesas, NXP, JTAG/SWD, SEGGER, Lauterbach, Altium, Unit testing, GitLab]

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
  - when: 2018 — 2021
    title: { es: Grado en Ingeniería Electrónica de Comunicaciones · Universidad Politécnica de Madrid, en: BSc Electronic Communications Engineering · Universidad Politécnica de Madrid }
    plain:
      es: Proyecto final — un huerto urbano inteligente y autónomo, documentado en el Lab.
      en: Final project — a smart, autonomous urban garden, documented in the Lab.
  - when: { es: Complementaria, en: Additional }
    title: { es: Microcredencial en Diseño VLSI (cursada parcialmente) · Universidad Politécnica de Madrid, en: VLSI Design micro-credential (partially completed) · Universidad Politécnica de Madrid }
    plain:
      es: Diseño de circuitos integrados, como continuación de mi experiencia con FPGA y VHDL.
      en: Integrated-circuit design, building on my FPGA and VHDL experience.
---
