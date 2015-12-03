package tms

class UserAccountController {
    def UserAccountService
    def login() {
        def user = UserAccount.findByUsername(params.username)
        if (user && (user.password == params.password)) {
            session.user = user
            flash.message = "Hello ${user.firstName}"
            //Need to redirect somewhere
            redirect(controller: "Home")
        } else {
            flash.message = "Sorry, ${params.username}. Please try again."
            render(view: "index")
        }
    }

    def logout(){
        session.user = null
        redirect(controller: "login", action: "index")
        flash.message = "Logged out."
    }

    def register() {
        if(params.registrationType == "Instructor"){

            String username = params.username
            String password = params.password
            String firstName = params.firstName
            String lastName = params.lastName
            String emailAddress = params.emailAddress
            UserAccountService.registerInstructorAccount(username,password,firstName,lastName,emailAddress)
        }else{

            String username = params.username
            String password = params.password
            String firstName = params.firstName
            String lastName = params.lastName
            String emailAddress = params.emailAddress
            UserAccountService.registerStudentAccount(username,password,firstName,lastName,emailAddress)
        }
        render (view: "index")
    }

    def showRegister(){
        render(template: "register")

    }
    def showParameter(){


    }
    def joinTeam(){


    }


}
