PImage img;
PImage newImg;
 
void setup () {
  size(654,436);
  img = loadImage("unsp_whale_breach_sm.jpg");
  newImg = createImage(654,436,RGB);
  
  for (int i = 0; i < newImg.width; i++) {
    for (int j = 0; j < newImg.height; j++) {
      int loc = i + newImg.width * j;
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      color c = color(255-g,255-b,255-r);
      newImg.pixels[loc] = c;
    }
  }
  
  for (int i = newImg.width / 5; i < newImg.width / 5 * 4; i++) {
    for (int j = newImg.height / 5; j < newImg.height / 5 * 4; j++) {
      int loc = i + newImg.width * j;
      newImg.pixels[loc] = img.pixels[loc];
    }
  }
}
 
void draw () {
  background(0);
  image(newImg,0,0);
}

void mousePressed () {
  save("glitch_whale_3.png");
}