/*
  Zum Vergleich von Daten und Programmen
  
  - Beispiel 2 -

*/

size(640, 360);

smooth();

background(255);

rectMode(CENTER);

translate(width/2, height/2.15);

for ( int i=123; i>0; i--) {
  translate( random(-20,20), random(-20,20) );
  rotate( random(360) );
  fill( random(255), random(255), random(255), 127+random(127) );
  rect( 0, 0, width/8*5, height/8*5 );
  
  saveFrame("the very many/possible staic informations - "+i+".png");
}

