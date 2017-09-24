int counter = 29; // number of images, would be cooler if it could count the folder
PImage[] imgs = new PImage[counter]; // declary the array, create 20 spots

int windowWidth = 800;

void setup() {
  size(800,600);
  background(0);

  // load an array of images named photo*.jpg
  for (int i = 1; i < counter; i++) {
    imgs[i] = loadImage("photo" + i + ".jpg");
  }
}

void draw() { 
  image(imgs[counter/2], 0, 0); // draw the default image
  
  int mouse = mouseX; // grab mouse horizontal position
  int bandWidth = windowWidth / imgs.length+1; // divide the window width by the number of items in range + 1
  int k = 0; // declare a variable to hold previous value of i
  
  // the for loop checks this statement at 60fps
  for (int i=1; i < counter; i++ ) {
    if (mouse > k*bandWidth && mouse <= i*bandWidth) { // looks at each band, if mouse is in it
      image(imgs[i], 0, 0); //grab that band's image via the array index (i) 
      k = i; // continue the loop, but save i's prev value to remember the left side of the band
      //println(imgs[i]);
      //println(mouse);
      tint(200);
    }
  }
}