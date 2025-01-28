# Simulación Orbital en Processing

Este repositorio contiene un programa desarrollado en **Processing** que simula la órbita de un planeta alrededor de una estrella. La velocidad orbital se calcula en base a las leyes de dinámica y gravedad, y permite una interacción en tiempo real para ajustar las características de la órbita.

## Funcionalidades

1. **Simulación de órbitas circulares**:
   - Un planeta orbita una estrella central a una distancia determinada por el usuario.
   - La velocidad angular varía en función de la distancia al centro de la órbita.

2. **Interacción en tiempo real**:
   - Los usuarios pueden ajustar la distancia del planeta a la estrella haciendo clic con el ratón en la pantalla.

3. **Mejoras opcionales**:
   - Soporte para múltiples planetas orbitando simultáneamente.
   - Simulación de órbitas elípticas para un comportamiento más realista.

## Requisitos

- [Processing IDE](https://processing.org/download) instalado en tu computadora.

## Uso

1. Clona este repositorio en tu computadora:
   ```bash
   git clone https://github.com/k1kot3/SimulacionOrbital.git
   ```
2. Abre el archivo SimulacionOrbital.pde en el IDE de Processing.
3. Ejecuta el programa.
4. Haz clic en cualquier punto de la pantalla para establecer la posición inicial del planeta y su órbita.

## Conceptos implementados

El programa utiliza las siguientes ecuaciones y conceptos:

Ley de gravitación universal.
Velocidad angular (ω = sqrt(G * M / R^3)), donde:
G: Constante de gravitación universal.
M: Masa de la estrella.
R: Distancia entre el planeta y la estrella.

## Personalización

El programa es fácilmente ampliable. Puedes:

- Añadir más planetas con órbitas independientes.
- Implementar órbitas elípticas para mayor realismo.
- Cambiar los colores, tamaños y estilos visuales de los objetos.

Las contribuciones son bienvenidas :)

