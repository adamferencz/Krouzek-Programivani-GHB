import processing.net.*;
PImage pressentImage;
Server s;
Pressent pressent;
ArrayList<Player> players;

void setup() {
  s = new Server(this, 12000);
  size(800, 800);
  players = new ArrayList<Player>();
  pressent = new Pressent();
  pressentImage = loadImage("darek.png");
}

void draw() {

  // check if a client sent something
  Client c = s.available();
  if (c != null) {
    String input = c.readString();
    String[] s1 = split(input, '/');

    String name = s1[0];
    String commands = s1[1];
    String[] comm = split(commands, ',');
    
    
    boolean isNew = true;
    for (Player p : players){
      //print(name, p.name);
      if (p.name.equals(name)){
        isNew = false;
        p.move(comm);
        break;
      }
    }
    
    if (isNew){
      players.add(new Player(name));    
    }

    //print(name, commands); 

  }
  delay(10);
  
  
  background(255);
  for (Player p : players){
    if (p.check()){
      p.score++;
      pressent.port();
    }
    p.display(); 
  }
  pressent.move();
  pressent.display();
}
