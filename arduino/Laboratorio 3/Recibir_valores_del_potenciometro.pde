import processing.serial.*;

Serial puertoSerie; // Variable para la comunicación serial
int valorPotenciometro = 0; // Variable para almacenar el valor recibido
float mensaje;

void setup() {
  size(400, 200); // Tamaño de la ventana de Processing
  puertoSerie = new Serial(this, "COM4", 9600); // Inicia la comunicación serial con Arduino
}

void draw() {
  //background(255); // Fondo blanco
  //fill(0); // Texto en negro
  //textSize(24); // Tamaño de letra
  //text("Valor del potenciómetro: " + valorPotenciometro, 50, 100); // Muestra el valor del potenciómetro
  //serialEvent(puertoSerie);
  mensaje = puertoSerie.read();
  println(mensaje);
}

//void serialEvent(Serial puertoSerie) {
 // valorPotenciometro = puertoSerie.read(); // Lee el valor enviado por Arduino
//}
