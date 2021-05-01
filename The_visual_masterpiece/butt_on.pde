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
      rect(x, y, w, h);
      fill(0);
      text(text, x+w/2, y+h/2);
    pop();
  }
  
  void click(){
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){ 
      println("box clicked");
      if (active == false){
        active = true;
        println("it true now");
      }else{
        active = false;
        println("it false now");
      }
        
      //table.sort(?);
      
    }
    
  }
  
}
