Table table;
int x, y;
void setup(){
  size(1800,1000);
  background(0);
  table = loadTable("https://raw.githubusercontent.com/jakevdp/data-USstates/master/state-areas.csv","header");
 /*
    table = new Table();
    table.addColumn("state");
 */
 
 //println(table.getRowCount());

  for(TableRow r: table.rows()) {
    String s = r.getString ("state");
    int i = r.getInt("area (sq. mi)");
    println("state:",  s,"Areal:", i,"sq. miles");
    


    
    x = (i / 500);
    y += 15;
    rect(120, y, x, 10);   
    
    text(s,0,y+5);
    
    

    
  }
 
}
 
void draw(){
  


}
