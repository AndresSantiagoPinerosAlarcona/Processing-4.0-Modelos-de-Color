void setup() {
    size(285, 285);
}
void draw() {
    colorMode(HSB);
    for(int y=30; y < width-30; y++)
    for(int x=30; x < height-30; x++)
    {
      stroke(x,y,T);
      point(x,y);
    } 
}
float T = 255;
void mouseWheel(MouseEvent event) {



    if (event.getCount() == -1) {
        restar();
        println(T);
    }
    if (event.getCount() == +1) {

        sumar();
        println(T);
    }


}
////////////////////////////// 
void mouseClicked() {
    color c = get(mouseX, mouseY);
    fill(c);
    noStroke();
    rect(0, 0, width, 30);
    rect(0, 0, 30, height);
    rect(width - 30, 0, width, height);
    rect(0, height - 30, width, height);
}
//////////////////////////////

void restar() {
    if (T >= 0) {
        T = T - 5;
    }
}
void sumar() {
    if (T <= 255) {
        T = T + 5;
    }
}
