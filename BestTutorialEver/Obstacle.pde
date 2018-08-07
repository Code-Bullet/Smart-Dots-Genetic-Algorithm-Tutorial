/*Rectangular obstacles*/

class Obstacle {
   float x0;
   float y0;
   
   float w;
   float h;
   
   Obstacle(float a, float b, float c, float d) {
      x0 = a;
      y0 = b;
      w = c;
      h = d;
      
      rect(a,b,c,d);
   }
   
   void show() {
     rect(x0,y0,w,h);
   }
   
}
