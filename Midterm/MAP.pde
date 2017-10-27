//Cathy
class Map {
  PImage map = loadImage("map01.jpg");
  PImage airplane = loadImage("plane1.png");
  float ax; //departure country x cordinate 
  float ay; //departure country y cordinate 
  float bx; //arrival country x cordinate 
  float by; //arrival country x cordinate 
  float time; //airplane fly time 
  float curX; //airplane flying x position 
  float curY; //airplane flying y position 

  //constructor for MAP class
  Map(float ax, float ay, float bx, float by) {
    this.ax= ax;
    this.ay= ay;
    this.bx= bx;
    this.by= by;
    map.resize(1600, 1200);
    airplane.resize(100, 100);
  }

  void display() {
    curX= ax;
    curY= ay;
    image(map, 0, 0);
    stroke(0);
    strokeWeight(5);
    fill(255);
    ellipse(ax, ay, 10, 10);
    ellipse(bx, by, 10, 10);
    stroke(#1B95DF);
    strokeWeight(10);
    line(ax, ay, bx, by);      
    for (float time=0; time<10; time++) {
      curX=(ax-70)+(bx-ax)/time;
      curY=(ay-50)+(by-ay)/time;
    }
    image(airplane, curX,curY);
   // image(airplane, ax-70, ay-50); 
   // image(airplane, bx-20, by-40);
  }


}