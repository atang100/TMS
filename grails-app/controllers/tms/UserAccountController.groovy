package tms

class UserAccountController {
    def UserAccountService
    def login() {
        def user = UserAccount.findByUsername(params.username)
        if (user && (user.password == params.password)) {
            session.user = user
            flash.message = "Hello ${user.firstName}"
            //Need to redirect somewhere
        } else {
            flash.message = "Sorry, ${params.username}. Please try again."
            render(view: "login")
        }
    }

    def logout(){
        session.user = null
        redirect(controller: "login", action: "index")
        flash.message = "Logged out."
    }

    def registerInstructor() {
        String username = params.username
        String password = params.password
        String firstName = params.firstName
        String lastName = params.lastName
        String emailAddress = params.emailAddress
    }
    def registerStudent() {
        String username = params.username
        String password = params.password
        String firstName = params.firstName
        String lastName = params.lastName
        String emailAddress = params.emailAddress

    }
}
