class Vehicle {
  private String color;
  private String type;
  private int wheels;
  private String registerNumber;
  private String owner;

  public Vehicle(String color, String registerNumber, String type, String owner){
    this.color		= color;
    this.registerNumber	= registerNumber;
    this.type		= type;
    this.owner		= owner;
  }

  public void setColor(String color){
    this.color = color;
  }

  public void setOwner(String owner){
    this.owner = owner;
  }

  public void show(){
    System.out.println("Vehicle number: " + this.registerNumber);
    System.out.println("Vehicle color: " + this.color);
    System.out.println("Vehicle owner: " + this.owner);
    System.out.println("Vehicle type: " + this.type);
  }

}

class Car extends Vehicle {
  private int gears;

  public Car(int gears, String color, String registerNumber, String owner){
    super(color, registerNumber, "Car", owner);
    this.gears = gears;
  }

}


class VehicleImpl {
  public static void main(String[] args) {
    Car carObj = new Car(5, "Red", "KA01R9235", "Vijay");
    carObj.show();
  }
}
