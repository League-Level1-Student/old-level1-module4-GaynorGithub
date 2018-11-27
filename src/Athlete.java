
public class Athlete {

     static int nextBibNumber = 1;
     static String raceLocation = "New Bork";
     static String raceStartTime = "9.00am";

     String name;
     int speed;
     int bibNumber = 0;

     Athlete (String name, int speed){
    	 	this.name = name;
    	 	this.speed = speed;
    	 	bibNumber = bibNumber + nextBibNumber;
    	 	nextBibNumber++;
	}


	
	void getInfo() {
		System.out.println(name);
		System.out.println(bibNumber);
		System.out.println(raceLocation);
	}
	
	
}
