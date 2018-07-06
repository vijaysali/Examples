class Product {
  public String name;
  public double price;
  private int stock;

  public Product(String name, double price, int stock){
    this.name = name;
    this.price = price;
    this.stock = stock;
  }

  public String name() {
    return this.name;
  }

  public double price() {
    return this.price;
  }

  public int stock() {
    return this.stock;
  }

  public void product() {
    System.out.println(this.name());
    System.out.println(this.stock());
    System.out.println(this.price());
  }

  public void updateStock(int stock) {
    if (stock >= 0 ){
      this.stock = stock;
    }
    else {
      System.out.println("Update failed: Negative stock.");
    }
  }

}

class ProductEntry {
  public static void main(String[] args){
    Product shirt = new Product("Shirt", 500.50, 10);
    Product tShirt = new Product("T-Shirt", 999.50, 100);

    shirt.product();
    tShirt.product();
  }
}
