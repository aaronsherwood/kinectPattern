float drag = 0.957;
class Part {
  float x, y, vx, vy, ax, ay;
  float px, py, force;

  Part(float tempx, float tempy) {
    x = tempx;
    y = tempy;
    vx = random(-2, 2);
    vy = random(-2, 2);
    force = random(1);
    px = x;
    py = y;
  }
  void go() {
    vx += ax;
    vy += ay;
    vx *= drag;
    vy *= drag;
    px = x;
    py = y;
    x+=vx;
    y+=vy;
    ax = 0;
    ay = 0;
    bounds();
  }

  void bounds() {
    boolean c = false;
    if (x>width) {
      vx=-vx;
      c = true;
    }
    if (x<0) {
      c = true;
      vx=-vx;
    }
    if (y>height) {
      c = true;
      vy=-vy;
    }
    if (y<0) {
      vy=-vy;
      c = true;
    }
    if (c) {
      px = x;
      py = y;
    }
  }

  void draw() {
    line(px, py, x, y);
  }

  void touch(float tx, float ty) {
    float dx = tx - x;
    float dy = ty - y;
    float d = sqrt(dx*dx+dy*dy);
    if (d > 0 && d < 1200) {
      d = 1.0f/d * force;
      dx *= d;
      dy *= d;
      ax += dx;
      ay += dy;
    }
  }
}


class PSys {
  ArrayList particles;

  PSys (int num) {
    particles = new ArrayList();
    for (int i=0;i<num;i++)
      particles.add(new Part(width/2, height/2));
  }

  void go() {    
    for (int i=0; i<particles.size();i++) {
      Part p = (Part) particles.get(i);
      p.go();
    }
  }

  void draw() {
    for (int i=0; i<particles.size();i++) {
      Part p = (Part) particles.get(i);
      p.draw();
    }
  }


  void touch(float trackX, float trackY) {
    for (int i=0; i<particles.size();i++) {
      Part p = (Part) particles.get(i);
      p.touch(trackX, trackY);
    }
  }


  void born(float trackX, float trackY) {
    for (int i=0;i<create;i++) {
      particles.add(new Part(trackX, trackY));
    }
  }
}

