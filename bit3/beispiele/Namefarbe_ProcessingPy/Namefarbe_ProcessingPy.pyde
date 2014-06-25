
farbe = color(0)

name = ['J', 'e', 'n', 's']

def setup():
    global farbe, name
    size( 300, 300 )
    rot = 0
    gruen = 0
    blau = 0
    
    for index, buchstabe in enumerate(name):
        print buchstabe, ord(buchstabe), index
        # den buchstaben als zahl
        zahl = ord(buchstabe)
        # verschlüsseln
        secret = zahl << 1
        
        # zurück von zahl nach buchstabe
        geheim_buchstabe = chr(secret)
        
        # den verschlüsselten buchstaben wieder
        # in den alten buchstaben-speicher schreiben 
        buchstabe = geheim_buchstabe
        
        # und den buchstaben zurück in den namen schreiben
        name[index] = buchstabe
        
        # die ersten drei buchstaben bilden eine neue farbe
        if index == 0:
            rot = secret
        elif index == 1:
            gruen = secret
        elif index == 2:
            blau = secret
            farbe = color(rot, gruen, blau)
            
    
def draw():
    background(farbe)

