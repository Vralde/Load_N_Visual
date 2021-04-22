Table table = loadTable("https://raw.githubusercontent.com/jakevdp/data-USstates/master/state-areas.csv","header");

for(TableRow r: table.rows()) {

 String s = r.getString ("state");
 int i = r.getInt("area (sq. mi)");
 println("state:",  s,"Areal:", i,"sq. miles");
}
