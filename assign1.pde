PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage treasure;
PImage hp;
int a,b,c,d,e,speed;
int x,y;
void setup () {
  size(640,480) ; 
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  enemy=loadImage("img/enemy.png");
  fighter=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png");
  a=floor(random(600));
  b=floor(random(40,380));
  c=floor(random(20,211));
  d=floor(random(640));
  e=floor(random(10,420));
  speed=floor(random(3,7));
  x=0;
  y=-640;
}

void draw() {
  //bg
  image(bg2,x,0);
  image(bg1,y,0);
  if(x==640){
    x=-640;
  }
  else{
    x++;
  }
  
  if(y==640){
    y=-640;
  }
  else{
      y++;
  }
  //hp
  fill(#ff0000);
  rectMode(CORNERS);
  rect(4,4,c,20);
  image(hp,0,0);
  //fighter
  image(fighter,590,300); 
  //treasure
  image(treasure,a,b);
  //enemy
  image(enemy,d,e);
  d+=speed;
  d%=640;
}
