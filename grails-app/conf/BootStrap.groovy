import cz.jug.weather.Locality;
import cz.jug.weather.UserAccount;
import cz.jug.weather.UserProfile;

class BootStrap {

    def init = { servletContext ->
		
		Locality locality = new Locality(city: "Ostrava", country: "Czech Republic", woeid: 795610)
		locality.save(failOnError: true)
		locality = new Locality(city: "Vienna", country: "Austria", woeid: 551801)
		locality.save(failOnError: true)
		locality = new Locality(city: "Amsterdam", country: "Netherlands", woeid: 727232)
		locality.save(failOnError: true)
		
		UserAccount account = new UserAccount(userName: "almasy")
		account.save(failOnError: true)		
		UserProfile profile = new UserProfile(fullName: "Peter Almásy", userAccount: account)
		profile.homeLocality = Locality.findByCity("Ostrava")
		profile.save(failOnError: true)
		
		account = new UserAccount(userName: "admin")
		account.save(failOnError: true)
		profile = new UserProfile(fullName: "Peter Almásy", userAccount: account)
		profile.save(failOnError: true)
    }
	
    def destroy = {
    }
}
