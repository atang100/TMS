package tms

class HomeController {

    def index() {

        //navigate user to login
        if (session.user == null){
            redirect(controller:"login")
        }else{
            def userType
            if(session.user.instanceOf(InstructorAccount)){
                userType = "agentLayout"
            }else if (session.user.instanceOf(StudentAccount)){
                userType = "ownerLayout"
            }
            render (view:"index", model: [userType:userType])
        }
    }



}
