class Button{
  float x, y, w, h; 
  String text;
  boolean active;
  
  Button(float x_, float y_, float w_, float h_, String text_){
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    text = text_;
  }
  
  void display(){
    push();
      textAlign(CENTER, CENTER);
      strokeWeight(3);
      
      if (!active){
        stroke(255);
        fill(255);
        rect(x, y, w, h);
        fill(0);
        text(text, x+w/2, y+h/2);
      }else{
        stroke(255);
        fill(0);
        rect(x, y, w, h);
        fill(255);
        text(text, x+w/2, y+h/2);
      }
    pop();
  }
  
  void click(){
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){ 
      active = !active;
    }
  }
}
