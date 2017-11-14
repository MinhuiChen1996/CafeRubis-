//student name: Minhui Chen
//student number: D17125347
void setup()
{
  size(800,600);
  loadData();
  printProducts();
  displayProudcts();
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill = new ArrayList<Product>();

void loadData()
{
  Table table = loadTable("cafe.csv", "header");
  for(TableRow r:table.rows())
  {
    Product product = new Product(r);
    products.add(product);
  }
}

void printProducts()
{
  for(Product p: products)
  {
    println(p);
  }
}
float space = height * 0.8; //80
float gap = width * 0.5; 
float rectx = width * 2;
float recty = width * 0.5;

void displayProudcts()
{
  fill(0);
  textSize(width * 0.05);
  textAlign(CENTER);
  text("Cafe Rubis Till System",width/2,space/2);
  stroke(0);
  line(width/2, space, width/2,height-space);
  noFill();
  for(int i = 0; i < products.size(); i++)
  {
    fill(255);
    Product p = products.get(i);
    float x =map(i,0,7,space,height-space);
    rect(gap,x,rectx,recty);
    fill(0);
    textAlign(LEFT);
    textSize(16);
    text(p.name, gap + rectx * 0.02, x + recty /2);
    textAlign(RIGHT);
    String price = nf(p.price,1,2);
    text(price, gap+rectx, x+ recty/2);
  }  
  fill(255);
  rect(width/2+gap,space, width/2 - 2 * gap,height-2 * space);
  fill(0);
  textAlign(CENTER);
  text("Your Bill", width * 0.75, space + height*0.03 );
}

void mousePressed()
{ /*
  for(int i = 0; i < products.size(); i++){
  float x =map(i,0,7,space,height-space);
  }
  if (mouseX > gap && mouseX < gap+rectx && mouseY > x && mouseY < x + recty)
  {
    
  }
  */
}

void displayBill()
{
  
}