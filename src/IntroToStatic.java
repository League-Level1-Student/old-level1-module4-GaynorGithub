
public class IntroToStatic {
	
	static Athlete harry = new Athlete("harry", 4);
	static Athlete joe = new Athlete("joe", 3);
	
	public static void main(String[] args) {
		harry.getInfo();
		joe.getInfo();
	}
}
