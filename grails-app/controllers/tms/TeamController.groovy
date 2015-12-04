package tms

class TeamController {
    def TeamService

    def index() {

        render (view:"teamList")
    }


    //NEVER put stuff in parameters unless if private
    def acceptNewStudent(){
        String  userId = params.userId
        String teamId = params.teamId

    }

    def createTeam(){
        if(request.method == 'POST'){
            String teamName = params.teamName
            String teamId = params.teamId
            boolean isComplete = false
            Long teamPoolId = Long.valueOf(params.teamPoolId)

            TeamService.createTeam(teamName, isComplete,teamPoolId)
            redirect(controller: "Home")
        }
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
        redirect(controller: "Home")
    }



    def viewTeamList() {
        List<Team> teams = Team.findAll()
        Map model = [:]
        model.teams = teams
        render (view: "teamList", model: model)
    }
}
