import java.util.*;
class BasicCalculator {
  public static void main(String[] args){

    int variable1, variable2;
    double[] result = new double[5];
    String[] output = {"Addition", "Subtraction", "Multiplication", "Division"};
    System.out.println("Basic calculator");

    Scanner input = new Scanner(System.in);
    System.out.println("Enter variable1:");

    variable1 = input.nextInt();
    System.out.println("Enter variable2:");

    variable2 = input.nextInt();
    result[0] = variable1 + variable2;
    result[1] = variable1 - variable2;
    result[2] = variable1 * variable2;
    result[3] = variable1 / variable2;

    for (int i = 0; i <=3 ; i++) {
      System.out.println(output[i] + " "+ result[i]);
    }
  }
}
