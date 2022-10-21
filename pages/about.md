---
layout: page
title: About
permalink: /about/
weight: 3
---

# **About Me**

Hola, soy **{{ site.author.name }}** :wave:, un tecnólogo creativo (una persona que usa la tecnología para realizar proyectos en un amplio espectro 🦾:robot:), un fabricante, un manitas que reside en Madrid, España. Normalmente trabajo con tecnologías como Raspberry Pi, Arduino y Node.js.

Actualmente me encuentro buscando nuevos retos, preferiblemente aquellos que busquen la tecnología como forma creativa para crear soluciones de valor.

<div class="row">
{% include about/skills.html title="Programación:" source=site.data.programming-skills %}
{% include about/skills.html title="Habilidades:" source=site.data.other-skills %}
</div>

<div class="row">
  {%- assign unfocused_color = "6c757d" -%}
  
  <p>Redes: </p>
  
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
                                                
<div class="row">
{% include about/timeline.html %}
</div>
