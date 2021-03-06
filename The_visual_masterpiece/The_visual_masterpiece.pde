Table table;
Table sortedTable;
int x, y;

Button button = new Button(1600, 600, 100, 100, "Sort data");

void setup(){
  
  size(1800,1000);
  background(0);
  table = loadTable("https://raw.githubusercontent.com/jakevdp/data-USstates/master/state-areas.csv","header");
  sortedTable = loadTable("https://raw.githubusercontent.com/jakevdp/data-USstates/master/state-areas.csv","header");
  sortedTable.setColumnType(1, Table.INT);

}
 
void draw(){
  clear();
  fill(255);
  
  button.display();
  
  if (!button.active){
    for(TableRow r: table.rows()){
      
      String s = r.getString ("state");
      int i = r.getInt("area (sq. mi)");
      println("state:",  s," Area:", i,"sq. miles");
      
      x = (i / 500);
      y += 17;
      if(x > 2){
        rect(170, y, x, 10);   
      }else{
        rect(170,y,2,10);
      }
      textSize(15);
      text(s,0,y+8);
      text(i + " sq. miles", x+175, y+10);
    }
    
  }else{
    sortedTable.sortReverse("area (sq. mi)");
    
    for(TableRow r: sortedTable.rows()) {
      String s = r.getString ("state");
      int i = r.getInt("area (sq. mi)");
      println("state:",  s," Area:", i,"sq. miles");
      
      x = (i / 500);
      y += 17;
      
      if(x > 2){
        rect(170, y, x, 10);   
      }else{
        rect(170,y,2,10);
      }
      
      textSize(15);
      text(s,0,y+8);
      text(i + " sq. miles", x+175, y+10);
    }
  }
  y = 0;
}

void mousePressed(){
  println("pressCheck");
  button.click();
}
