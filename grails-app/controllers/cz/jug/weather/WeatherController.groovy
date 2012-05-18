package cz.jug.weather

class WeatherController {

	def weatherService
	
    def index() { 
		forward(action: 'dashboard')
	}
	
	def dashboard() {
		def weatherCmd = weatherService.getWeatherForUser(session.user)
		[weatherCommand: weatherCmd]
	}
	
	def administration() {
	}

}

class WeatherCommand {
	
	String city
	String conditionText
	String conditionImgUrl
	BigDecimal temperature
	Scale scale
	
	String getCurrentConditions() {
		"${conditionText}, ${temperature}° ${scale?.unitSymbol}"
	}

}
