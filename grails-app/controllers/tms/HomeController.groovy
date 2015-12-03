package tms

class HomeController {

    def index() {

        //navigate user to login
        if (session.user == null){
            redirect(controller:"UserAccount")
        }else{
            def userType
            if(session.user.instanceOf(InstructorAccount)){
                userType = "InstructorLayout"
            }else if (session.user.instanceOf(StudentAccount)){
                userType = "StudentLayout"
            }
            render (view:"index", model: [userType:userType])
        }
    }


}
