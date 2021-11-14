void setup() {
    size(285, 285);
}
void draw() {

}
float T = 0;
void mouseWheel(MouseEvent event) {
    int R = 255;
    int G = 255;
    int B = 255;
    color c = color(R, G, B);


    if (event.getCount() == -1) {
        restar();
    }
    if (event.getCount() == +1) {

        sumar();
        println(T);
    }

    for (int i = 30; i < width - 30; i++) {
        for (int j = 30; j < height - 30; j++) {
            set(i, j, c);
            c = color(R, G = G - 1, B + T);
        }
        G = 255;
        c = color(R = R - 1, G, B + T);
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
    if (T >= -255) {
        T = T - 5;
    }
}
void sumar() {
    if (T <= 0) {
        T = T + 5;
    }
}
