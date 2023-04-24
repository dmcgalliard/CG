class Grenade extends Sprite  {


   long mark, wait = 1000;
   //long mark2, wait2 = 5000;
   Grenade(float x, float y, PVector velocity, int team) {
       super(x, y, 30, 30);
       vel = velocity;
       this.team = team;
       mark = millis();
      // mark2 = millis();


   }


   Grenade(PVector pos, PVector vel, int team) {
       this(pos.x, pos.y, vel, team);
   }


   @Override
   void update() {
       pos.add(vel);
       super.update();
       PVector aim = new PVector(0, -10);
       PVector aim2 = new PVector(5, 0);
       PVector aim3 = new PVector(0, 5);
       PVector aim4 = new PVector(-10, 0);
       aim = aim.normalize().mult(8);
       aim2 = aim2.normalize().mult(8);
       aim3 = aim3.normalize().mult(8);
       aim4 = aim4.normalize().mult(8);
      
      // aim3 = aim3.normalize().mult(8);
       //aim4 = aim4.normalize().mult(8);
       if(this.pos.x < 0 + size.x/2) _SM.destroy(this);
       if(this.pos.x > width - size.x/2) _SM.destroy(this);
       if(this.pos.y < 0 + size.y/2) _SM.destroy(this);
       if(this.pos.y > height - size.y/2) _SM.destroy(this);
      
       if(millis() - mark > wait) {
           mark = millis();
           _SM.spawn(new Bullet(pos, aim, team));
           _SM.spawn(new Bullet(pos, aim2, team));
           _SM.spawn(new Bullet(pos, aim3, team));
           _SM.spawn(new Bullet(pos, aim4, team));
          
          
       }






   }










}






