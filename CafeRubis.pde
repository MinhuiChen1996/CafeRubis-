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
float header = height * 0.8; //80 

void displayProudcts()
{
  stroke(0);
  line(width/2, 0+header, width/2,height-header);
  println(header);
}