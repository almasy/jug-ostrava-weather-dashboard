package cz.jug.weather

class UserProfile {
	
	String fullName
	Scale scale = Scale.CELSIUS
	Locality homeLocality
	
	static hasMany = [localities: Locality]
	static belongsTo = [userAccount: UserAccount]

    static constraints = {
		fullName blank: false, maxSize: 150
		scale inList: [Scale.CELSIUS, Scale.FAHRENHEIT], nullable: false
		homeLocality nullable: true
		localities nullable: true
		userAccount nullable: false
    }

	static transients = [ 'userName' ]
		
	String getUserName() {
		userAccount.getUserName()
	}
	
	@Override
	String toString() {
		homeLocality ? "$fullName @ $homeLocality" : fullName
	}
	
}
