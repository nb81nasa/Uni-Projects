
public class Wuerfel {

	private int augenzahl;
	
	public Wuerfel (int augenzahl) {
		this.augenzahl = augenzahl;
	}
	
	public int wuerfeln() {
		return (int)(Math.random()*augenzahl+1);
	}
}
