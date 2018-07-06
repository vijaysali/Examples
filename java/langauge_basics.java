class LanguageBasics {
    public static void main(String [] args) {
	int a = 10;
	double d = 22.22;
	float f = 2.3f;

	char c = 'A';
	boolean t = true;

	System.out.println("-------");
	System.out.printf("Value for integer a: %d\n", a);
	System.out.printf("Value for double d: %f\n", d);
	System.out.printf("Value for float f: %2.2f\n", f);

	System.out.println("-------");
	System.out.printf("Value for char c: %c\n", c);
	System.out.printf("Value for boolean t: %b\n", t);

	System.out.println("-------");
	int[] anArray = {10, 20};
	System.out.println("Array:" + anArray[0] + "," + anArray[1]);

	// TODO: Bitwise demo, Equality, Relational, and Conditional opertors
    }

}
