Table table;
void setup(){
  size(800,800);
  table = loadTable("https://raw.githubusercontent.com/jakevdp/data-USstates/master/state-areas.csv","header");
 /*
    table = new Table();
    table.addColumn("state");
 */

  for(TableRow r: table.rows()) {

    String s = r.getString ("state");
    int i = r.getInt("area (sq. mi)");
    println("state:",  s,"Areal:", i,"sq. miles");
    text(s,100,100);
  }
 
}
 
void draw(){
  

}
