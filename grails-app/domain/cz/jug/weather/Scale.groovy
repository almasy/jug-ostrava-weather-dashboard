package cz.jug.weather

enum Scale {
	CELSIUS("C"), FAHRENHEIT("F")

	private unitSymbol
	
	private Scale(String unitSymbol) {
		this.unitSymbol = unitSymbol
	}
	
	String getUnitSymbol() {
		unitSymbol
	}
}
