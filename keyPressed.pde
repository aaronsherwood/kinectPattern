void keyPressed() {
  
  if (key=='r') {
    background(0);
  }
  
  if (key=='s') {
    saveFrame ("goPic "+year()+"."+month()+"."+day()+" "+"time"+" "+hour()+"."+minute()+".png");
  }
  
  if (key=='z') {
    frame.setLocation(1441,0);
    ndScreen=true;
  }
  
  if (key=='x') {
    frame.setLocation(10,50);
    ndScreen=false;
  }
  
  if (key=='a'){
    show=true;
}

  if (key=='b'){
    show=false;
    background(0);
}

} 
