class Bullet extends Sprite {
    
    Bullet(float x, float y, PVector velocity, int team) {
        super(x, y, 10, 10); // invoke parent contructor(Sprite)
        vel = velocity;
        this.team = team;
    }


    Bullet(PVector pos, PVector vel, int team) { 
        //contructor chaining 
        this(pos.x, pos.y, vel, team); // invoke another own contructor
        //this refers to the above on line 3 
    }
    
    @Override
    void update() {
        pos.add(vel);
    }
}