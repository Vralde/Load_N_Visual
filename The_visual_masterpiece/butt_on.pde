class Button{
  float x, y, w, h; 
  String text;
  
  Button(float x_, float y_, float w_, float h_, String text_){
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    text = text_;
  }
  
  void display(){
    rect(x, y, w, h);
    fill(0);
    text(text, x+w/2, y+h/2);
    fill(255);
  }
  
  void click(){
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){ 
      println("box clicked");
      //table.sort(?);
    }
    
  }
  
}
