interface DbRecord {
  void all();
  //  void find_by_id(int id);
}

class Student {
  public int id;
  public String name;

  void Student(int id, String name) {
    this.id = id;
    this.name = name;
  }
}

class GenericMethod implements DbRecord {
  public static Student[] students;

  public void all() {
    for(int i = 0; i < 10; i++) {
      System.out.println("Student["+i+"] = " + students[i].name);
    }
  }

  public static void main(String[] args){
    students[0] = new Student(1, "Vijay sali");
    students[1] = new Student(2, "Vandana sali");
    all();
  }
}
