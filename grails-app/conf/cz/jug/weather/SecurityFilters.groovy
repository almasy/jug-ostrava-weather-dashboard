package cz.jug.weather

class SecurityFilters {
    def filters = {
        loginCheck(controller:'*', action:'*') {
            before = {
				if (!session.user &&  (controllerName != 'userAccount' && actionName != 'login')) {
					redirect(controller: 'userAccount', action: 'login')
					return false
				}
            }
        }
    }
}
