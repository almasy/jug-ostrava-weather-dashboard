package cz.jug.weather

class Locality {
	
	String city
	String country
	Integer woeid

	static constraints = {
		city maxSize : 100, blank: false
		country maxSize: 100, nullable: true
		woeid blank: false
	}
	
	@Override
	String toString() {
		"$city, $country" 
	}
}
