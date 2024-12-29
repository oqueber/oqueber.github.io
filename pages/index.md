---
layout: page
title: About
permalink: /
weight: 3
---

{% include landing.html %}

# **{{ site.author.name }}**

Hola 👋, soy un apasionado tecnólogo creativo. Me dedico a utilizar la tecnología para imaginar, construir y dar vida a proyectos que abarcan un amplio espectro de disciplinas, desde soluciones prácticas hasta innovaciones artísticas.

Con experiencia trabajando con tecnologías como Raspberry Pi, ESP32, Arduino y Node.js, me encanta combinar hardware y software para resolver problemas de manera única.

Actualmente, estoy en busca de nuevos retos que impulsen mi creatividad y aporten valor. Si necesitas soluciones tecnológicas fuera de lo común, diseñadas para marcar la diferencia, estaré encantado de colaborar contigo.

<div class="row">
  <div>
    {%- assign unfocused_color = "6c757d" -%}

    <p style="display: inline-block;" >Redes: </p>

    {% for account in site.author %}

      {%- assign service_name = account[0] -%}
      {%- assign service_data = site.data.social-media[service_name] -%}
      {%- if service_data -%}    
      <a class="social mx-1"  href="{{ service_data.url }}{{ account[1] }}"
         style="color: #{{ unfocused_color }}"
         onMouseOver="this.style.color='#{{ service_data.color }}'"
         onMouseOut="this.style.color='#{{ unfocused_color }}'">

        <p style="text-transform: capitalize;"> {{service_name}} </p>
      </a>
      {%- endif -%}

    {% endfor %}
  </div>
</div>

<!--
<div class="row">
{% include about/skills_resumen.html source=site.data.skills_resumen %}
</div>
-->

<div class="row" style="display: block;">
{% include about/timeline.html %}
</div>
