package tms

class HomeController {

    def index() {

        //navigate user to login
        if (session.user == null){
            redirect(controller:"UserAccount")
        }else{
            def userType
            def teams = Team.findAll()
            if(session.user.instanceOf(InstructorAccount)){
                userType = "Instructor"
            }else if (session.user.instanceOf(StudentAccount)){
                userType = "Student"
            }
            render (view:"index", model: [userType:userType, teams:teams])
        }
    }


}
