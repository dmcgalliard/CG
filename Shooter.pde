class Shooter extends Invader { 

    long mark, wait = 1200; //ms
    long mark2, wait2 = 2500;

    Shooter(float x, float y) { 
        super(x,y);
        mark = millis();
        mark2 = millis();
    }

    @Override
    void update() { 
        super.update();
        PVector aim = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y);
        aim = aim.normalize().mult(8); // this turns into a single unit vector then increase its magnitude

        if(millis() - mark > wait) { 
            mark = millis();
            _SM.spawn(new Bullet(pos, aim, team));
        }

        if(millis() - mark2 > wait2) { 
            mark2 = millis();
            _SM.spawn(new Grenade(pos, aim, team));
        }
    }



}