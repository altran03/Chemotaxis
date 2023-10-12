Mover[] bacteria;
void setup(){
  size (1000, 1000);
  background (#000000);
  bacteria = new Mover[1000];
  for(int i = 0; i< bacteria.length; i++){
    bacteria[i] = new Mover();
  }
}

void draw (){
  background (0);
  for (int i = 0; i < bacteria.length; i++){
    bacteria[i].fillcolor();
    bacteria[i].show();
    bacteria[i].move();
  }
}

class Mover{
  int x;
  int y;
  int Bcolor;
  Mover()
  {
  x = 500;
  y = 500;
  //Bcolor = #CE2525;
  Bcolor = color ((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
  }
  
  void move(){
    x = x + ((int)((Math.random()*3))) - 1;
    y = y + ((int)((Math.random()*3))) - 1;
  }
  
  void show(){
    ellipse(x,y,20,20);
    }
  
  void fillcolor(){
    fill(Bcolor);
  }
}
