package cz.jug.weather

import org.springframework.dao.DataIntegrityViolationException

class UserAccountController {

	static scaffold = true
	
	def login() {
		if (session.user) {
			redirect(controller: 'weather', action: 'dashboard')
		}
	}
	
	def authenticate() {
		def userAccountInstance = UserAccount.findByUserName(params.userName)
		if (userAccountInstance) {
			session.user = userAccountInstance
			redirect(controller: 'weather', action: 'dashboard')
		} else {
			flash.message = 'Sorry, entered user name is not valid.'
			redirect(action: 'login')
		}
	}
	
	def logout() {
		session.user = null
		redirect(action: 'login')
	}

}
