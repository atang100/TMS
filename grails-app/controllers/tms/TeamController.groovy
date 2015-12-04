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
        String teamName = params.teamName
        String teamId = params.teamId
        boolean isComplete = params.team
        String teamPoolId = params.teamName
        if(request.method == 'POST'){
            TeamService.createTeam(teamName, isComplete, teamPoolId)
            redirect(controller: "Home")
        }
        render(view: "createTeam")
    }

    def quitTeam(){

        String teamId = params.teamId
        StudentAccount studentAccount = params.studentAccount
    }


    def joinTeam() {
        String userId = params.userId
        String teamId = params.teamId
        render (view: "teamList")
    }

    def viewTeamList() {
        List<Team> teams = Team.findAll()
        Map model = [:]
        model.teams = teams
        render (view: "teamList", model: model)
    }
}
