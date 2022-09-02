---
title: ¿Que es el jostyck?
tags:  [basico,joystick,sensores]
image: ../img/posts/2016-08-30-que-es-el-joystick/poster.jpg
style: border  
comments: true
---


## ¿Que es el joystick?

El joystick es una palanca de movimiento, este dispositivo es un sensor que nos ayuda a convertir un movimiento físico, en una acción eléctrica. Por ejemplo en los videojuegos se utiliza para mover el personaje del juego. En el mundo de la electrónica tiene tantas funciones tu les quieras dar, pero el mas usado es para darle dirección a los motores de los robots.

Su **funcionamiento** interno es muy sencillo, consiste en dos potenciometro y un botón. Cada eje de coordenada es un potenciómetro independiente y la coordenadas cartesianas se calculan con la caída de voltaje que arroja la caida de tension que se muestra en la señal.


![potenciometro]({{ site.baseurl }}/img/posts/2016-08-30-que-es-el-joystick/potenciometro.JPG)

* -Mientras más te cercas de la entrada. Mas voltaje tendras en la señal. 
* -Mientras más te cerca a la tierra(GND), menos voltaje tendrás en la señal y con esos valores vas jugando.


![potenciometro]({{ site.baseurl }}/img/posts/2016-08-30-que-es-el-joystick/potenciometro2.JPG)

* 1) Colocamos gnd a la tierra del arduino.
* 2) Colocamos donde dice 5V a los 5 voltios de el arduino.
* 3) Donde dice VRx significa voltaje variable en el eje x y lo conectaremos a A0 que significa pin 0 del puerto analogo del arduino.
* 4) Donde dice VRy significa voltaje variable en el eje y y lo conectaremos a A1 que significa pin 1 del puerto analogo del arduino.
* 5) SW significa switch osea el boton cualquiera y lo conectamos al pin digital 4.

## El código:
----------------


```cpp

//---------------------------------
//---      Oqueber Navarro 
//---     Codigo del joystick
//----------------------------------

const int eje_x = A0;
const int eje_y = A1;
const int boton = 4;

void setup(){
  pinMode(boton,INPUT);
  digitalWrite(boton, HIGH);
  Serial.begin(9600);
}

void loop(){
  Serial.print("X:  ");
  Serial.println(analogRead(eje_x),DEC);
  
  Serial.print("Y:  ");
  Serial.println(analogRead(eje_y),DEC);

  Serial.print("boton:  ");
  Serial.println(digitalRead(boton));

  Serial.println("-----------------------");
  delay(500);
}
```
