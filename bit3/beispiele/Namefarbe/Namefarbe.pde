
char[] name = {
  'J', 'e', 'n', 's'
};

color farbe;

void setup() {
  size( 300, 300 );

  int rot = 0;
  int gruen = 0;
  int blau = 0;

  int index = 0;
  // für jeden buchstaben
  
  for ( char buchstabe: name) {
    // den Buchstaben in bytes/zahlen
    int zahl = (int)buchstabe;
    
    // den Buchstaben "verrschlüsseln"
    int secret = zahl << 1;
    //          shift ^^ links
    char geheim_buchstabe = (char) secret;
    
    buchstabe = geheim_buchstabe;
    
    // mit den ersten 3 buchstaben
    switch (index) {
      case 0:
        rot = buchstabe;
        break;
      case 1:
        gruen = buchstabe;
        break;
      case 2:
        blau = buchstabe;
        // farbe erstellen
        farbe = color(rot, gruen, blau);
        break;
    }
    
    index = index + 1;
  }

}


void draw() {
  background(farbe);
}

