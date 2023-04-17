class Grenade extends Sprite  {


   long mark, wait = 1000;
  
   Grenade(float x, float y, PVector velocity, int team) {
       super(x, y, 30, 30);
       vel = velocity;
       this.team = team;
       mark = millis();
   }


   Grenade(PVector pos, PVector vel, int team) {
       this(pos.x, pos.y, vel, team);
   }


   @Override
   void update() {
       pos.add(vel);
       super.update();
       PVector aim = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y);
       aim = aim.normalize().mult(8);


       if(millis() - mark > wait) {
           mark = millis();
           _SM.spawn(new Bullet(pos, aim, team));
           //Bullet.remove(Grenade);
       }




   }
}
