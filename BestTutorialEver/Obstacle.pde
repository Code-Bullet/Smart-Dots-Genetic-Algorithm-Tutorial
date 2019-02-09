/*Rectangular obstacles*/

class Obstacle {
   float x0, y0, x1, y1;
   float w, h;
   
   Obstacle(float x, float y, float wd, float ht) {
      x0 = x; y0 = y;
      x1 = x + wd; y1 = y + ht;
      w = wd; h = ht;
      rect(x, y, w, h);
   }
   
   void show() {
     rect(x0,y0,w,h);
   }
}
