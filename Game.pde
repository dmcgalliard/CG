//this function runs one time at the beginning 
//think.... pre-code 
void setup() { 
    size(800, 600); //window size, 800 wide, 600 tall
}


//always runs at the speed of the frame rate 
//think... FPS
void draw() { 
    //a circle that follows the mouse, 50x50, WxH
    ellipse(mouseX, mouseY, 50, 50);
}
