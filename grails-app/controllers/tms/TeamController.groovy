package tms

class TeamController {
    def TeamService

    def index() {

        render (view:"teamListInstructor")
    }


    //NEVER put stuff in parameters unless if private
    def acceptNewStudent(){
        String  userId = params.userId
        String teamId = params.teamId

    }

    def createTeam(){
        String teamName = params.teamName
        String teamId = params.teamId
        boolean isComplete = false
        Long teamPoolId = Long.valueOf(params.teamPoolId)
        TeamService.createTeam(teamName, isComplete, teamPoolId)
        redirect(controller: "Home")
    }

    def showCreateTeam(){
        def teamPoolListId = TeamPool.findAll()
        render(view: "createTeam" ,model: [teamPoolListId:teamPoolListId])
    }

    def quitTeam(){

        String teamId = params.teamId
        StudentAccount studentAccount = params.studentAccount
    }

    def joinTeam() {
        String userId = session.user.id
        String teamId = params.teamId

        System.println("userId:  " + userId)
        System.println("teamId:  " + teamId)

        TeamService.joinTeam(userId, teamId)
        redirect(controller: "Home")
    }

    def viewTeamListStudent()  {
        List<Team> teams = Team.findAll()
        Map model = [:]
        model.teams = teams
        render (view: "teamListStudent", model: model)
    }

    def viewParameters() {
        TeamPool teamPool = TeamPool.get(params.teamPoolId as Long)
        Map model = [:]
        model.teamPool = teamPool
        render (view: "teamParameters", model: model)
    }

    def setUpParameters() {
        redirect(controller: "Home")
    }

    def viewTeamListInstructor() {
        List<TeamPool> teamPoolList = TeamPool.findAll()
        Map model = [:]
        model.teamPoolList = teamPoolList
        render (view: "teamListInstructor", model: model)
    }

    def viewNewStudents() {
        List<StudentAccount> studentAccount = StudentAccount.findAll()
        Map model = [:]
        model.studentAccount = studentAccount
        render (view: "acceptNewStudents", model: model)
    }
}
