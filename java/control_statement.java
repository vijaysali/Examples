class ControlStatement {
    public static void main (String[] args){
	int[] a = {10, 20, 30, 40, 50};
	int i = 0;
	System.out.println("while loop");

	while(i < 50) {
	    i++;
	    if (i % 10 == 0) {
		System.out.println(">>>>" + i + ">>>>");
	    }

	    switch(i) {
	    case 9: System.out.println("Nine"); break;
	    case 35: System.out.println("Thirtyfive"); break;
	    }
	}

	for(int x :  a) {
	    System.out.println("..." + x + "...");
	}
    }
}
