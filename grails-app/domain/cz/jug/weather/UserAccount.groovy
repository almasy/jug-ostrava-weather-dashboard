package cz.jug.weather

class UserAccount {

	String userName

	static hasOne = [profile: UserProfile]
	
    static constraints = {
		userName unique: true, blank: false, minSize: 3, maxSize: 15, matches: "[a-zA-Z][a-zA-Z0-9]*"
		profile nullable: true
    }
	
	@Override
	String toString() {
		userName
	}
}
