package cz.jug.weather

import groovyx.net.http.RESTClient;

class WeatherService {

	private RESTClient yahooWeather = new RESTClient("http://weather.yahooapis.com/")

    WeatherCommand getWeatherForUser(UserAccount user) {
		UserProfile profile = UserProfile.load(user.profile.ident())
		if (!profile.homeLocality) {
			return null
		}
		Locality locality = Locality.load(profile.homeLocality.ident())
		if (!locality) {
			return null
		}
		try {
			return getWeatherForLocality(locality, profile.scale) 
		} catch (Exception e) {
			return null
		}
    }

	WeatherCommand getWeatherForLocality(Locality locality, Scale scale) {
		def unit = scale.unitSymbol.toLowerCase()
		WeatherCommand weatherCmd  = new WeatherCommand(city: locality.city, scale: scale)
		yahooWeather.get(path: "forecastjson", query: [w: locality.woeid, u: unit]) { resp, json ->
			def condition = json.get("condition")
			weatherCmd.setConditionText(condition.getString("text"))
			weatherCmd.setConditionImgUrl(condition.getString("image"))
			weatherCmd.setTemperature(condition.getDouble("temperature"))
		}
		weatherCmd
	}

}
