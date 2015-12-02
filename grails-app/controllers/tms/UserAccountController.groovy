package tms

class UserAccountController {

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

    def register() {

    }
}
