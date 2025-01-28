float x0;  // Definimos la anchura de la pantalla
float y0;  // Definimos la altura de la pantalla
float M = 10E20;  // Masa de la estrella
float G = 6.67 * 1E-11;  // Constante G de gravitacion universal

ArrayList<Planet> planets = new ArrayList<Planet>(); // Crea un array donde se guardan elementos del tipo planeta

void setup() {
  size(800, 800);  // Definimos la anchura y altura de la pantalla
  frameRate(60);  // Definimos el refresco de la animación
  x0 = width/2;  // Definimos la coordenada x de la estrella en la mitad de la anchura de la pantalla
  y0 = height/2;  // Definimos la coordenada y de la estrella en la mitad de la altura de la pantalla
}

void mousePressed() { // Cada vez que se haga click en la pantalla se creará un nuevo planet que se guardará en el array antes creado
  Planet newPlanet = new Planet(mouseX, mouseY);
  planets.add(newPlanet);
}

void draw() {
  background(0);  // Fondo negro
  stroke(255);  // Lineas blancas
  
  // Dibujamos la estrella en el centro de la pantalla
  strokeWeight(10);
  point(x0, y0);
  
  for (int i = 0; i < planets.size(); i++) { // Bucle que va dibujando los planetas que existan en el array
    Planet p = planets.get(i);
    p.update();
    p.draw();
  }
}

class Planet {
  float R, xx, yy;  // Definimos las variables radio de orbita, posicion instantanea (xx,yy) del planeta orbitando
  float t = 0;  // Definimos el tiempo
  float omega;  // Definimos la frecuencia angular del movimiento orbital
  color c;
  
  Planet(float x, float y) {
    xx = x;  // Definimos la coordenada x inicial del planeta
    yy = y;  // Definimos la coordenada y inicial del planeta
    
    R = sqrt(pow(xx-x0, 2) + pow(yy-y0, 2));  // Calculamos la distancia, R, entre planeta y la estrella
    omega = sqrt(G*M/pow(R, 3));  // Calculamos la velocidad angular del movimiento orbital seg´un la ecuaci´on 35
    c = color(random(255), random(255), random(255)); // Color aleatorio para cada planeta
  }
  
  void update() {
    // Calculamos la posicion actual del planeta
    float x = R * cos(omega * t) + x0;
    float y = R * sin(omega * t) + y0;
    
    xx = x;
    yy = y;
    
    // Aumentamos el tiempo
    t += 0.1;
  }
  
  void draw() {
    // Dibujamos el planeta
    stroke(c);
    strokeWeight(5);
    point(xx, yy);
  }
}
