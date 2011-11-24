// This will be a rabbit in space .gif, whoops, this is the real change
// A new comment

Star stars[];
int STARS = 100;
void setup() {
  size(640,480);
  stars = new Star[STARS];
  for ( int i =0; i < STARS; i++) {
    stars[i] = new Star( random( width ), random( height ), random( 10 ));
  }
  frameRate( 65 );
  smooth();
}
void draw() {
  background(0);
  strokeWeight( 2 );
  for ( int i =0; i < STARS; i++) {
    stroke( stars[i].z * 25 );
    point( stars[i].x, stars[i].y );
    stars[i].x -= stars[i].z;
    if (stars[i].x < 0) {
      stars[i] = new Star( width, random( height ), sqrt(random( 100 )));
    }
  }
}
class Star {
  float x, y, z;
  Star( float x, float y, float z ) {
    this.x = x;
    this.y = y;
    this.z = z;
  }
}
